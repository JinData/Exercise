#Jin
rm(list = ls())



#iris 데이터를 이용하여 CART 기법 적용(rpart()함수 이용)하여 분류분석 하시오
#install.packages('rpart')
library(rpart)
# 데이터 가져오기 $ 샘플링
data(iris)
set.seed(3)
idx <- sample(1:nrow(iris), nrow(iris) * 0.7)
tr <- iris[idx, ]
te <- iris[-idx, ]

# 분류모델 생성
ic <- rpart(Species~., data =tr)
ic

# 테스트 데이터를 이용하여 분류
pred <- predict(ic, te, type= 'class')
table(pred, te$Species)

# 예측 정확도 
sum(pred == te$Species) / NROW(te)
(14 + 16 + 13) / nrow(te)

# iris 데이터를 이용하여 조건부 추론 나무 적용(cpart()함수 이용)하여 분류분석 하시오.
# 데이터 가져오기
#install.packages("party")
library(party)
data(iris)

set.seed(5) 
td <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7,0.3))
tr1 <- iris[td==1,] 
te1 <- iris[td == 2, ] 

# 분류 모델 생성
formula <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width

ic2 <- ctree(formula, data = tr1)
ic2

# 테스트 데이터를 이용하여 분류
pre2<-predict(ic2, te1)
pre2

# 시각화
plot(pre2)

plot(ic2)

plot(ic2, type='simple')


# iris데이터 셋의 1~4번 변수를 대상으로 유클리드 거리 매트릭스를 구하여 idist에 저장한 후
#계층적클러스터링을 적용하여 결과를 시각화하시오.

# 유클리드 거리 계산
data(iris)
id<- iris[-5]
head(id)

idist <- dist(id, method = 'euclidean')
head(idist)
# 계층형 군집 분석(클러스터링)
ih <- hclust(idist)

# 분류결과를 대상으로 음수값을 제거하여 덴드로그램 시각화
plot(ih, hang = -1)


# 그룹 수를 3개로 ㅣ정하여 그룹별로 테두리 표시
rect.hclust(ih, k = 3, border ="green")









