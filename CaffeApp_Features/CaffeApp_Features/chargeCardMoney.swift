
import Foundation


func chargeCardMoney(){
    print("\n현재의 카드 잔액은 \(cardMoney) 원입니다.\n")
    print("\n충전할 금액을 입력해주세요 \n")
    let input = readLine()
    if let userInput = input{
        if let userInputMoney = Int(userInput){
            print("\(userInputMoney) 원을 충전합니다.")
            cardMoney += userInputMoney
            print("충전완료, 잔액은 \(cardMoney)원 입니다.")
        }
    }
    print("\n시작화면으로 돌아갑니다.\n")
    start()
}
