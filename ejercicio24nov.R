
e <- read.csv("C:\Users\usuario\Downloads\e.csv")
colnames(e)

#pregunta1#
pregunta1 <- summarise(group_by(e, branch_office), sum(tiempodeses))

#Pregunta 2#
filter(e,visitor==TRUE)
group_by(e,day_of_week_tz)
count(e,visitor==TRUE)

visitantes <- filter(e,visitor==TRUE)
grupos <- group_by(visitantes,day_of_week_tz)

pregunta2 <- count(visitantes,day_of_week_tz)

sort(pregunta2$n)

#pregunta3#

pregunta3 <- mean(visitantes$tiempodeses)

#pregunta4#

mes <- group_by(visitantes,month_tz)
pregunta4 <- count(mes)

#pregunta5#

hora <- group_by(visitantes,hour_tz)
count(hora)
pregunta5 <- count(hora)