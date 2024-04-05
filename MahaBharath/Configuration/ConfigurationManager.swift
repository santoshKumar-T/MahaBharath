//
//  ConfigurationManager.swift
//  MahaBharath
//
//  Created by Madhav on 05/04/24.
//

import Foundation
import UIKit

private enum BuildConfiguration {
    enum Error: Swift.Error {
        case missingKey, invalidValue
    }

    static func value<T>(for key: String) throws -> T where T:
        LosslessStringConvertible
    {
        guard let object = Bundle.main.object(forInfoDictionaryKey: key) else {
            throw Error.missingKey
        }

        switch object {
        case let string as String:
            guard let value = T(string) else { fallthrough }
            return value
        default:
            throw Error.invalidValue
        }
    }
}

enum API {
    static var baseURL: String {
        do {
            return try BuildConfiguration.value(for: "BASE_URL")
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}

enum ConfigurationManager {
    enum Environment {
        case dev
        case qa
        case prod
    }

    static var environment: Environment {
        #if DEV
            return .dev
        #elseif QA
            return .qa
        #elseif PROD
            return .prod
        #endif
    }
}
