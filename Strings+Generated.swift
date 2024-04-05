// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
enum L10n {
    enum ContentView {
        /// Ved Vyasa
        static let mahaBharathAuthor = L10n.tr("Localizable", "ContentView.mahaBharath_author", fallback: "Ved Vyasa")
        /// Localizable.strings
        ///   MahaBharath
        ///
        ///   Created by Madhav on 05/04/24.
        static func mahaBharathChapter(_ p1: Any) -> String {
            L10n.tr("Localizable", "ContentView.mahaBharath_chapter %@", String(describing: p1), fallback: "Maha Bharath Chapter: %@")
        }

        /// Maha Bharatha
        static let mahaBharathTitle = L10n.tr("Localizable", "ContentView.mahaBharath_title", fallback: "Maha Bharatha")
    }
}

// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
    private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
        let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
        return String(format: format, locale: Locale.current, arguments: args)
    }
}

// swiftlint:disable convenience_type
private final class BundleToken {
    static let bundle: Bundle = {
        #if SWIFT_PACKAGE
            return Bundle.module
        #else
            return Bundle(for: BundleToken.self)
        #endif
    }()
}

// swiftlint:enable convenience_type
