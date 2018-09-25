#if는 부여한 조건식이 참이면 if안에 있는 조건식을 실행한다.

=begin
if true
    puts "ping"
end
=end

#조건식에 문자열이나 수치를 부여 할 수도 있다.
#루비에서는 false와 nil이외의 모든 값은 참으로 친다 (0은 참이다!)

=begin
str = "ping"

if str
    puts "True"
end
=end

#if에 부여한 조건문이 거짓일 경우에 실행하고 싶은 처리는 else에 기술한다.

=begin
if false
    puts "의사양반"
else
    puts "심영"
end
=end

#복수의 조건문을 분기하고 싶을 경우에는 elsif를 사용
#횟수에 제안이 없다.

n = 2

if n.zero?
    puts "0이 였다."
elsif n.even?
    puts "짝수 였다."
elsif n.odd?
    puts "홀수 였다."
else
    puts "PROFIT!"
end