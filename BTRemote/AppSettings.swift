import Foundation

enum AppSettings {
    static let touchpadSensitivityKey = "BTRemote.touchpadSensitivity"
    static let scrollSensitivityKey = "BTRemote.scrollSensitivity"
    static let autoAdvertiseKey = "BTRemote.autoAdvertise"
    static let developerModeKey = "BTRemote.developerMode"
    static let useServiceChangedKey = "BTRemote.useServiceChanged"
    static let deviceNamesKey = "BTRemote.deviceNames"
    static let hasSeenWelcomeKey = "BTRemote.hasSeenWelcome"
    static let liveTypingKey = "BTRemote.liveTyping"
    static let remoteModeKey = "BTRemote.remoteMode"
    static let advertisedNameKey = "BTRemote.advertisedName"

    static let maxAdvertisedNameLength = 26

    static var advertisedName: String {
        let saved = UserDefaults.standard.string(forKey: advertisedNameKey)?
            .trimmingCharacters(in: .whitespacesAndNewlines)
        return saved.flatMap { $0.isEmpty ? nil : $0 } ?? L10n.Bluetooth.advertisedName
    }

    static let repoURL = URL(string: "https://github.com/peladam/darwin-bt-remote")!
    static let instructionsURL = URL(string: "https://github.com/peladam/darwin-bt-remote/blob/main/README.md")!

    static let defaultPointerSensitivity = 5.0
    static let pointerSensitivityRange = 0.5 ... 10.0
    static let defaultScrollSensitivity = 1.0
    static let scrollSensitivityRange = 0.5 ... 3.0
}
