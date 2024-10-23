public class Jojo {

    public var mmm: (() -> Void)?

    public func hello(input: AnyHashable) {
        warning(input: "") {
            let _ : AnyHashable = input
        }
    }

    @preconcurrency
    public func warningWithPre(input: AnyHashable, content: @escaping @Sendable () -> Void) {
        self.mmm = content
    }

    @preconcurrency
    public func warning(input: AnyHashable, content: @escaping @Sendable () -> Void) {
        self.mmm = content
    }

    public init() {

    }
}

