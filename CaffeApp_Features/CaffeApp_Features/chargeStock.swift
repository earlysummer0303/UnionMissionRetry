//
//  chargeStock.swift
//  CaffeApp_Features
//
//  Created by 황지우 on 2022/11/16.
//

import Foundation

func chargeStockOption() {
    print ("\n\n 재고를 충전합니다. 재고를 충전할 메뉴를 선택해주세요. \n")
    print(" 1. 아메리카노 (현재 잔여 수량 :\(Americano.stock))")
    print(" 2. 라떼 (현재 잔여 수량 :\(Latte.stock))")
    print(" 3. 초코우유 (현재 잔여 수량 :\(ChocolateMilk.stock))")
    print(" 4. 메론소다 (현재 잔여 수량 :\(MelonSoda.stock))")
    print(" 5. 딸기케익 (현재 잔여 수량 :\(StrawberryCake.stock))")
    print(" 6. 치즈케익 (현재 잔여 수량 :\(CheeseCake.stock))")
    let input = readLine()
    if let userInput = input {
            if let userInputNumber = Int(userInput){
                switch userInputNumber {
                case 1:
                    print("\n 아메리카노 메뉴의 수량을 얼마나 충전할까요?")
                    let chargedNumber = receiveNumbersToCharge()
                    Americano.stock += chargedNumber
                    print("\n 수량 충전 완료, 아메리카노의 잔여 수량은 \(Americano.stock)입니다.")
                case 2:
                    print("\n 라떼 메뉴의 수량을 얼마나 충전할까요?")
                    let chargedNumber = receiveNumbersToCharge()
                    Latte.stock += chargedNumber
                    print("\n 수량 충전 완료, 라떼의 잔여 수량은 \(Latte.stock)입니다.")
                case 3:
                    print("\n 초코우유 메뉴의 수량을 얼마나 충전할까요?")
                    let chargedNumber = receiveNumbersToCharge()
                    ChocolateMilk.stock += chargedNumber
                    print("\n 수량 충전 완료, 초코우유의 잔여 수량은 \(ChocolateMilk.stock)입니다.")
                case 4:
                    print("\n 메론소다 메뉴의 수량을 얼마나 충전할까요?")
                    let chargedNumber = receiveNumbersToCharge()
                    MelonSoda.stock += chargedNumber
                    print("\n 수량 충전 완료, 메론소다의 잔여 수량은 \(MelonSoda.stock)입니다.")
                case 5:
                    print("\n 딸기케익 메뉴의 수량을 얼마나 충전할까요?")
                    let chargedNumber = receiveNumbersToCharge()
                    StrawberryCake.stock += chargedNumber
                    print("\n 수량 충전 완료, 딸기케익의 잔여 수량은 \(StrawberryCake.stock)입니다.")
                case 6:
                    print("\n 치즈케익 메뉴의 수량을 얼마나 충전할까요?")
                    let chargedNumber = receiveNumbersToCharge()
                    CheeseCake.stock += chargedNumber
                    print("\n 수량 충전 완료, 치즈케익의 잔여 수량은 \(CheeseCake.stock)입니다.")
                default:
                    print("잘못된 선택 입니다. 다시 재고 충전 메뉴로 돌아갑니다.")
                    chargeStockOption()
                }
            }
        }
    }


func receiveNumbersToCharge()->Int {
    let input = readLine()
        if let userInput = input {
            if let userInputNumber = Int(userInput){
                guard userInputNumber > 0 else {
                    print("잘못된 재고 충전 수량입니다. 수량을 다시 입력해주세요.")
                    return receiveNumbersToCharge()
                }
                print("\(userInputNumber)개의 수량을 충전합니다.")
                return userInputNumber
            }
            else {return 0}
        }
        else {return 0}
    }

