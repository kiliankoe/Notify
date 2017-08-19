import Foundation

public struct Image {
    public let url: URL
}

#if os(macOS)
import AppKit

extension Image {
    var asNSImage: NSImage {
        return NSImage(byReferencing: self.url)
    }
}
#endif
