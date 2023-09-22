import Blade

@main
struct CoffeApp {
    static func main() {
        let coffeeShop = BladeCoffeeShop()
        coffeeShop.maker().brew()
        coffeeShop.logger().logs().forEach { print($0) }
    }
}
