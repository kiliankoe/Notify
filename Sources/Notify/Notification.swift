import Foundation

public class Notification {
    /// Specifies the title of the notification.
    public func title(_ title: String?) -> Notification {
        self.title = title
        return self
    }
    var title: String?

    /// Specifies the subtitle of the notification.
    public func subtitle(_ subtitle: String?) -> Notification {
        self.subtitle = subtitle
        return self
    }
    var subtitle: String?

    /// The body text of the notification.
    public func body(_ body: String?) -> Notification {
        self.body = body
        return self
    }
    var body: String?

    /// Image shown in the content of the notification.
    public func contentImage(_ contentImage: Image?) -> Notification {
        self.contentImage = contentImage
        return self
    }
    var contentImage: Image?

    /// A string that uniquely identifies a notification.
    public func identifier(_ identifier: String?) -> Notification {
        self.identifier = identifier
        return self
    }
    var identifier: String?

    /// Optional placeholder string for inline reply field.
    public func responsePlaceholder(_ responsePlaceholder: String?) -> Notification {
        self.responsePlaceholder = responsePlaceholder
        return self
    }
    var responsePlaceholder: String?

    /// Specifies when the notification should be delivered.
    public func deliverDate(_ deliverDate: Date?) -> Notification {
        self.deliverDate = deliverDate
        return self
    }
    var deliverDate: Date?

    /// Specifies the name of the sound to play when the notification is delivered.
    public func soundName(_ soundName: String?) -> Notification {
        self.soundName = soundName
        return self
    }
    var soundName: String?

    /// Create a new empty notification.
    public init() { }
}

public extension Notification {
    func send() {
        // Either deliver now or schedule for later based on the notification's deliver date
    }
}
