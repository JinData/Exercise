#Jin
#2 iris 데이터를 대상으로 다음 조건에 맞게 시각화 하시오.
#조건
#1번 컬럼을 x축으로하고 3번 컬럼을 y축으로 한다.
#5번 컬럼을 색상으로 지정한다.
#차트 제목을 'Scatter plot for iris data"로 추가한다.
#폭(720픽셀)과 높이(480픽셀)를 설정하여 작성한 차트를 
#파일명 'iris_(본인영문이니셜).jpg'인 파일에 저장한다.
library(ggplot2)
data('iris')
head(iris)
ggplot(iris, aes(x=Sepal.Length, y= Petal.Length,  color= Species))+
  geom_point()+
  ggtitle("scatter plot for iris data")


jpeg(width = 720, height = 480, filename = "iris_MHJ.jpg")
ggplot(iris, aes(x=Sepal.Length, y= Petal.Length,  color= Species))+
  geom_point()+
  ggtitle("scatter plot for iris data")
  
dev.off()




#3번
#diamonds데이터 셋을 대상으로
#x축에 carat변수, y축에 price변수를 지정하고, 
#clarity변수를 선 색으로 지정하여 미적 요소 맵핑 객체를 생성한 후
#산점도 그래프 주변에 부드러운 곡선이 추가되도록 레이아웃을 추가하시오.
#작성한 차트를 파일명이 'diamonds_(본인영문이니셜).jpg'인 파일에 저장한다.
data('diamonds')
head(diamonds)



ggplot(diamonds, aes(x=carat, y=price, color= clarity))+
  geom_point()+geom_smooth()


ggsave('diamonds_MHJ.jpg')














