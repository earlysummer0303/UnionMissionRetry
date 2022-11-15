//
//  showMenuAndTakeOrder.swift
//  CaffeApp_Features
//
//  Created by 황지우 on 2022/11/16.
//

import Foundation

// 메뉴 안내
func showMenu(){
    print("메뉴판")
    print("================================")
    print("커피메뉴")
    print("================================")
    print(" 1. 아메리카노 (Hot / Ice) -- 4000원")
    print(" 2. 라떼 (Hot / Ice) -- 5000원")
    print("음료메뉴")
    print("================================")
    print(" 3. 초코우유 (휘핑크림 선택 가능) -- 5000원")
    print(" 4. 메론소다 (휘핑크림 선택 가능) -- 6000원")
    print("케익메뉴")
    print("================================")
    print(" 5. 딸기케익 (초 개수 선택 가능) -- 7000원")
    print(" 6. 치즈케익 (초 개수 선택 가능) -- 7000원")
}

// 주문
func takeOrder () {
    print("\n\n주문하실 메뉴의 번호를 눌러주세요.")
    let input = readLine()
    if let userIntput = input { // if - let 바인딩.
        if let userInputNumber = Int(userIntput){
            switch userInputNumber{
            case 1,2:
                let isHot = selectHotorIce()
                let quantity = selectQuantity()
                let hotOption = isHot ? "Hot" : "Ice"
                if userInputNumber == 1 {
                    print("\n아메리카노 \(hotOption) 메뉴를 \(quantity) 개 주문합니다.\n")
                    let americano = Americano(quantity: quantity, isHot: isHot)
                    cardMoney -= americano.price * quantity
                }
                else {
                    print("\n라떼 \(hotOption) 메뉴를 \(quantity) 개 주문합니다.\n")
                    let latte = Latte(quantity: quantity, isHot: isHot)
                    cardMoney -= latte.price * quantity
                }
            case 3,4:
                let isCreamOn = selectCreamorNot()
                let quantity = selectQuantity()
                let creamOption = isCreamOn ? "휘핑크림 O" : "휘핑크림 X"
                if userInputNumber == 3 {
                    print("\n초코우유 \(creamOption) 메뉴를 \(quantity) 개 주문합니다.\n")
                    let chocolateMilk = ChocolateMilk(quantity: quantity, isCreamOn: isCreamOn)
                    cardMoney -= chocolateMilk.price * quantity
                }
                else {
                    print("\n메론소다 \(creamOption) 메뉴를 \(quantity) 개 주문합니다.\n")
                    let melonSoda = MelonSoda(quantity: quantity, isCreamOn: isCreamOn)
                    cardMoney -= melonSoda.price * quantity
                }
            case 5,6:
                let candles = selectNumberOfCandles()
                let quantity = selectQuantity()
                if userInputNumber == 5 {
                    print("\n딸기케이크, 초 \(candles)개 메뉴를 \(quantity) 개 주문합니다.\n")
                    let strawberryCake = StrawberryCake(quantity: quantity, candles: candles)
                    cardMoney -= strawberryCake.price * quantity
                }
                else {
                    print("\n치즈케이크, 초 \(candles)개 메뉴를 \(quantity) 개 주문합니다.\n")
                    let cheeseCake = CheeseCake(quantity: quantity, candles: candles)
                    cardMoney -= cheeseCake.price * quantity
                }
            default:
                print("\n잘못된 번호를 입력했습니다. 처음부터 다시 진행해주세요.\n")
                takeOrder()
                
            }
        }
    }
    print("\n\n시작화면으로 돌아갑니다.\n\n")
    start()
}

// 수량 선택
func selectQuantity() -> Int {
    print("\n주문할 개수를 선택해주세요.")
    let input = readLine()
    if let userInput = input {
        if let userInputNumber = Int(userInput){
            return userInputNumber
            }
        else { return 0 }
        }
    else { return 0 }
}

// 커피메뉴 - 핫 / 아이스 선택
func selectHotorIce () -> Bool {
    print("\nHot - 1, ICE - 2를 선택해주세요.")
    let input = readLine()
    if let userInput = input {
        if let userInputNumber = Int(userInput){
            switch userInputNumber {
            case 1:
                return true
            case 2:
                return false
            default:
                print ("\n잘못된 번호를 선택했습니다. 다시 주문해주세요.\n")
                selectHotorIce()
                return false
            }
        }
        else { return false }
    }
    else { return false }
}

// 음료 메뉴 - 휘핑크림 O / X 선택
func selectCreamorNot() -> Bool {
    print("\n휘핑크림 O  - 1, 휘핑크림 X - 2를 선택해주세요.")
    let input = readLine()
    if let userInput = input {
        if let userInputNumber = Int(userInput){
            switch userInputNumber {
            case 1:
                return true
            case 2:
                return false
            default:
                print ("\n잘못된 번호를 선택했습니다. 다시 주문해주세요.\n")
                selectCreamorNot()
                return false
            }
        }
        else { return false }
    }
    else { return false }
}

// 케이크 메뉴 - 초 개수 선택.
func selectNumberOfCandles() -> Int {
    print("\n초 개수를 선택해주세요.")
    let input = readLine()
    if let userInput = input {
        if let userInputNumber = Int(userInput){
            return userInputNumber
            }
        else { return 0 }
        }
    else { return 0 }
}
