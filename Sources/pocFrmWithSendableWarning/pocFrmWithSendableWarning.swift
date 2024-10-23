public func hello(input: AnyHashable) {
    warning(input: "") {
        let _ : AnyHashable = input
    }
}

private func warning(input: AnyHashable, content: @escaping @Sendable () -> Void) {
    content()
}
