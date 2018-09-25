k = 1

def add(a,b)
    a+b
    #메소드 반환 값은 해당 메소드 안에서 마지막으로 계산되는 식의 값이다.
end

puts add(1,1)

def add1(a,b)
    return a+b
    puts "이 문자열은 출력되지 않는다."
    k = a*b
    a*b
    #return을 쓰면 그 값이 반환 값이 되고 그 후 구문은 실행되지 않는다. 

end

puts add1(1,2)
puts k

#루비는 줄바꿈으로 식을 구별하므로 ;찍을 필요 없다.
# name = 'ruby'; puts name 이렇게 쓸수는 있는데 쓰지 마세요

#인코딩 방식 설정 
#coding: utf-8
#encoding: utf-8
#-*- coding: utf-8
#vim: set filesecond=utf-8:
#주로 맨 앞줄에 지정
#루비 2.0부터는 기본 코딩 방식이 utf-8
