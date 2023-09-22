import Blade

public final class CoffeeLogger {
    private var messages: [String] = []

    @Provider(of: CoffeeLogger.self, scope: .singleton)
    public init() {}

    public func log(_ message: String) {
        messages.append(message)
    }

    public func logs() -> [String] {
        messages
    }
}
