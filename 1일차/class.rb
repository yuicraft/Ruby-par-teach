#새로운 클래스를 정의하려면 class 키워드를 사용한다.
#class 명은 영문 대문자를 사용
#index 참조

#class 클래스명
#end

=begin
class MyClass
    def hello
        puts "오늘 하루도 간바루비!"
    end
end

#클래스로부터 인스턴스를 생성하려면 다음과 같이 기술한다.
#클래스명.new

my_object = MyClass.new
my_object.hello
=end

#인스턴스 내에서만 참조할 수 있는 변수를 인스턴스 변수라고 한다.
#이를 이용해서 객체의 상태를 저장할 수 있다.
#인스턴스 변수는 @로 시작된다.
#외부에서 인스턴스 변수에 접근하려면 별도의 메소드를 지정해야 한다.

=begin
class Ruler
    def length= (val)
        @length = val
    end

    def length
        @length
    end
end

ruler = Ruler.new

ruler.length = 30
puts ruler.length #30

#여기서는 설명을 위한 메소드 정의
#주로 attr_accessor사용

class Ruler
    attr_accessor :length
end

#attr_accessor :인스턴스 변수명 형식으로 기술하면
#자동으로 Ruler#변수명=란 인스턴스 변수가 정의됨
=end

#메소드 내부에서 해당 메소드가 있는 인스턴스를 self라는 이름의 유사 변수를 이용해서 참조 할 수 있다.
#self는 다른 언어의 this에 해당한다.

=begin
#메소드 내부에서 리시버를 생략한 메소드를 호출할 때는 암묵적으로 self가 리시버가 됨
class Ruler
    attr_accessor :length

    def display_length
        puts length
    end
end

ruler = Ruler.new
ruler.length = 30

ruler.display_length #30
=end

#리시버를 생략할 수 있을 때는 그렇게 하는 것이 일반적이다. 
#단 Ruler#length= 같은 메소드 호출의 self는 생략할 수 없다.
#이것을 생략하면 메소드 호출이 아닌 지역 변수 대입으로 처리된다.

=begin
class Ruler
    attr_accessor :length

    def set_default_length
        #self를 생략하고 length = 30과 같은 코드를 호출하면, 메소드가 호출되는 것이 아니라
        #length라는 지역변수가 선언된다.
        self.length = 30
    end
end

ruler = Ruler.new
ruler.set_default_length

puts ruler.length #30
=end

=begin
#초기화
#클래스의 인스턴스를 초기화 하는 경우 initialize라는 메소드를 정의
#다른 언어에서 constructor라고 불리는 것이다.
class Ruler
    attr_accessor :length

    def initialize(length)
        @length = length
    end
end

#이 예에서 initialize로 인스턴스 변수 @length를 설정하고 있다.
#new의 인수로 전달한 값은 initialize의 가인수로 받을 수 있다.

ruler = Ruler.new(30)
puts ruler.length #30
=end

=begin
#클래스 메소드
#모든 값은 객체로 취급된다.
#클래스를 대상으로 메소드 호출 가능
#클래스를 대상으로 호출 할 수 있는 메소드를 클래스 메소드 라고 한다.
#예를 들어 .new도 내장 클래스 메소드이다.
#클래스 메소드는 메소드명 앞에 self를 붙여서 정의한다.

class Ruler
    attr_accessor :length

    def self.pair
        [Ruler.new, Ruler.new]]
    end
end

Ruler.pair # Ruler의 인스턴스를 2개 생성하고 이들을 배열로 변환
=end

#클래스 변수
#클래스와 해당 인스턴스를 스코프로 하는 변수
#@@를 앞에 붙임
#클래스 변수는 클래스 정의 안이나 클래스 메소드에서 참조 할 수 있다.

class MyClass
    @@cvar = "오늘 하루도 간바루비!"

    def cvar_in_method
        puts @@cvar
    end

    def self.cvar_in_class_method
        puts @@cvar
    end
end

my_object = MyClass.new

my_object.cvar_in_method #"오늘 하루도 간바루비!"출력
my_object.cvar_in_class_method #"오늘 하루도 간바루비!"출력

#클래스와 인스턴스라는 서로 다른 구조에서 동일 변수를 사용하는 것은 혼란을 야기하므로 주의해서 사용하도록 하자