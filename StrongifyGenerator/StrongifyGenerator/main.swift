//
//  main.swift
//  StrongifyGenerator
//
//  Created by Milan Horvatovic on 29/11/2017.
//  Copyright © 2017 Milan Horvatovic. All rights reserved.
//

import Foundation

enum ReturnType {
    
    case void
    case type
    case optional
    
    var funcGenDesc: String {
        switch self {
        case .void: return ""
        case .type, .optional: return "Return"
        }
    }
    
    var funcDesc: String {
        switch self {
        case .void: return "Void"
        case .type: return "Return"
        case .optional: return "Return?"
        }
    }
    
    var funcReturnDesc: String {
        switch self {
        case .void: return ""
        case .type, .optional: return self.funcDesc
        }
    }
    
    var documentation: String {
        switch self {
        case .void: return ""
        case .type: return "Default value of return statement when one of the context doesn't exist."
        case .optional: return "Default value or nil of return statement when one of the context doesn't exist."
        }
    }
    
}

enum GenerationType {
    
    case base(throwable: Bool, returnType: ReturnType)
    case fatalError(throwable: Bool, returnType: ReturnType)
    
    
    var fatalError: Bool {
        switch self {
        case .base(_, _): return false
        case .fatalError(_, _): return true
        }
    }
    
    var throwable: Bool {
        switch self {
        case .base(let throwable, _): return throwable
        case .fatalError(let throwable, _): return throwable
        }
    }
    
    var `return`: ReturnType {
        switch self {
        case .base(_, let returnType): return returnType
        case .fatalError(_, let returnType): return returnType
        }
    }
    
    var fileName: String {
        switch self {
        case .base(let throwable, let returnType):
            switch returnType {
            case .void: return "Strongify" + (throwable ? "Throws" : "") + ".swift"
            case .type: return "StrongifyReturn" + (throwable ? "Throws" : "") + ".swift"
            case .optional: return "StrongifyReturnOptional" + (throwable ? "Throws" : "") + ".swift"
            }
        case .fatalError(let throwable, let returnType):
            switch returnType {
            case .void: return "StrongifyFatalError" + (throwable ? "Throws" : "") + ".swift"
            case .type: return "StrongifyFatalErrorReturn" + (throwable ? "Throws" : "") + ".swift"
            case .optional: return "StrongifyFatalErrorReturnOptional" + (throwable ? "Throws" : "") + ".swift"
            }
        }
    }
    
}

let combinations: [GenerationType] = [
    .base(throwable: false, returnType: .void),
    .base(throwable: false, returnType: .type),
    .base(throwable: false, returnType: .optional),
    .base(throwable: true, returnType: .void),
    .base(throwable: true, returnType: .type),
    .base(throwable: true, returnType: .optional),
    .fatalError(throwable: false, returnType: .void),
    .fatalError(throwable: false, returnType: .type),
    .fatalError(throwable: false, returnType: .optional),
    .fatalError(throwable: true, returnType: .void),
    .fatalError(throwable: true, returnType: .type),
    .fatalError(throwable: true, returnType: .optional)
]

