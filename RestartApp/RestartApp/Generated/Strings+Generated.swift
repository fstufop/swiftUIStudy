// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Strings {
  /// RestartApp
  internal static let appName = Strings.tr("Localizable", "AppName", fallback: "RestartApp")
  internal enum SystemImage {
    internal enum Arrow {
      internal enum Triangle {
        internal enum Two {
          internal enum Circlepath {
            internal enum Circle {
              /// arrow.triangle.2.circlepath.circle.fill
              internal static let fill = Strings.tr("Localizable", "SystemImage.arrow.triangle.two.circlepath.circle.fill", fallback: "arrow.triangle.2.circlepath.circle.fill")
            }
          }
        }
      }
    }
    internal enum Chevron {
      internal enum Right {
        /// chevron.right.2
        internal static let two = Strings.tr("Localizable", "SystemImage.chevron.right.two", fallback: "chevron.right.2")
      }
    }
  }
  internal enum Defaults {
    /// onboarding
    internal static let onboarding = Strings.tr("Localizable", "defaults.onboarding", fallback: "onboarding")
  }
  internal enum Home {
    /// Restart
    internal static let buttonTitle = Strings.tr("Localizable", "home.buttonTitle", fallback: "Restart")
    /// The time that leads to mastery is dependent on intesity of our focus.
    internal static let description = Strings.tr("Localizable", "home.description", fallback: "The time that leads to mastery is dependent on intesity of our focus.")
  }
  internal enum Onboarding {
    /// Get Started
    internal static let buttonTitle = Strings.tr("Localizable", "onboarding.buttonTitle", fallback: "Get Started")
    /// It's not how much we give but
    /// how much love we put into giving.
    internal static let description = Strings.tr("Localizable", "onboarding.description", fallback: "It's not how much we give but\nhow much love we put into giving.")
    internal enum Title {
      /// Share.
      internal static let share = Strings.tr("Localizable", "onboarding.title.share", fallback: "Share.")
    }
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
