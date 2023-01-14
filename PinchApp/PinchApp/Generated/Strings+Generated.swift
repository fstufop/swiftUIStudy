// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Strings {
  /// PinchApp
  internal static let appName = Strings.tr("Localizable", "appName", fallback: "PinchApp")
  /// Pinch & Zoom
  internal static let navigationTitle = Strings.tr("Localizable", "navigationTitle", fallback: "Pinch & Zoom")
  internal enum Arrow {
    internal enum Two {
      /// arrow.up.left.and.arrow.down.right
      internal static let diagonal = Strings.tr("Localizable", "arrow.two.diagonal", fallback: "arrow.up.left.and.arrow.down.right")
      /// arrow.left.and.right
      internal static let horizontal = Strings.tr("Localizable", "arrow.two.horizontal", fallback: "arrow.left.and.right")
      /// arrow.up.and.down
      internal static let vertical = Strings.tr("Localizable", "arrow.two.vertical", fallback: "arrow.up.and.down")
    }
  }
  internal enum Chevron {
    internal enum Compact {
      /// chevron.compact.left
      internal static let `left` = Strings.tr("Localizable", "chevron.compact.left", fallback: "chevron.compact.left")
      /// chevron.compact.right
      internal static let `right` = Strings.tr("Localizable", "chevron.compact.right", fallback: "chevron.compact.right")
    }
  }
  internal enum Circle {
    /// circle.circle
    internal static let circle = Strings.tr("Localizable", "circle.circle", fallback: "circle.circle")
  }
  internal enum Magnifyingglass {
    /// minus.magnifyingglass
    internal static let minus = Strings.tr("Localizable", "magnifyingglass.minus", fallback: "minus.magnifyingglass")
    /// plus.magnifyingglass
    internal static let plus = Strings.tr("Localizable", "magnifyingglass.plus", fallback: "plus.magnifyingglass")
    /// arrow.up.left.and.down.right.magnifyingglass
    internal static let scale = Strings.tr("Localizable", "magnifyingglass.scale", fallback: "arrow.up.left.and.down.right.magnifyingglass")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
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
