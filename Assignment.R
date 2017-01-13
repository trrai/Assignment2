# Tejveer Rai Assignment 2
# Section AE

# PART 1. INTRODUCTIONS
#Load stringr library
library(stringr)

#Create a numeric variable my.age that is equal to your age.
my.age<-18

#Create a variable my.name that stores your name
my.name<-"Tejveer"

#Define a function called MakeIntroduction 
MakeIntroduction<-function(name,age){
  intro<-paste("Hello, my name is",name,"and I'm", age, "years old.")
  return(intro)
}

#Create a variable my.intro by passing your variables my.name and my.age into your MakeIntroduction() function
my.intro<-MakeIntroduction(my.name,my.age)

#Create a variable casual.intro by using the sub() function 
casual.intro<-sub("Hello, my name is","Hey, I'm", my.intro);

#Create a variable capital.intro
capital.intro<-str_to_title(my.intro)

#Create a variable intro.e.count 
intro.e.count<-str_count(my.intro,"e")


#PART 2. BIRTHDAYS

#Use the as.Date() (Links to an external site.) function to create a variable spring.break 
spring.break<-as.Date("03/18/17", "%m/%d/%y")
print(spring.break)

#Create a variable today that represents today's date. 
today<-Sys.Date()

#Create a variable days.to.break that is how many days until break 
days.to.break<-spring.break-today
print(days.to.break)

#Define a function called MakeBirthdayIntro

#ASK IF THIS IS RIGHT !
MakeBirthdayIntro<-function(name,age,bday){
  N<-bday-today
  NEW.AGE<-age+1
  birthday.intro<-paste(MakeIntroduction(name,age),"In",N,"days I'll be",NEW.AGE)
  return(birthday.intro)
}

#Create a variable my.bday.intro by calling your MakeBirthdayIntro() function 
my.bday.intro<- MakeBirthdayIntro(my.name, my.age, as.Date("06/17/17", "%m/%d/%y"))
print(my.bday.intro)


#PART 3. Books

#Create a variable books that is a vector of the names of six books you like
books<-c("The Cat in the Hat", "Green Eggs and Ham", "Oh, the Places You'll Go!", 
         "The Lorax", "One Fish Two Fish Red Fish Blue Fish", "Horton Hears a Who!")
print(books)

#Create a variable top.three.books that only contains the first three movies in your books vector
top.three.books<-books[1:3]
print(top.three.books)

#Create a variable book.reviews that has the phrase "is a great read!" 
book.reviews<-paste(books,"is a great read!")
print(book.reviews)

#Create a variable books.without.four that contains the first three, 5th, and 6th books from your books vector.
without.four<-c(1,2,3,5,6)
books.without.four<-books[without.four]
print(books.without.four)

#Create a variable long.titles 
long.titles<-books[nchar(books)>15]
print(long.titles)


#PART 4. SQUARES
#Create a variable numbers that contains the numbers 1 to 201.
numbers<- (1:201)
print(numbers)

#Create a variable squared.numbers 
squared.numbers<-numbers*numbers

#Create a variable squared.mean that contains the mean (average) value of the squared vector
squared.mean<-mean(squared.numbers)
print(squared.mean)

#Create a variable squares that contains only the values in numbers which are squares 
is.square<-(sqrt(numbers) == round(sqrt(numbers)))
squares<-numbers[is.square]
print(squares)

