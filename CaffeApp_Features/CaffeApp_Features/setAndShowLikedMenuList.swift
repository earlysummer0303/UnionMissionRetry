
import Foundation

var likedMenu : [String] = []
var selectedNumbers : [Int] = []

func showLikedMenuList(){
    print("현재 추가된 즐겨찾기 메뉴는 다음과 같습니다.")
    print("+++++++++++++++++++++++++++++++++")
    if likedMenu.isEmpty {
        print("아직 추가된 메뉴가 없습니다.")
    }
    else {
        for index in 0...likedMenu.count - 1{
            print("No.\(index+1)" + " " + "\(likedMenu[index])")
        }
    }
    print("+++++++++++++++++++++++++++++++++\n\n")
    print("새로운 즐겨찾기 메뉴를 추가하려면 아무 키나 눌러주세요. : " ,terminator: " ")
    let input = readLine()
    if let userInput = input {
        appendLikeMenuList()
    }
    
    
}

func appendLikeMenuList(){
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
    print("\n\n 다음중 즐겨찾기에 새로 추가할 메뉴의 번호를 입력해주세요. : ",terminator: " ")
    let input = readLine()
    if let userIntput = input { // if - let 바인딩.
        if let userInputNumber = Int(userIntput){ // Int 인풋을 받았을 경우.
            guard userInputNumber > 0 && userInputNumber < 7 else {
                print("잘못된 선택입니다. 다시 처음으로 돌아갑니다.")
                return appendLikeMenuList()
            }
            //중복검사
            guard selectedNumbers.contains(userInputNumber) == false else {
                print("이미 즐겨찾기에 있는 메뉴입니다. 다시 처음으로 돌아갑니다.")
                return appendLikeMenuList()
            }
            selectedNumbers.append(userInputNumber)
            
            switch userInputNumber {
            case 1:
                likedMenu.append("아메리카노")
                print("아메리카노가 즐겨찾기에 추가되었습니다.")
            case 2:
                likedMenu.append("라떼")
                print("라떼가 즐겨찾기에 추가되었습니다.")
            case 3:
                likedMenu.append("초코우유")
                print("초코우유가 즐겨찾기에 추가되었습니다.")
            case 4:
                likedMenu.append("메론소다")
                print("메론소다가 즐겨찾기에 추가되었습니다.")
            case 5:
                likedMenu.append("딸기 케이크")
                print("딸기케이크가 즐겨찾기에 추가되었습니다.")
            case 6:
                likedMenu.append("치즈 케이크")
                print("치즈케이크가 즐겨찾기에 추가되었습니다.")
            default:
                break
            }
            print("\n\n다시 시작화면으로 돌아가려면 아무 키나 눌러주세요. : " ,terminator: " ")
            let input = readLine()
            if let userInput = input {
                start()
            }

            
        }
        
    }
    
}
