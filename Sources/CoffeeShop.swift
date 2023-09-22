import Blade

@Component(modules: [DripCoffeeModule.self])
public protocol CoffeeShop {
    func maker() -> CoffeeMaker
    func logger() -> CoffeeLogger
}
