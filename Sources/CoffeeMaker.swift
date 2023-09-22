import Blade

public class CoffeeMaker {
    private let logger: CoffeeLogger
    private let heater: Lazy<Heater>
    private let pump: Pump

    @Provider(of: CoffeeMaker.self)
    public init(logger: CoffeeLogger, heater: Lazy<Heater>, pump: Pump) {
        self.logger = logger
        self.heater = heater
        self.pump = pump
    }

    public func brew() {
        heater.get().on()
        pump.pump()
        logger.log(" [_]P coffee! [_]P ")
        heater.get().off()
    }
}
