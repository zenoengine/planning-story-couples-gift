# planning-story-couples-gift
simple planning code

# Found Plan

|액션| 해설|
|---|---|
|moveto jim working-place house| Jim은 일을 마치고 집으로 돌아온다. |
|eat-together della jim house| Della와 Jim은 함께 저녁을 먹는다.|
|sleep della jim house| Della와 Jim은 집에서 잠을 잔다. 그리고 크리스마스 아침이 된다.|
|realize-to-no-money della| Della는 돈이 없는것을 깨닫는다.|
|realize-to-no-money jim| Jim도 돈이 없다는 것을 깨닫는다.|
|put-off-watch jim| Jim은 시계를 벗어둔다.|
|moveto della house store| Della는 그사이 집을 나와서 가게로 간다.|
|cut-hair della| 가게에서 머리를 자른다.|
|sell della npc-merchant cut-hair store| Della는 상인에게 자른 머리를 판다.|
|buy della npc-merchant watch-chain store| Della는 시계줄을 상인에게 구입한다 |
|moveto della store house| Della는 집으로 돌아온다.|
|give della jim watch-chain house| Della는 Jim에게 시계줄을 준다.|
|give jim della watch-chain house| Jim은 이렇게 귀중한 것을 받을 수 없다며 Della에게 시곗줄을 준다.|
|give della jim watch-chain house| Della는 Jim에게 사양하지 말고 잘 사용해달라고 한다. |
|moveto jim house store| Jim은 집에서 가게로 출발한다. |
|sell jim npc-merchant watch store| Jim은 상인에게 시계를 판다. |
|buy jim npc-merchant brush store|  Jim은 상인에게 빗을 구입한다. |
|moveto jim store house| Jim은 집으로간다. |
|hug della jim house| Della를 끌어안은 Jim. |
|give jim della brush house| 준비했다는 듯이 빗을 건네준다. |

# Planning을 통해 인터렉티브 스토리를 작성할 경우

## 문제점 & 유의점

- 디버깅이 까다롭다. 특히, 대량 수정후 Plan Not Found의 에러를 찾기가 어렵다.
- 의도하지 않은 결과를 도출할 수 있다. (장점이자 단점이 될 수 있다.)
- 하나의 action으로 통합해서 처리하게 되면, 예외 처리를 잘 해야한다.

## 팁
- 가장 간단한 시나리오부터 시작한다. (eg. 서로 선물을 갖고 있고, 주기만 하면 끝나는 시나리오)
- 그리고 차곡차곡 하나의 action과 predicates가 추가 될 때마다 수시로 확인한다.
- 의도치 못한 스토리를 읽어보면서 즐긴다.