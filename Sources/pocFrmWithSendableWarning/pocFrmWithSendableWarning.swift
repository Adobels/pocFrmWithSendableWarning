public func hello(input: AnyHashable) {
    warning(input: "") {
        let _ : AnyHashable = input
    }
}

public func warning(input: AnyHashable, content: @escaping @Sendable () -> Void) {
    content()
}
