#루비란
#https://namu.wiki/w/쿠로사와%20루비
#오늘 하루도 간바루비! (今日も一日、頑張ルビィ! )
#가 아니라
#스크립트 언어나 동적 프로그래밍 언어로 분류됨
#간단한 문법과 동적형 결정 구조를 지닌 객체지향 언어

#모든 것이 객체
#1과 같은 숫자나 true등도 객체이다.

1.to_s

#to_s는 호출 객체의 문자열을 반환하는 메소드

true.to_s

#객체 클래스와 클래스의 상속 관계를 표현

'hello'.class #String 출력
String.ancestors #[String, Comparable, Object, Kernel, BasicObject] 출력

10.class #Integer 출력
Integer.ancestors #[Integer, Numeric, Comparable, Object, Kernel, BasicObject]출력

true.class #TrueClass 출력
TrueClass.ancestors #[TrueClass, Object, Kernel, BasicObject] 출력

nil.class #NilClass 출력
NilClass.ancestors #[NilClass, Object, Kernel, BasicObject] 출력

=begin
문자열이나 수치뿐만 아니라 true/false나 nil 같은 객체(유사변수)에도 클래스가 존재해서 
Object(Object클래스도 부모객체 존재)클래스의 자식관계로 구성된다.
=end

#코딩 규격

#클래스/모듈명
#카멜 케이스(Camel Case)
#대문자로 시작

class SampleClass
end

module SampleModule
end

#매소드명
#스네이크 케이스(Snake Case)

def sample_method
end

#변수명
#메소드랑 동일

sample_variavle = "sample"

#코드 블록 방침
#do..end
#여러줄 
#{..}
#한줄

#여러줄에 걸쳐 기술하는 경우
1.upto(2) do |n|
    puts n
end

#한줄 코딩
1.upto(2) {|n| puts n}

#우선 순위가 바뀌기도 함
#나중에 할꺼임!

#루비의 종류

#Jruby
#자바로 개발된 루비 버전
#자바 라이브러리 사용 가능

#MacRuby
#맥의 코코아 프레임워크등을 바로 사용할 수 있도록 개조한 루비

#Rubinius
#루비로 만든 루비

#mruby
#마츠모토님의 주도로 개발된 임베디드용 경량판 루비



