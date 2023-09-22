import Blade

public class Thermosiphon: Pump {
    private let logger: CoffeeLogger
    private let heater: Heater

    @Provider(of: Thermosiphon.self)
    public init(logger: CoffeeLogger, heater: Heater) {
        self.logger = logger
        self.heater = heater
    }

    public func pump() {
        if heater.isHot() {
            logger.log("=> => pumping => =>");
        }
    }
}
