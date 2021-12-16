##Jin

#다음의 R코드를 Python 코드로 수정하시오
#num=100
#if(num >100){
#print('100보다 큽니다')
#}else is (num>50){
#print('50보다 큽니다.')
#else{
#print('50이하입니다.)
num = 100
if num > 100 :
    print('100보다 큽니다.')
elif num>50:
    print('50보다 큽니다.')
else:
    print('50이하입니다')
#==============================================================================================

#for와 range를 이용하여 구구단을 만들고 구구단의 겨과를 프린트하는 아래의 파이썬 코드를 아래와 같이 만들었는데,
#실행이 되지 않는다. 실행되도록 코드를 수정하라
#for i in range(2,10)
#for j in range(1,10)
#print(i*j, end=" ")
#print('')


for i in range(2,10):
    for j in range(1,10):
        print(i*j, end=' ')
        print('')
#또는 문제의 의미를 잘모르겠어서 구구단을 따로 만들어 보았습니다 ========================================

for i in range(2, 10):
    print(' {} 단 '.format(i))
    for j in range(1, 10):
        print('%d * %d = %d' % (i, j, i * j))

#=============================================================================

#아래의 멀티라인 문자열을 대상으로 다음을 실행하시오
#'It ain't over
#til it's over.
#by Yogi Berra'

#공백을 분류 한줄의 문장 한 개로 출력 도도록 coding 하시오
string="""It ain't over 
til it's over.
by Yogi Berra"""
#주어 상관없음 ain't 쓸수있음
words = []

for word in string.split():
        words.append(word)
        sen = ' '.join(words)
print(sen)

#문자열 철 함수를 이용하여 Lovely 라는 단어가 출력되도록 coding 하시오
sen.find('l')
sen.find('o')
sen.find('v')
sen.find('e')
sen.find('l')
sen.find('y')
m=[sen[16].upper(),sen[9],sen[10],sen[11],sen[16],sen[30]]
m2=''.join(m)
print(m2)











