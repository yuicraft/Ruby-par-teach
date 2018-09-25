#지역변수는 스코프(참조가능 범위)가 가장 좁은 변수이다.
#변수명은 소문자나 _을 사용해야 한다.

#지역변수 스코프
#블록
#메소드 정의
#클래스 모듈 정의 
#톱 레벨
#스코프 밖에 있는 지역변수를 참조하려고 하면 에러가 발생

=begin 
foo = "foo in topleval"

def display_foo
    puts foo
end

puts foo
display_foo
=end

=begin
greeting = "Hello"
people = ["Alice", "Bob"]

people.each do |person|
    puts greeting + person
end

puts person
=end

#블록 밖에서 정의된 지역 변수를 블록 안에서 참고 할 수 있지만 
#블록 안에서 정의된 지역 변수를 블록 밖에서 참고 할 수는 없다

#전역 변수
#전역 변수는 $으로 시작
#아주 넓은 스코프를 가짐
#존제 하지 않는 전역변수를 참조하면 nil를 반환
#어디서든지 참조할수 있지만 전역 변수가 너무 많아지면 코드의 해석이 어려워짐

=begin
$foobar = "bazbaz"
$undefined
=end

#상수
#상수는 대문자로 시작
#상수 대입은 한번만 해야 하지만 정의가 완료된 상수에 다시 대입하는 것은 가능

=begin
FOO_BAR = "AnA는 갓동아리이다"

puts FOO_BAR

FOO_BAR="아니다 이 악마야"

puts FOO_BAR
=end

#가급적 피하세요 

#메소드 안에서 상수를 재정의 하는 것은 안된다.

=begin
FOO_BAR = "AnA는 갓동아리이다"

def set_foo
    FOO_BAR = "아니다 이 악마야"
end
=end


