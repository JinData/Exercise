#Jin


#dplyr 패키지와 iris 데이터 넷을 대상으로 아래의 문제를 실행하는 R코드를 작성하여 제출하시오 
#install.packages('dplyr')
library(dplyr)

data(iris)
head(iris)
iris
#iris의 꽃받침의 폭이 3.7 이상의 값만 필터링하여 화면출력하시오.
n1<-iris %>% filter(Sepal.Width >= 3.7);n1

#1의 결과에서 2,4,5 번째 컬럼을 선책하시오.
n2<-n1[c(2,4,5)];n2

#2의 결과에서 2번 컬럼의 값에서 4변 컬럼의 값을 뺀 diff파생변수를 만들고, 앞부분 10개만 출력하시오.
n<-n2 %>% mutate(diff = n2$Sepal.Width-n2$Petal.Width)
n3<-head(n2 %>% mutate(diff = n2$Sepal.Width-n2$Petal.Width),10);n3

##3의 결과에서 꽃의 종 별로 구룹화 하여 Sepal,Width와 Petal.Width 변수의 평균을 계산하시오.
#3번의 결과에서 적용하기 떄문에 꽃을 종류는 하나이다
n3 %>% group_by(Species) %>% summarise(Sepal.Width_mean = mean(Sepal.Width),
                                             Petal.Width_mean = mean(Petal.Width))

#or 3번의 head를적용하지 않고 그냥 출력했을 때
n %>% group_by(Species) %>% summarise(Sepal.Width_mean = mean(Sepal.Width),
                                      Petal.Width_mean = mean(Petal.Width))

# 3의 결과에서 위에서 4번째 꽃의 종은 무엇인가
n3$Species[4]


#=======================================================
getwd()
setwd("C:/Rwork/data")
# 고객 정보 파일 가져오기
customer_data <- read.csv("user_data.csv", header = T)

# 반품 정보 파일 가져오기
return_data<- read.csv('return_data.csv', header = T)

# 고객별 반품사유코드에 따른 파생변수 생성하기
library(reshape2)
customer_return <- dcast(return_data, user_id ~ return_code, length)


names(customer_return) <- c('user_id','제품이상(1)', '원인불명(2)', '변심(3)','기타(4)')

customer_return 


# 고객 정보에 파생변수를 추가하여 고객반품정보를 만들고 맨 앞 6개 데이터 화면에 출력하기
library(plyr)
costomer_return_data <- join(customer_data, customer_return, by = 'user_id')
head(costomer_return_data)



# 고객 반품정보 테이블에서 맨 밑에서 10개를 화면 출력하기
tail(costomer_return_data,10)






















