import Blade

public class ElectricHeater: Heater {
    private let logger: CoffeeLogger
    private var heating: Bool = false

    @Provider(of: ElectricHeater.self)
    init(logger: CoffeeLogger) {
        self.logger = logger
    }

    public func on() {
        heating = true
        logger.log("~ ~ ~ heating ~ ~ ~")
    }

    public func off() {
        heating = false
    }

    public func isHot() -> Bool {
        heating
    }
}
