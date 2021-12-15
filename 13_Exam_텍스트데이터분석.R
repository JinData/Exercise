rm(list=ls())
#Jin
#install_github("lchiffon/wordcloud2")
# install.packages("https://cran.rstudio.com/bin/windows/contrib/3.4/KoNLP_0.80.1.zip",repos = NULL)
# install.packages ('tm')

# 제공된 데이터에서 빈도수가 2회 이상 단어를 이용하여 단어 구름으로 시각화 하시오.(wordcloud2사용)
library(wordcloud2)
library(KoNLP)
library(tm)

#데이터블러오기
getwd()
setwd('c:/Rwork/dataset5/')

dk <- file("DrKing.txt", encoding = "UTF-8")
dk
dk_data<-readLines(dk)
head(dk_data)

#사용자 정의 함수 활용
f <- function(x) { paste(extractNoun(as.character(x)), collapse = " ") }
dk_nouns <- sapply(dk_data, f)
dk_nouns[1]

#단어로 말뭉치 생성
mc <-Corpus(VectorSource(dk_nouns))
mcp <- tm_map(mc, removePunctuation)
mcp <- tm_map(mcp, removeNumbers)
mcp <- tm_map(mcp, tolower)
mcp <- tm_map(mcp, removeWords, stopwords('english'))
inspect(mcp)

#단어 선별과 평서문 변환
mcpt <-
  TermDocumentMatrix(mcp, 
                     control = list(wordLengths = c(4, 16)))
mcpt
md <- as.data.frame(as.matrix(mcpt))
dim(md )

#단어 출현 빈도수
wr<- sort(rowSums(md), decreasing = TRUE)
wr[1:10]

#단어 이름과 빈도수로 data.frame 생성
myNames <- names(wr)
myNames
df <- data.frame(word = myNames, freq = wr)
df
df <- subset(df, df$freq >=2)
df                  

#단어 구름 시각화
wordcloud2(data=df, size=0.7, color='random-light', backgroundColor = "black")




