import UIKit

public struct RGBColor {
    public var red: CGFloat
    public var green: CGFloat
    public var blue: CGFloat
    public var alpha: CGFloat

    public var color: UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    public init?(color: UIColor) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0

        guard color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) else {
            return nil
        }

        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}
