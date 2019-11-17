import OpenSwiftUI

public struct CircleDrawable: Drawable {
    public var origin: Point = Point.zero
    public var size: Size = Size.zero
    
    public init() {
        
    }
    
    public func wantedWidthForProposal(_ proposedWidth: Int) -> Int {
        return proposedWidth
    }
    
    public func wantedHeightForProposal(_ proposedHeight: Int) -> Int {
        size.width > 0 ? size.width : proposedHeight
    }
}

extension CircleDrawable: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "Circle [\(size)]"
    }
}
