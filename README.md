# Calculator - Personal

## 🗒︎목차
1. [소개](#-소개)
2. [개발환경 및 라이브러리](#-개발환경-및-라이브러리)
3. [팀원](#-팀원)
4. [타임라인](#-타임라인)
5. [UML](#-uml)
6. [실행화면](#-실행-화면)
7. [UnitTest Coverage](#-unittest-coverage)
8. [트러블 슈팅 및 고민](#-트러블-슈팅-및-고민)
9. [참고링크](#-참고-링크)


## 👋 소개
[Kyo](https://github.com/KyoPak)가 구현한 Calculater Step-3(완성) 입니다.


## 💻 개발환경 및 라이브러리
[![swift](https://img.shields.io/badge/swift-5.6-orange)]()
[![xcode](https://img.shields.io/badge/Xcode-13.4.1-blue)]()


## 🧑 팀원
<img src = "https://user-images.githubusercontent.com/59204352/193524215-4f9636e8-1cdb-49f1-9a17-1e4fe8d76655.PNG" width=200 height=170>|
|:--:|
|[Kyo](https://github.com/KyoPak)|
 

## 🕖 타임라인

Step - 3 : 2022.09.27 ~ 10.01


## 🗺 UML
<details>
<summary> 
펼쳐보기
</summary>
    
![제목 없는 다이어그램](https://user-images.githubusercontent.com/59204352/191893437-3885c44e-cb43-46e6-aeb6-49a7beb0d05e.jpg)
    
</details>



## 💻 실행 화면 
|일반계산|=후 연속계산|.,- 사용계산|
|------|--|---|
![일반계산](https://user-images.githubusercontent.com/59204352/193729556-202e49fc-a65e-45bd-81f3-e99eb46dec2b.gif)|![연속계산](https://user-images.githubusercontent.com/59204352/193729600-3cf71d6b-4369-40cf-a86c-ba7640be61f5.gif)|![- 버튼연산](https://user-images.githubusercontent.com/59204352/193729706-4cbad361-6ac0-407f-85ac-5665b60c44eb.gif)

|AC 버튼클릭|CE 버튼클릭|계산내역|
|------|--|---|
![AC버튼](https://user-images.githubusercontent.com/59204352/193729761-2d302f55-15b2-43c8-95f0-eb35376c8170.gif)|![EC버튼](https://user-images.githubusercontent.com/59204352/193729774-ff6208a0-b167-4ce7-8ed5-b148b274a751.gif)|![계산내역](https://user-images.githubusercontent.com/59204352/193729825-1efe6006-b630-414c-bd8c-f6b7ad9c7dbf.gif)


## ✅ UnitTest Coverage
- Node
<img width="1028" alt="스크린샷 2022-10-08 오후 5 22 04" src="https://user-images.githubusercontent.com/59204352/194697950-e53aefcb-26d7-40bf-9044-f3893cea8dfd.png">
- LinkedList
<img width="1029" alt="스크린샷 2022-10-08 오후 5 21 56" src="https://user-images.githubusercontent.com/59204352/194697986-3cb8618f-e105-421a-8227-4d6e83caecaa.png">
- CalculatorItemQueue
<img width="1029" alt="스크린샷 2022-10-08 오후 5 22 31" src="https://user-images.githubusercontent.com/59204352/194698020-7c650140-a407-451c-920a-b6b3064ccc94.png">
- ExpressionParser
<img width="1042" alt="스크린샷 2022-10-08 오후 5 21 28" src="https://user-images.githubusercontent.com/59204352/194698064-a5f7ea56-05e6-4c5d-a1d1-ce4242cce89b.png">
- Formula & Operator
<img width="1028" alt="스크린샷 2022-10-08 오후 5 21 17" src="https://user-images.githubusercontent.com/59204352/194698057-f23f55dc-ff0d-45fa-8cf5-5b2e7be44a5b.png">



## 🎯 트러블 슈팅 및 고민
### Step - 1 
<details>
<summary> 
펼쳐보기
</summary>
   
#### ***1. LinkedList와 Array로 Queue를 구현할 때의 각각의 차이점에 대해서 고민***
- Array는 접근할때 시간복잡도 O(1)으로 매우 빠르기 때문에 탐색기능이 필요할 때는 Array로 구현이 더 적합할 것이라고 판단을 하였습니다. 
- 하지만 가장 앞의 요소를 제거하거나 중간 요소를 제거할 때는 Array의 경우에는 O(n)이고 LinkedList의 경우에는 O(1)으로 head부분만 바꿔주면 되기 때문에 LinkedList가 더욱 적합하다고 생각하였습니다.
- 하지만 Node타입의 적용한 배열을 사용한다면 탐색기능과 삭제기능 모두 좋지 않을까 라는 생각이 추후에 들었습니다.

### ***2. CalcutatorItemQueue와 LinkedList사이의 의존성 문제에 대한 고민***
- 사실 외부에서 CalcutatorItemQueue의 객체를 만들 때 LinkedList 인스턴스를 외부에서 주입하는 방식을 고민했습니다. 
- 하지만 단순히 외부에서 인스턴스, 객체를 주입한다고 해서 의존성이 떨어지는 효과를 기대할수 없다고 생각했습니다. 의존성을 분리해주는 프로토콜이 존재하지 않는 설계를 했기 때문이었습니다.
- 또한, 단순히 의존성을 낮추기 위해 의존성 주입을 사용하는 것이 아닌 얼만큼 CalcutatorItemQueue가 얼만큼 재사용이 되는지에 대한 고민도 같이 해보았을 때 의존성 주입은 불필요하다고 판단하였습니다.
</details>


---


### Step - 2
<details>
<summary> 
펼쳐보기
</summary>
    
#### ***1. 고차함수에 사용에 대한 고민***
- 코드를 구현할 때, 가독성 부분을 신경쓰기 위해서 지나친 열거식 고차함수를 지양하지 않았습니다.
- 고차함수를 적절히 활용한다면 간결하게 표현할 수 있다는 것은 알았지만 왜 고차함수를 지향하는 이유를 알지 못했었습니다.
    - 고차함수는 상수 let으로 함수 내부에서 바로 표현 및 할당이 가능하기 때문에 한번에 표현이 가능하고 SideEffect를 방지할수 있다는 장점을 가지고 있다는 것을 알 수 있었습니다.

#### ***2. 간결한 코드 vs 가독성이 좋은 코드***
- 간결한 코드와 가독성이 좋은 코드의 지향점에 대한 고민을 했습니다. 
    - 간결하게 표현해 줄 수 있는 고차함수 등을 사용한다면 코드의 수는 줄 일 수 있지만 가독성이 떨어질 것이라 생각이 들어 이러한 고민을 했습니다.
    - 실력을 더 쌓은 후, 고민을 다시 해봐야겠지만 현재는 적당한 간결함을 선택하고 높은 가독성을 추구하는게 제일 좋은 코드라고 생각하게 되었습니다. 
      그 이유는 아직 학습자의 입장이라는 점과 유지보수, 협업시에 일어날 문제 때문입니다. 하지만 실제 회사를 간다면 PR을 문서화 해놓기 때문에 간결함을 추구할 수도 있을 것 같습니다..
    
#### ***3. 테스트에 대한 고민***
- 테스트 케이스, 테스트에 필요한 데이터가 나오는 배경에 대해서 고민했습니다.
    - 이 부분에 대해서 리뷰어와 이야기해본 결과, 
    - TDD에서의 테스트, 단순 테스트 모두 실행하는 시점에 대한 고민이 필요하다고 느꼈고, 구현해야 하는 기능을 먼저 생각해봐야겠다고 느꼈습니다.
</details>


---


### Step - 3

#### ***1. Scroll View에 대한 고민***

- `layoutIfNeeded()` 메서드의 실행 위치에 대한 고민이 있었습니다. 
    - 제 생각으로는 4번 line에 위치해도 자동으로 스크롤이 하단부로 내려가야한다고 생각을 했었습니다. 하지만 4번 line에 위치하게 될 경우, offset이동 후 뷰가 확장되기 때문에 자동으로 스크롤이 내려가지 않게 되고 offset이동 전에 뷰를 확장 및 업데이트 하고, 그 후에 offset을 이동해야 스크롤이 자동적으로 맞춰지게 된다는 것을 알게 되었습니다.
```swift=
view.layoutIfNeeded()
let contentOffsetValue: CGFloat = historyScrollView.contentSize.height - historyScrollView.frame.height
historyScrollView.setContentOffset(CGPoint(x: 0, y: contentOffsetValue), animated: true)
// view.layoutIfNeeded()
```

- `layoutIfNeeded()` 
    - `layoutIfNeeded()` 메서드가 호출되면 UI를 업데이트 하라는 Task가 queue의 뒷쪽에 넣어지는 것이 아닌, 제일 앞쪽에 넣어져 곧바로 즉시 UI가 업데이트 됩니다.
    - 해당 메서드가 호출되면 Update Cycle을 바로 실행하여 레이아웃이 즉각적으로 업데이트 적용됩니다.
    - layoutSubviews()은 내부 알고리즘에 의해 최적화되어 있기 때문에 명시적으로 호출되면 안되고, 애플에서는 layoutIfNeeds() 를 통해서 layoutSubviews() 메서드가 간접적으로 불리도록 설계 되었습니다.


- `setContentOffset(contentOffset: CGPoint, animated: Bool)` 
    - contentOffset은 Scroll view의 시작점과 일치하는 Content View의 offset을 설정하는 메서드 입니다.



#### ***2. Logic에 사용에 대한 고민***
- 실제로 0을 사용하고 싶은 경우와 Default 0(사용되면 안되는 0)과의 비교
    - 실제로 0을 계산에 추가할 때와 기본 `resultLabel`의 text가 0일 때 구분이 필요하였습니다.
    - 실제로 유저가 0을 입력할 때와, 기본 Default 0을 사용할때 둘을 구분하기 위해서 mainResultLabel의 값은 모두 Constant.zero라는 값을 사용하였고, 그 내부 로직을 사용할 때는 currentOperand의 값을 `Contant.defaultZero(D0)`, `Constant.zero(0)` 라는 각각의 값으로 변경하며 구분하였습니다.

- `=`버튼을 누르고 계산을 이어나갈수 있는 기능
    - 이 기능을 구현하는게 제일 까다로웠던 것 같습니다. calculate 상태인지도 검증해야했고 현재 입력된 Operand, Operator값도 검증을 해야했습니다. 그리고 다시 계산을 이어나간다면 계산 결과값을 레이블에서 지워야했고, 숫자입력을 방지하고 Operator을 입력했을 때만 추가적인 계산이 가능하도록 로직을 설계하였습니다. 
    - 또한 이러한 흐름이 사용자의 관점에서도 직관적이며, 부자연스럽지 않을 것이라고 생각하였습니다.  
    - `=`버튼을 누른 후에 Operator들을 누르면 다시 DefaultZero값이 되고 숫자만 입력이 되게끔 구현을 하였는데, calculate 상태인지를 알기위해 플래그가 필요로 하였고, `Constant.calculate`를 플래그로 사용하였습니다.
    
#### ***3. 완성도에 사용에 대한 고민***
- 완성도를 위해서 몇가지의 상세적인 기능을 추가하였습니다.
    - `=`버튼을 눌러서 계산을 완료한 후에도 연산자를 누르면 다시 계산을 이어나갈수 있도록했습니다.
    - 계산결과가 나왔을 때는 Operator와 AC, EC 버튼만 누를수 있게 끔 하였습니다.
    - NumberFormatter 적용을 계산 결과 Label 뿐만 아니라 History에도 적용하였습니다.
    - 0을 따로 누르면 0을 포함한 계산 기능 구현했습니다.
    
#### ***4. Error Handling에서의 타입캐스팅!***
- Error가 발생한다면 resultLabel에 Error Message를 표기하는 방식으로 이용자에게 Error를 전달해주고자 하였습니다. 때문에 발생한 Error와 보여줘야할 Message를 아래와 같은 코드로 일일이 매칭을 해줘야 했습니다.
```swift
} catch CalculatorError.ErrorA {
    resultLabel.text = CalculatorError.ErrorA.message 
    ...
} catch {
    resultLabel.text = CalculatorError.ErrorB.message
```
- 하지만 위와 같은 방식은 아래코드처럼 매칭이 잘못될 확률이 있다고 피드백을 받았습니다. 
```swift
} catch CalculatorError.ErrorA {
    resultLabel.text = CalculatorError.ErrorC.message 
```
- 타입캐스팅이란 방법을 조언을 받은 후, 전달받은 error타입의 변수를 CalculatorError타입으로 다운캐스팅을 한다면 일일이 매칭하지 않아도 된다는 것을 알게 되었습니다. Error마다 처리방법이 다르다면 일일이 처리방법들을 구현해줘야하지만 지금과 같은 로직이라면 이러한 방법을 사용하여 개발자의 실수를 줄일 수 있고 코드도 간결해진다고 생각합니다. 
```swift
} catch {
    if let error = error as? CalculatorError {
    resultLabel.text = error.message
    }
}
```
    
## 📚 참고 링크
[Swift Language Guide - Protocols](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)<br>[Swift Language Guide - Extentions](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html)<br>[Swift Language Guide - Error Handling](https://docs.swift.org/swift-book/LanguageGuide/ErrorHandling.html)<br>[NumberFormatter](https://developer.apple.com/documentation/foundation/numberformatter)<br>[오토레이아웃 정복하기 - 야곰닷넷](https://yagom.net/courses/autolayout/)
