def hello(names)
#메소드 선언 = def 메소드명(인수)...end
    names.each do |name|
    #전달받은 배열의 각 요소를 순서대로 출력    
    #메소드 호출 = 리시버.메소드명   
    #|..|부분은 가인수 가인수 = 함수 정의식에 사용되는 인수 실인수 = 함수를 호출할때 실제 사용되는 인수    
    #블록이란?     
        puts "HELLO #{name.upcase}"
        #배열안의 요소를 대문자로 치환
        #문자열은 큰따음표 작은따음표 둘다 감쌀수 있으나 큰따음표의 경우는 #{..}로 감싸는 루비코드가 포함 가능
        #메소드 호출시 괄호 생략 가능 puts('hello') === puts 'hello'
        
    end
end

rubies = ['MRI', 'jruby', 'macruby']
#변수명 = 식

hello(rubies)