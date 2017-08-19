import XCTest
@testable import Notify

class NotifyTests: XCTestCase {
    func testBuilder() {
        let notification = Notify.Notification()
            .title("title")
            .subtitle("subtitle")
            .body("body")
            .contentImage(Image(url: URL(string: "image")!))
            .identifier("identifier")
            .responsePlaceholder("responsePlaceholder")
            .deliverDate(Date.distantFuture)
            .soundName(NSUserNotificationDefaultSoundName)

        XCTAssertEqual(notification.title, "title")
        XCTAssertEqual(notification.subtitle, "subtitle")
        XCTAssertEqual(notification.body, "body")
        XCTAssertEqual(notification.contentImage?.url.absoluteString, "image")
        XCTAssertEqual(notification.identifier, "identifier")
        XCTAssertEqual(notification.responsePlaceholder, "responsePlaceholder")
        XCTAssertEqual(notification.deliverDate, Date.distantFuture)
        XCTAssertEqual(notification.soundName, NSUserNotificationDefaultSoundName)
    }


    static var allTests = [
        ("testBuilder", testBuilder),
    ]
}
