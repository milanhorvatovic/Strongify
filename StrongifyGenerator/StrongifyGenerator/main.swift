//
//  main.swift
//  StrongifyGenerator
//
//  Created by Milan Horvatovic on 29/11/2017.
//  Copyright © 2017 Milan Horvatovic. All rights reserved.
//

import Foundation

enum InputType {
    
    case none
    case error
    case `default`
    
    var fileName: String? {
        get {
            switch self {
            case .none:
                return .none
            case .error:
                return "Throwable"
            case .default:
                return .none
            }
        }
    }
    
}

enum ThrowableType {
    
    case none
    case rethrow
    
    var throwable: Bool {
        get {
            switch self {
            case .none:
                return false
            case .rethrow:
                return true
            }
        }
    }
    
    
    var fileName: String? {
        get {
            switch self {
            case .none:
                return .none
            case .rethrow:
                return "Rethrow"
            }
        }
    }
    
}

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
    
    var fileName: String? {
        get {
            switch self {
            case .void:
                return .none
            case .type:
                return "Return"
            case .optional:
                return "ReturnOptional"
            }
        }
    }
    
}

enum GenerationType {
    
    case base(input: InputType, throwable: ThrowableType, returnType: ReturnType)
    case fatalError(input: InputType, throwable: ThrowableType, returnType: ReturnType)
    
    var fatalError: Bool {
        switch self {
        case .base(_, _, _):
            return false
        case .fatalError(_, _, _):
            return true
        }
    }
    
    var `return`: ReturnType {
        switch self {
        case .base(_, _, let returnType): return returnType
        case .fatalError(_, _, let returnType): return returnType
        }
    }
    
    var fileName: String {
        var path: [String?] = ["Strongify"]
        switch self {
        case .base(let input, let throwable, let `return`):
            path.append(input.fileName)
            path.append(throwable.fileName)
            path.append(`return`.fileName)
        case .fatalError(let input, let throwable, let `return`):
            path.append("FatalError")
            path.append(input.fileName)
            path.append(throwable.fileName)
            path.append(`return`.fileName)
        }
        path.append(".swift")
        return path
            .compactMap({ (value: String?) -> String? in
                return value
            })
            .joined()
    }
    
}

let combinations: [GenerationType] = [
    .base(input: .none, throwable: .none, returnType: .void),
    .base(input: .none, throwable: .rethrow, returnType: .void),
    
    .base(input: .error, throwable: .rethrow, returnType: .void),
    .base(input: .error, throwable: .rethrow, returnType: .type),
    .base(input: .error, throwable: .rethrow, returnType: .optional),
    
    .base(input: .default, throwable: .none, returnType: .type),
    .base(input: .default, throwable: .rethrow, returnType: .type),
    .base(input: .default, throwable: .none, returnType: .optional),
    .base(input: .default, throwable: .rethrow, returnType: .optional),
    
    .fatalError(input: .none, throwable: .none, returnType: .void),
    .fatalError(input: .none, throwable: .rethrow, returnType: .void),
    .fatalError(input: .none, throwable: .none, returnType: .type),
    .fatalError(input: .none, throwable: .rethrow, returnType: .type),
    .fatalError(input: .none, throwable: .none, returnType: .optional),
    .fatalError(input: .none, throwable: .rethrow, returnType: .optional)
]

