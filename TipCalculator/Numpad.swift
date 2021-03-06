import Foundation

public class Numpad {

    public var value: Float {
        get {
            if display == "" {
                return 0
            } else {
                return (display as NSString).floatValue
            }
        }
    }
    public var display: String {
        get {
            return chars.joinWithSeparator("")
        }
    }
    public var chars: [String]

    public init() {
        chars = []
    }

    public func press(number number: Int) {
        if !chars.isEmpty || number != 0 {
            chars.append("\(number)")
        }
    }

    public func pressDot() {
        if !chars.contains(".") {
            chars.append(".")
        }
    }

    public func clear() {
        chars = []
    }
    
}
