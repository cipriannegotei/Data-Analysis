from random import randint
import turtle

class Point:

  def __init__(self, x, y):
    self.x = x
    self.y = y

  def falls_in_rectangle(self, rectangle):
    if rectangle.point1.x < self.x < rectangle.point2.x and \
    rectangle.point1.y < self.y < rectangle.point2.y:
      return True
    else:
      return False


class Rectangle:

  def __init__(self, point1, point2):
    self.point1 = point1
    self.point2 = point2

  def area (self):
    return (self.point2.x - self.point1.x) * (self.point2.y - self.point1.y)

class GenerateRectangle(Rectangle):

  def draw(self, canvas):

    # Go to a certain coordinate
    canvas.penup()
    canvas.goto(self.point1.x, self.point1.y)

    canvas.pendown()
    canvas.forward(self.point2.x - self.point1.x)
    canvas.left(90)
    canvas.forward(self.point2.y - self.point1.y)
    canvas.right(90)
    canvas.forward(self.point1.x - self.point2.x)
    canvas.left(90)
    canvas.forward(self.point1.y - self.point2.y)

class GeneratePoint(Point):

  def draw(self, canvas):
      canvas.penup()
      canvas.goto(self.x, self.y)
      canvas.pendown()
      canvas.dot(5, "green")


rectangle = GenerateRectangle( Point(randint(0,200), randint(0,200)),\
                                Point(randint(200,400), randint(200,400)))

print("The rectangle coordinates are:", rectangle.point1.x, ", ", rectangle.point1.y, "and", rectangle.point2.x, ", ", rectangle.point2.y)

user_point = GeneratePoint(float(input("Your X value is: ")), float(input("Your Y value is: ")))

user_area = float(input("Which is the rectangle area? "))

print("The point you chose falls in the rectangle? ", user_point.falls_in_rectangle(rectangle))

print("Your answer was: ")
if rectangle.area() == user_area:
  print("Correct")
else:
  print("Incorrect")

my_turtle = turtle.Turtle()
rectangle.draw(canvas=my_turtle)
user_point.draw(canvas=my_turtle)

turtle.done()