func generate(contexts: UInt8 = 1, arguments: UInt8 = 0, type: GenerationType) -> String {
    guard contexts > 0 else { fatalError("Number of context cannot be 0.") }
    
    let contextsPlaceholders: [String] = Array<String>(repeating: "context", count: Int(contexts))
    let argumentsPlaceholders: [String] = Array<String>(repeating: "argument", count: Int(arguments))
    var body: String = ""
    
    body += "/**\n Creates a closure that automatically deals with weak-strong dance\n\n"
    body += " - Parameters:\n"
    if contextsPlaceholders.count > 0 {
        body += contextsPlaceholders.enumerated()
            .map({ (index: Int, item: String) -> String in
                return "  - \(item)\(index + 1): Any \(item) object to weakify and strongify"
            })
            .joined(separator: "\n")
            + "\n"
    }
    switch type.fatalError {
    case true: body += "  - message: Message for `fatalError` when one of the context doesn't exist\n"
    case false:
        let returnDocumentation: String = type.`return`.documentation
        if returnDocumentation.count > 0 {
            body += "  - return: \(returnDocumentation)\n"
        }
    }
    body += "  - closure: Closure to execute instead of the original one\n"
    body += "*/\n"
    let contextsFuncDesc: [String] = contextsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1): AnyObject"
        })
    let argumentsFuncDesc: [String] = argumentsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)"
        })
    
    let contextsFuncArgsDesc: [String] = contextsPlaceholders.enumerated().map({ (index: Int, item: String) -> String in
        let content: String = "\(item)\(index + 1): \(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)?"
        switch index {
        case 0: return "weak " + content
        default: return "_ " + content
        }
    })
    
    let contextsParamDesc: [String] = contextsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)"
        })
    let argumentsParamDesc: [String] = argumentsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)"
        })
    
    let contextsClosureDesc: [String] = contextsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "weak \(item)\(index + 1)"
        })
    let argumentsClosureDesc: [String] = argumentsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "\(item)\(index + 1): \(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)"
        })
    
    let contextsLetDesc: [String] = contextsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "let strong\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1): \(item.prefix(1).uppercased() + item.dropFirst())\(index + 1) = \(item)\(index + 1)"
        })
    let contextsArgsDesc: [String] = contextsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "strong\(item.prefix(1).uppercased() + item.dropFirst())\(index + 1)"
        })
    let argumentsArgsDesc: [String] = argumentsPlaceholders.enumerated()
        .map({ (index: Int, item: String) -> String in
            return "\(item)\(index + 1)"
        })
    
    //  definition
    body += "public func strongify<"
    if contextsFuncDesc.count > 0 {
        body += contextsFuncDesc.joined(separator: ", ")
    }
    if argumentsFuncDesc.count > 0 {
        body += ", " + argumentsFuncDesc.joined(separator: ", ")
    }
    switch type.`return` {
    case .void:
        break
    case .type, .optional:
        body += ", " + type.`return`.funcGenDesc
    }
    body += ">("
    if contextsFuncArgsDesc.count > 0 {
        body += contextsFuncArgsDesc.joined(separator: ", ")
    }
    switch type {
    case .base(let input, _, _):
        switch input {
        case .none:
            break
        case .error:
            body += ", `throws` error: Error"
        case .default:
            body += ", `return`: " + type.`return`.funcDesc
        }
    case .fatalError(_, _, _):
        body += ", message: String"
    }
    body += ", closure: @escaping ("
    if contextsParamDesc.count > 0 {
        body += contextsParamDesc.joined(separator: ", ")
    }
    if argumentsParamDesc.count > 0 {
        body += ", " + argumentsParamDesc.joined(separator: ", ")
    }
    switch type {
    case .base(_, let throwable, _):
        switch throwable {
        case .none:
            body += ") -> " + type.`return`.funcDesc + ")" + " -> (("
        case .rethrow:
        body += ") throws -> " + type.`return`.funcDesc + ")" + " -> (("
        }
    case .fatalError(_, let throwable, _):
        switch throwable {
        case .none:
            body += ") -> " + type.`return`.funcDesc + ")" + " -> (("
        case .rethrow:
            body += ") throws -> " + type.`return`.funcDesc + ")" + " -> (("
        }
    }
    if argumentsParamDesc.count > 0 {
        body += argumentsParamDesc.joined(separator: ", ")
    }
    switch type {
    case .base(_, let throwable, _):
        switch throwable {
        case .none:
            body += ") -> " + type.`return`.funcDesc + ") {\n"
        case .rethrow:
            body += ") throws -> " + type.`return`.funcDesc + ") {\n"
        }
    case .fatalError(_, let throwable, _):
        switch throwable {
        case .none:
            body += ") -> " + type.`return`.funcDesc + ") {\n"
        case .rethrow:
            body += ") throws -> " + type.`return`.funcDesc + ") {\n"
        }
    }
    //  body
    body += "\treturn { ["
    if contextsClosureDesc.count > 0 {
        body += contextsClosureDesc.joined(separator: ", ")
    }
    body += "] ("
    if argumentsClosureDesc.count > 0 {
        body += argumentsClosureDesc.joined(separator: ", ")
    }
    body += ")"
    do {
        let returnDesc: String = type.`return`.funcReturnDesc
        if returnDesc.count > 0 {
            body += " -> " + returnDesc
        }
    }
    body += " in\n"
    body += "\t\tguard "
    if contextsLetDesc.count > 0 {
        body += contextsLetDesc.joined(separator: ", ")
    }
    switch type {
    case .base(let input, _, _):
        switch input {
        case .none:
            body += " else { return }\n"
        case .error:
            body += " else { throw error }\n"
        case .default:
            body += " else { return `return` }\n"
        }
    case .fatalError(_, _, _):
        body += " else { fatalError(message) }\n"
    }
    switch type {
    case .base(_, let throwable, let returnType):
        switch returnType {
        case .void:
            switch throwable {
            case .none:
                body += "\t\tclosure("
            case .rethrow:
                body += "\t\ttry closure("
            }
        case .type, .optional:
            switch throwable {
            case .none:
                body += "\t\treturn closure("
            case .rethrow:
                body += "\t\treturn try closure("
            }
        }
    case .fatalError(_, let throwable, let returnType):
        switch returnType {
        case .void:
            switch throwable {
            case .none:
                body += "\t\tclosure("
            case .rethrow:
                body += "\t\ttry closure("
            }
        case .type, .optional:
            switch throwable {
            case .none:
                body += "\t\treturn closure("
            case .rethrow:
                body += "\t\treturn try closure("
            }
        }
    }
    if contextsArgsDesc.count > 0 {
        body += contextsArgsDesc.joined(separator: ", ")
    }
    if argumentsArgsDesc.count > 0 {
        body += ", " + argumentsArgsDesc.joined(separator: ", ")
    }
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
