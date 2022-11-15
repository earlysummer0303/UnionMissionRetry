import Foundation

// 카드에 금액 세팅
var cardMoney = 200

// 키오스크
func start() {
    print("안녕하세요! 카페에 오신것을 환영합니다.")
    print("================================")
    print("메뉴 확인 및 주문하기 ----------------------- 1 ")
    print("카드 잔액 확인 ----------------------- 2 ")
    print("카드 충전 ----------------------- 3 ")
    print("================================")
    print("원하는 작업을 선택해주세요.")
    let input = readLine()
    if let userInput = input {
        if let userInputNumber = Int(userInput){
            switch userInputNumber {
            case 1:
                print("\n\n메뉴 확인 및 주문하기 페이지로 이동합니다.\n\n")
                showMenu()
                takeOrder()
            case 2:
                print("\n\n카드 잔액 확인 페이지로 이동합니다.\n\n")
                checkCardMoney()
            case 3:
                print("\n\n카드 충전 페이지로 이동합니다.\n\n")
                chargeCardMoney()
            default:
                print("\n\n잘못된 선택입니다. 처음부터 다시 진행합니다.\n\n")
                start()
            }
        }
    }
}


start()
