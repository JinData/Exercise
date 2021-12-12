#Jin


#3명의 의상의 과목 점수를 이용하여 데이터 프레임을 생성하여 화면 출력하시오.
sub <- c("Kor","Eng","Mat")
Yoon<-c(95, 80, 75)
Ahn<-c(85, 95, 60)
Lee<-c(70, 80, 95)
x<-data.frame(row.names =sub ,Yoon, Ahn, Lee);x

#수학과목에서 최고점을 구하시오
apply(x[3,], 1, max)

#안중근 의상의 과목 평균 점수를 구하시오
apply(x[2], 2, mean)

#국어 과목의 분산을 구하시오
apply(x[1,],1, var)

#영엉 과목의 표준편차를 구하시오
apply(x[2,], 1, sd)


#RSADBE 패키지에서 제공되는 Bug_Metrics_software 데이터 셋을 대상으로 아래의 조건에 맞는 R코드를 자성하시오.
install.packages("RSADBE")
library(RSADBE)
data("Bug_Metrics_Software")
a<-Bug_Metrics_Software;a

#소프트웨어 발표 후 행 단위 합계를 구하시오
apply(a[,,2], 2, sum)

#소프트웨어 발표 후 열 단위 평균을 구하시오 
apply(a[,,2], 1, mean)

#컬럼 단위로 요약 통계량을 구하시오
apply(Bug_Metrics_Software, 2 , summary)
summary(Bug_Metrics_Software)


#










