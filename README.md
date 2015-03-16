# orange_trees
Ruby exercise at Ironhack to learn the syntax

Let's create a toy program to model an orange tree growing over the years. We plant the orange tree, wait for it to bear some fruit, and then pick all the oranges as soon as it does.

##Learning Goals
We're modeling a simple system with two objects: orange trees and oranges. We want you to get familiar with defining simple classes and relating them to each other. You'll also learn more about variable scope, and theattr_reader/writer/accessor methods.

##External Resources
-	Video: Variable Scopes in Ruby
-	StackOverflow: Why use Ruby's attr_accessor, attr_reader, and attr_writer?
-	StackOverflow: What is attr_accessor in Ruby?

##Objectives
Implement the OrangeTree and Orange classes
Use attr_reader, attr_writer, and/or attr_accessor so that we can call tree.height and tree.age to get a tree's height or age, respectively. Which of the three attr_ methods should you be using and why?
Do the same with the Orange class so that we can call orange.diameter to get an orange's diamater.
##Implement Aging
As a tree ages, it grows taller. Eventually it starts bearing fruit and stops growing — not necessarily at the same time. Some years later, the tree dies and can bear fruit no more!
Implement an OrangeTree#age! instance method that will age your tree one year. Each year the tree should get some amount taller, and then eventually stop growing. You can decide when the tree stops growing.
Later, it should die. At this point your OrangeTree class should:
1.	Have an OrangeTree#height method which returns the tree's current height
2.	Have an OrangeTree#age method which returns the tree's current age
3.	Have an OrangeTree#age! method which ages the tree one year and grows the tree a little, if it's able to grow
4.	Have an OrangeTree#dead? method which returns true if the tree has died
##Implement Orange-picking
After some number of years — you decide — the orange tree starts to bear fruit. Write a method OrangeTree#any_oranges?which returns true if there are any oranges on the tree and false otherwise.
Also write a method OrangeTree#pick_an_orange! which will return one of the oranges on the tree (an instance of theOrange class). If you try to pick an orange when there are no oranges left, your code should raise a NoOrangesError(defined in the source code).
You'll also have to implement the Orange class at this point, including Orange.new and Orange#diameter.
