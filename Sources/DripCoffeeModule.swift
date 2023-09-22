import Blade

@Module(
    provides: [
        CoffeeLogger.self,
        CoffeeMaker.self,
        ElectricHeater.self,
        Thermosiphon.self
    ]
)
public enum DripCoffeeModule {
    @Provider(scope: .singleton)
    static func provideHeater(heater: ElectricHeater) -> Heater {
        heater
    }

    @Provider
    static func providePump(thermosiphon: Thermosiphon) -> Pump {
        thermosiphon
    }
}
