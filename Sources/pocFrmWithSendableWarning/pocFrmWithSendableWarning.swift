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

    public func warning(input: AnyHashable, content: @escaping @Sendable () -> Void) {
        self.mmm = content
    }

    public func warningWithModel(input: AnyHashable, content: @escaping (MyModel) -> Void) {
        content(MyModel(title: ""))
    }

    public init() {

    }
}

public class MyModel {
    public var title: String

    public init(title: String) {
        self.title = title
    }
}

