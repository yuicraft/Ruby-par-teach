#한번에 여러 변수에 대입하려면 왼쪽 식과 오른쪽 식을 각각 쉼표로 구별하는 다중 대입식을 이용하면 편리하다.

a,b = 1,2 #a에는 1이 b에는 2가 대입된다.

#오른쪽에는 배열을 지정할 수도 있다.
#오른쪽 배열 요소 수가 왼쪽보다 많으면 남은 요소는 무시된다.

lovely_my_angel, lovely_my_sister = ["아라가키 아야세","야샤진 아이","히나츠루 아이"]
#lovely_my_angel = "아라가키 아야세"
#lovely_my_sister = "야샤진 아이"

#왼쪽 마지막 식에 *을 붙아면 남은 요소를 배열로 대입할 수 있다.

lovely_my_angel, *lovely_my_sister = ["아라가키 아야세","야샤진 아이","히나츠루 아이"]
#lovely_my_angel = "아라가키 아야세"
#lovely_my_sister = ["야샤진 아이", "히나츠루 아이"]

#왼쪽 변수에 대응하는 요소가 없으면 해당 변수에 nil이 대입된다.

lovely_my_angel, lovely_my_sister, lovely_my_brother  = "아라가키 아야세", "야샤진 아이"
#lovely_my_angel = "아라가키 아야세"
#lovely_my_sister = "야샤진 아이"
#lovely_my_brother = nil

#다중 대입은 변수를 변환할 때도 자주 사용된다.

lovely_my_angel, lovely_my_sister = "아라가키 아야세", "야샤진 아이"
lovely_my_angel, lovely_my_sister = lovely_my_sister, lovely_my_angel
#lovely_my_angel = "야샤진 아이"
#lovely_my_sister = "아라가키 아야세"



