import Foundation

// 1. 상품 객체 구현

class CafeMenu {
    var menuName: String
    func hello(){
        print("I am the CafeMenu")
    }
    init(menuName: String){
        self.menuName = menuName
    }
}

class CoffeeMenu : CafeMenu {
    var isHot: Bool
    var price: Int
    var quantity: Int // 주문하는 수량.
    init(menuName: String, isHot: Bool, price: Int, quantity: Int){
        self.isHot = isHot
        self.price = price
        self.quantity = quantity
        super.init(menuName: menuName)
    }
}

class BeverageMenu : CafeMenu {
    var isCreamOn: Bool
    var price: Int
    var quantity: Int
    init(menuName: String, isCreamOn: Bool, price: Int, quantity: Int){
        self.isCreamOn = isCreamOn
        self.price = price
        self.quantity = quantity
        super.init(menuName: menuName)
    }
}
class CakeMenu : CafeMenu {
    var candles: Int
    var price: Int
    var quantity: Int
    init(menuName: String, candles: Int, price: Int, quantity: Int){
        self.candles = candles
        self.price = price
        self.quantity = quantity
        super.init(menuName: menuName)
    }
}

// 1-1 Coffee를 상속하는 타입 2개

class Americano : CoffeeMenu {
    static var stock = 100 // 타입속성으로, 100 이 디폴트값.
    // var menuName: String = "아메리카노"
    override var quantity : Int { // 계산속성으로 재정의하여, 주문량에 따라 재고의 수량이 자동으로 감소하게 정의함.
        get{
            return self.quantity
        }
        set{
            Americano.stock -= newValue
        }
    }
    init(menuName: String, quantity: Int, isHot: Bool, price: Int){
        super.init(menuName: menuName, isHot: isHot, price: price, quantity: quantity)
    }
    convenience init (quantity: Int, isHot: Bool){
        self.init(menuName: "아메리카노", quantity: quantity, isHot: isHot, price: 4000)
    }
}

class Latte : CoffeeMenu {
    static var stock = 100
    override var quantity : Int {
        get{
            return self.quantity
        }
        set{
            Americano.stock -= newValue
        }
    }
    init(menuName: String, quantity: Int, isHot: Bool, price: Int){
        super.init(menuName: menuName, isHot: isHot, price: price, quantity: quantity)
    }
    convenience init(quantity: Int, isHot: Bool){
        self.init(menuName: "라떼", quantity: quantity, isHot: isHot, price: 5000)
    }
}

// 1-2 Beverage를 상속하는 타입 2개

class ChocolateMilk : BeverageMenu {
    static var stock = 100
    override var quantity : Int {
        get{
            return self.quantity
        }
        set{
            Americano.stock -= newValue
        }
    }
    init(menuName: String, quantity: Int, isCreamOn: Bool, price: Int){
        super.init(menuName: menuName, isCreamOn: isCreamOn, price: price, quantity: quantity)
    }
    convenience init (quantity: Int, isCreamOn: Bool) {
        self.init(menuName: "초코우유", quantity: quantity, isCreamOn: isCreamOn, price: 5000)
    }
}

class MelonSoda : BeverageMenu {
    static var stock = 100
    override var quantity : Int {
        get{
            return self.quantity
        }
        set{
            Americano.stock -= newValue
        }
    }
    init(menuName: String, quantity: Int, isCreamOn: Bool, price: Int){
        super.init(menuName: menuName, isCreamOn: isCreamOn, price: price, quantity: quantity)
    }
    convenience init(quantity: Int, isCreamOn: Bool){
        self.init(menuName: "메론소다", quantity: quantity, isCreamOn: isCreamOn, price: 6000)
    }
}

// 1-3 Cake를 상속하는 타입 2개

class StrawberryCake : CakeMenu {
    static var stock = 100
    override var quantity : Int {
        get{
            return self.quantity
        }
        set{
            Americano.stock -= newValue
        }
    }
    init(menuName: String, quantity: Int, candles: Int, price: Int){
        super.init(menuName: menuName, candles: candles, price: price, quantity: quantity)
    }
    convenience init(quantity: Int, candles: Int){
        self.init(menuName: "딸기케이크", quantity: quantity, candles: candles, price: 7000)
    }
}

class CheeseCake : CakeMenu {
    static var stock = 100
    override var quantity : Int {
        get{
            return self.quantity
        }
        set{
            Americano.stock -= newValue
        }
    }
    init(menuName: String, quantity: Int, candles: Int, price: Int){
        super.init(menuName: menuName, candles: candles, price: price, quantity: quantity)
    }
    convenience init(quantity: Int, candles: Int){
        self.init(menuName: "치즈케이크", quantity: quantity, candles: candles, price: 7000)
    }
}
