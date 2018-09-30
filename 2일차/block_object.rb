#블록 객체는 함수를 객체로 표현한 것이다.

#Proc.new에 블록을 지정하면 블록 객체를 생성할 수 있다.
#가인수는 파이프 기호를 이용해 기술한다.

greeter = Proc.new {|name|
    puts "Hello, #{name}"
}

#Proc#call을 호출하면 처리가 실행된다.
greeter.call 'proc' # Hello, proc
greeter.call 'ruby' # Hello, ruby

#Proc#call의 반환값은 블록 내에서 마지막으로 평가된 값이다.

format = Proc.new {|name|
    name = name.capitalize
    "Hello, #{name}!"
}

puts format.call 'alice' # Hello, Alice!

#블록 객체는 proc 메소드나 lamda 메소드를 사용해서 짧게 기술할 수 있다.(둘이 약간 다르다.)
#또한 루비 1.9이후에는 ->가 자주 사용된다. 
#이 기법에서 가인수는 '->(name)'처럼 기술한다.

by_proc = proc {|name| puts "Hello, #{name}!"}
by_lambda = lambda {|name| puts "Hello, #{name}!"}
by_literal = -> (name) {puts "Hello,#{name}!"}