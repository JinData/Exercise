#Jin

#제공된 cleaData.csv 파일 내 데이터에서 나아(age3)와 직위(position)간이 관련성을 단계별로 분석하오

#파일 가저오기(파일 내 데이터 저장)
data<-read.csv('c:/Rwork/data/dataset1/cleanData.csv')
head(data)
     
#코딩 변경(변수 리코딩)
x<- data$position
y<- data$age3

#산점도를 이용하여 변수간의 관련성 보기(plot(x,y)함수 이용)
plot(formula = y~x, data =data)

#결과해석
#position과 age3은 음의 상관관계를 갖는다



#제공된 response.csv 파일 내 데이터에서 작업 유형에 따른 응답 정도에 항가 있는가를 단계별로 검정하시오

#파일 가져오기 (파일 내 데이터 저장)
data2<-read.csv('c:/Rwork/data/dataset1/response.csv')
head(data2)

#코딩변경 - 리코딩
data2$job[data2$job == 1]<-'학생'
data2$job[data2$job == 2]<-'직장인'
data2$job[data2$job == 3]<-'주부'
data2$response[data2$response == 1]<-'무응답'
data2$response[data2$response == 2]<-'낮음'
data2$response[data2$response == 3]<-'높음'
data2

#교차 분할표 작성
#install.packages('gmodels')
library(gmodels)
CrossTable(x = data2$job, y = data2$response)


#mtcars 데이터에서 엔지(vs)을 종속변수로, 연비(mpg)와 변속기종류(am)를 독립변수로 설정하여 
#로지스틱 회귀분석을 실히하시오

#데이터 가저오기
head(mtcars)
mt<-mtcars;mt
dim(mtcars)
names(mtcars)

#로지스틱 회귀분석 실항하고 회귀모델 확인
mt_model <- glm(vs ~mpg+am, data = mt, family = 'binomial');mt_model

#로지스틱 회귀모델 요약정보 확인
summary(mt_model)

head(mt,1)
#로지스틱 회귀식
#y=-12.7051+0.6809*x1-3.0073*x2



#결과해석
#연비가 1씩 증가할수록  대략0.6809증가한다 그러므로 양의 상관관계를 갖는다.
#그에반해 변속기종류가 1이면 대략-3.0073이라는 것을 알 수 있다


#mpg가 30이고 자동변속기(am = 0)일 때 승산(odds)?
odds <- predict(mt_model, newdata=data.frame(mpg=30,am=0),type = 'response')
odds


