func generate(contexts: UInt8 = 1, arguments: UInt8 = 0, type: GenerationType) -> String {
    guard contexts > 0 else { fatalError("Number of context cannot be 0.") }
    
    let contextsPlaceholders: [String] = Array<String>(repeating: "context", count: Int(contexts))
    let argumentsPlaceholders: [String] = Array<String>(repeating: "argument", count: Int(arguments))
    var body: String = ""
    
    body += "/**\n Creates a closure that automatically deals with weak-strong dance\n\n"
    body += " - Parameters:\n"
    if contextsPlaceholders.count > 0 { body += contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "  - \(item)\(index + 1): Any \(item) object to weakify and strongify" }).joined(separator: "\n") + "\n" }
    switch type.fatalError {
    case true: body += "  - message: Message for `fatalError` when one of the context doesn't exist\n"
    case false: if let returnDocumentation: String = type.`return`.documentation, returnDocumentation.count > 0 { body += "  - return: \(returnDocumentation)\n" }
    }
    body += "  - closure: Closure to execute instead of the original one\n"
    body += "*/\n"
    let contextsFuncDesc: [String] = contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1): AnyObject" })
    let argumentsFuncDesc: [String] = argumentsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)" })
    
    let contextsFuncArgsDesc: [String] = contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in
        let content: String = "\(item)\(index + 1): \(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)?"
        switch index {
        case 0: return "weak " + content
        default: return "_ " + content
        }
    })
    
    let contextsParamDesc: [String] = contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)" })
    let argumentsParamDesc: [String] = argumentsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)" })
    
    let contextsClosureDesc: [String] = contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "weak \(item)\(index + 1)" })
    let argumentsClosureDesc: [String] = argumentsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "\(item)\(index + 1): \(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)" })
    
    let contextsLetDesc: [String] = contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "let strong\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1): \(item.prefix(1).uppercased() + item.dropFirst())\(index + 1) = \(item)\(index + 1)" })
    let contextsArgsDesc: [String] = contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "strong\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)" })
    let argumentsArgsDesc: [String] = argumentsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in return "\(item)\(index + 1)" })
    
    //  definition
    body += "public func strongify<"
    if contextsFuncDesc.count > 0 { body += contextsFuncDesc.joined(separator: ", ") }
    if argumentsFuncDesc.count > 0 { body += ", " + argumentsFuncDesc.joined(separator: ", ") }
    switch type.`return` {
    case .void: break
    case .type, .optional: body += ", " + type.`return`.funcGenDesc
    }
    body += ">("
    if contextsFuncArgsDesc.count > 0 { body += contextsFuncArgsDesc.joined(separator: ", ") }
    switch type.fatalError {
    case true: body += ", message: String"
    case false:
        switch type.return {
        case .void: break
        case .type, .optional: body += ", `return`: " + type.`return`.funcDesc
        }
    }
    body += ", closure: @escaping ("
    if contextsParamDesc.count > 0 { body += contextsParamDesc.joined(separator: ", ") }
    if argumentsParamDesc.count > 0 { body += ", " + argumentsParamDesc.joined(separator: ", ") }
	//	NOTE: each strongify function doesn't need to be marked as rethrows because return statement is only closure block itself
    //body += ")" + (type.throwable ? " throws" : "") + " -> " + type.`return`.funcDesc + ")" + (type.throwable ? " rethrows" : "") + " -> (("
	body += ")" + (type.throwable ? " throws" : "") + " -> " + type.`return`.funcDesc + ")" + " -> (("
    if argumentsParamDesc.count > 0 { body += argumentsParamDesc.joined(separator: ", ") }
    body += ")" + (type.throwable ? " throws" : "") + " -> " + type.`return`.funcDesc + ") {\n"
    //  body
    body += "\treturn { ["
    if contextsClosureDesc.count > 0 { body += contextsClosureDesc.joined(separator: ", ") }
    body += "] ("
    if argumentsClosureDesc.count > 0 { body += argumentsClosureDesc.joined(separator: ", ") }
    body += ")"
    if let returnDesc: String = type.`return`.funcReturnDesc, returnDesc.count > 0 { body += " -> " + returnDesc }
    body += " in\n"
    body += "\t\tguard "
    if contextsLetDesc.count > 0 { body += contextsLetDesc.joined(separator: ", ") }
    switch type.fatalError {
    case true: body += " else { fatalError(message) }\n"
    case false:
        switch type.return {
        case .void: body += " else { return }\n"
        case .type, .optional: body += " else { return `return` }\n"
        }
    }
    switch type.return {
    case .void: body += "\t\t" + (type.throwable ? "try" : "") + " closure("
    case .type, .optional: body += "\t\treturn " + (type.throwable ? "try" : "") + " closure("
    }
    if contextsArgsDesc.count > 0 { body += contextsArgsDesc.joined(separator: ", ") }
    if argumentsArgsDesc.count > 0 { body += ", " + argumentsArgsDesc.joined(separator: ", ") }
    body += ")\n"
    body += "\t}\n"
    
    //definition
    body += "}\n"
    
    return body
}

let directory: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]

for generation in combinations {
    print(generation)
    var content: String = ""
    for indexContext in 1...8 {
        content += "//    MARK: - Context\(indexContext)\n"
        print("//    MARK: - Context\(indexContext)")
        for indexArgument in 0...8 {
            content += generate(contexts: UInt8(indexContext), arguments: UInt8(indexArgument), type: generation)
        }
    }
    let file: URL = directory.appendingPathComponent(generation.fileName)
    do {
        try content.write(to: file, atomically: true, encoding: .utf8)
        print("Generation \(generation.fileName) successful to \(file)")
    }
    catch { print("Generation \(generation.fileName) fail to \(file) with error: \(error)") }
}
