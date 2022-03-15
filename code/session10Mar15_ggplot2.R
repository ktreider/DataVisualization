#Session 10 - ggplot2

#---ggplot2--------------------------------------------------------------------
#ggplot(data = data.frame, mapping=aes(x= vari, y=vari), ...)  + geom_name()

library(ggplot2)

#example with mpg dataset
ggplot(mpg, aes(x=manufacturer, y=hwy, color=class)) + 
      geom_point() + 
      theme(axis.text.x = element_text(color = "blue", size = 8, angle = 90)) +
      labs(x="Manufacturer", y="Highway MPG", title="Highway MPG by Manufacturer",
           subtitle="Colored by Car Class")



#---examples-------------------------------------------------------------------
#ppt example
ggplot(mpg, aes(displ, hwy, size=trans)) + geom_point()


#another example
ggplot(mpg, aes(displ, hwy, color=factor(cyl))) + geom_point()



#---facet----------------------------------------------------------------------
ggplot(mpg, aes(displ, hwy, color=class)) + geom_point() + facet_wrap(~class)



#---smooth---------------------------------------------------------------------
ggplot(mpg, aes(displ, hwy)) + geom_point() + geom_smooth()




#---other ex-------------------------------------------------------------------
ggplot(mtcars, aes(wt, mpg)) + 
  geom_point(aes(color=cyl, size=qsec), alpha = 0.5)


