#정규표현 식을 이용하면 어떤 문자열이 특정 문자열을 포함하고 있는지 확인하거나,
#문자열에서 특정 패턴과 일치하는 부분을 찾아낼 수 있다.
#정규 표현 구문은 '/pattern/'처럼 양 끝을 슬래시로 표현한다.

#정규 표현을 사용해서 패턴 일치를 구현하려면 ===나 =~를 사용한다.
#===는 정규 표현 패턴과 뮨자열이 일치하는지 확인해서 진릿값을 반환
#~=는 최초로 일치하는 위치를 정수로 반환한다.

pattern = /[0-9]+/ #0부터 9까지

#일치 여부를 진릿값으로 변환

pattern === 'HAL 9000' #true
pattern === 'Space Odyssey' #false

#최초로 일치한 위치를 정수로 반환

puts pattern =~ 'HAL 9000' #4
pattern =~ 'Space Odyssey' #nil

#구분 내에서 식 전개를 사용할 수 있다.

name = '야샤진 아이'
/hello, #{name}/ #/hello, 야샤진 아이/

#정규 표현 기법은 나중에 다시 자세히 함

