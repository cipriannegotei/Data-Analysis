import turtle
import turtle as t
s = turtle.Screen()

s.bgcolor('black')

t.pensize(5)
t.speed(1)
t.color('red')
t.begin_fill()
t.fillcolor('red')
t.left(140)
t.forward(180)
t.circle(-90,200)
t.setheading(60)
t.circle(-90,200)
t.forward(178)
t.end_fill()

t.penup()
t.goto(-145,150)
t.pendown()
t.color('white')
t.write("I love you Tomato Potato!", font=("verdana",15,"bold"))
t.hideturtle()
t.done()
