### hw_1_question


########################################################### Task 1

# 查看內建資料集: 鳶尾花(iris)資料集
iris

# 使用dim(), 回傳iris的列數與欄數
dim(iris)

# 使用head() 回傳iris的前六列
head(iris)

# 使用tail() 回傳iris的後六列
tail(iris)

# 使用str() 
str(iris)

# 使用summary() 查看iris敘述性統計、類別型資料概述。
summary(iris)

########################################################### Task 2

# 使用for loop 印出九九乘法表
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)
for(i in 1:9){
  for(j in 1:9){
    ans=paste(i,"x",j,"=",i*j,sep="")
    print(ans)
  }
}

########################################################### Task 3

# 使用sample(), 產出10個介於10~100的整數，並存在變數 nums
x=sample(10:100)
nums<-1:10
for(i in 1:10){
  nums[i]=x[i]
}

# 查看nums
nums

# 1.使用for loop 以及 if-else，印出大於50的偶數，並提示("偶數且大於50": 數字value)
# 2.特別規則：若數字為66，則提示("太66666666666了")並中止迴圈。
for(i in 1:10){
  if(nums[i]==66){
    ans=paste("太66666666666了",nums[i],sep="")
    print(ans)
    break
  }
  else if(nums[i]>50&&nums[i]%%2==0){
    ans=paste("偶數且大於50: ",nums[i],sep="")
    print(ans)
  }
}

########################################################### Task 4

# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年
year<-as.integer(readline())
if(year%%400==0){
  print("yes")
}else if(year%%4==0&&year%%100!=0){
  print("yes")
}else{
  print("no")
}

########################################################### Task 5

# 猜數字遊戲
# 1. 請寫一個由電腦隨機產生不同數字的四位數(1A2B遊戲)
# 2. 玩家可重覆猜電腦所產生的數字，並提示猜測的結果(EX:1A2B)
# 3. 一旦猜對，系統可自動計算玩家猜測的次數
moves<-0
randAns<-as.integer(sample(0:9))
#print(randAns)

while(1){
  moves<-moves + 1
  checkAns<-0
  checkSame<-0
  input<-as.integer(readline())
  guessNum<-1:4
  for(i in 4:1){
    guessNum[i]<-input%%10
    input<-input%/%10
  }
  #print(guessNum)
  for(i in 1:4){
    if(randAns[i]==guessNum[i]){
      checkAns<-checkAns + 1
    }
  }
  if(checkAns==4){
    final<-paste("Succeed with ",moves," moves!!")
    print(final)
    break
  }else{
    for(i in 1:4){
      for(j in 1:4){
        if(guessNum[i]==randAns[j]){
          checkSame<-checkSame + 1
        }
      }
    }
    clue<-paste(checkAns,"A",checkSame-checkAns,"B",sep="")
    print(clue)
  }
}
