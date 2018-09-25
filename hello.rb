def hello(names)
#메소드 선언 = def 메소드명(인수)...end
    names.each do |name|
    #전달받은 배열의 각 요소를 순서대로 출력    
        puts "HELLO #{name.upcase}"
        #배열안의 요소를 대문자로 치환
    end
end

rubies = ['MRI', 'jruby', 'macruby']
#변수명 = 식
hello(rubies)