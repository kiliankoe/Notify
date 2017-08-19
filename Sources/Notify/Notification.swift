import Foundation

public struct Notification {
    /// Specifies the title of the notification.
    public let title: String?
    /// Specifies the subtitle of the notification.
    public let subtitle: String?
    /// The body text of the notification.
    public let body: String?
    /// Image shown in the content of the notification.
    public let contentImage: Image?
    /// A string that uniquely identifies a notification.
    public let identifier: String?
    /// Optional placeholder string for inline reply field.
    public let responsePlaceholder: String?

    /// Specifies when the notification should be delivered.
    public let deliverDate: Date?
    /// Specifies the name of the sound to play when the notification is delivered.
    public let soundName: String?
}

public extension Notification {
    func send() {
        // Either deliver now or schedule for later based on the notification's deliver date
    }
}

//public extension Notification {
//    enum Style {
//        case action(title: String)
//    }
//}

