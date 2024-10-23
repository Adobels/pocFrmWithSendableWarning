public class Jojo {

    public var mmm: (() -> Void)?

    public func hello(input: AnyHashable) {
        warning(input: "") {
            let _ : AnyHashable = input
        }
    }

    public func warning(input: AnyHashable, content: @escaping @Sendable () -> Void) {
        self.mmm = content
    }

    public init() {

    }
}

