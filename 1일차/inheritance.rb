#상속
#루비는 단일 상속을 지원
#두 클래스가 상속 관계에 있을 때 상속된 쪽을 슈퍼 클래스(super class)
#상속한 쪽을 서브 클래스(suv class)라고 한다.
#클래스를 상속하려면 클래스 정의시에 <로 슈퍼 클래스를 지정한다. 

#class 서브 클래스 < 슈퍼 클래스
#end

#슈퍼

class Parent
    def hello
        puts "Hello, Parent Class"
    end
end

class Child < Parent
    def hi
        puts "Hello, Child Class"
    end
end

child = Child.new
child.hello #"Hello, Parent Class" 출력
child.hi #"Hello, Child Class" 출력

#서브 클래스에는 슈퍼 클래스에서 정의한 메소드가 상속된다.
#서브 클래스의 인스턴스에서 슈퍼 클래스의 인스턴스 메소드를 호출할 수 있다.
#서브 클래스에서 새로운 메소드를 정의할 수도 있다.

#슈퍼 클래스에서 이미 정의된 메소드를 서브 클래스에서 다시 정의 하는 것을 메소드 오버라이드(override)라고 한다.
class Child < Parent
    def hello 
        super
        #Parent#hello를 호출
        #super를 호출하면 슈퍼클래스에 있는 같은 이름의 메소드를 호출 할 수 있다.
        puts "Hello, Child Class"
    end
end

child = Child.new
child.hello #"Hello, Parent Class", "Hello, Child Class"를 순서대로 출력

#클래스 정의 시에 슈퍼 클래스를 지정하지 않으면 Object 클래스를 상속한 클래스가 정의된다.
#아무것도 상속하지 않은 클래스를 정의할 수 없다.

class Whatever
end

Whatever.superclass #Object 

#Object에는 객체의 기본적인 동작이 정의