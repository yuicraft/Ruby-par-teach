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

greeting = "Hello"
people = ["Alice", "Bob"]

people.each do |person|
    puts greeting + person
end

puts person
#블록 밖에서 정의된 지역 변수를 블록 안에서 참고 할 수 있지만 
#블록 안에서 정의된 지역 변수를 블록 밖에서 참고 할 수는 없다
