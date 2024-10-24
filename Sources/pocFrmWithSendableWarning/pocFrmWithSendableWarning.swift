import Dispatch

public typealias Momo = @Sendable (MyModel) -> Void

public class Jojo {

    public var mmm: (() -> Void)?

    public var momo: Momo?

    public var model: MyModel?

    public func hello(input: AnyHashable) {
        warningWithModelSendable(input: "") { model in
            DispatchQueue.main.async {
                model.title = ""
            }
        }
//        warning(input: "") {
//            let _ : AnyHashable = input
//        }
    }

    //@preconcurrency
    public func warningWithPre(input: AnyHashable, content: @escaping @Sendable () -> Void) -> () -> Void {
        content()
        return content
    }

    var toto: (MyModel) -> Void = { _ in } {
        didSet {
            toto(.init(title: ""))
        }
    }

    public func lala(arg: @Sendable @escaping (MyModel) -> Void) {
        toto = arg
    }

    public func warning(input: AnyHashable, content: @escaping @Sendable () -> Void) {
        DispatchQueue.global().async {
            guard let model = self.model else {
                return
            }
            content()
        }
    }

    public func warningWithModel(input: AnyHashable, content: @escaping Momo) {
        DispatchQueue.global().async {
            guard let model = self.model else {
                return
            }
            content(model)
        }
    }

    public func warningWithModelSendable(input: AnyHashable, content: @escaping @Sendable Momo) {
        DispatchQueue.global().async {
            guard let model = self.model else {
                return
            }
            content(model)
        }
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

