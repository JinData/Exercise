#Jin
#MASS 패키지에 있는 Animals 데이터 셋에 대해 R의 기본 함수를 이용하여 body컬럼을 대상으로 다음의 
#기술 통계량을 구하시오
#install.packages("MASS")
library(MASS)
ani <- Animals
ani
#Animals 데이터 셋 구조 보기
str(ani)
str(ani$body)

#요약 통계량
summary(ani)
summary(ani$body)

#평균
mean(ani$body)

#표준편차
sd(ani$body)

#Animals 데이터 셋의 빈도수 구하기
table(ani)
table(ani$body)





#다음과 같이 데이터프레임을 구성하였다.
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes'));exam_data

country=c('RUS', 'CHN', 'USA', 'USA', 'USA', 'USA', 'USA', 'USA', 'USA','USA')
exam_data2 =data.frame(country)
#각 이름의 국적은 다음과 같다. 각 개인의 국적을 데이터프레임에 추가하고 데이터프레임을 화면 출력하시오
exam_data3 =cbind(exam_data,exam_data2);exam_data3






korean = data.frame(
  name = c('kim', 'lee'),
  score = c(15, 10),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country =c('KOR', 'KOR'))
#기존의 데이터프레임에 다음의 두사람을 추가하고 업데이트 된 데이터프레임을 화면 출력하시오
exam_data4=rbind(exam_data3,korean);exam_data4

#Quality 항목을 제외한 데이터프레임을 화면 출력하시오
exam_data4[,-4]

#Dima와 Jonas를 제외한 데이터프레임을 화면 출력하시오.
n4<-subset(exam_data4, exam_data4$name != 'Dima' & exam_data4$name != 'Jonas');n4

#이름과 그들의 국적만 화면 출력하시오
data.frame(name = exam_data4$name,country =exam_data4$country)







