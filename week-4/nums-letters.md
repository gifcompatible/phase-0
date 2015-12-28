**What does puts do?**

It writes on the screen everything that comes after the word "puts".


**What is an integer? What is a float?**

An integer is a number without a decimal point; a float is the opposite.


**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

It has to do with the result-float division will give you the "right answer", including a remainder that follows a decimal point, and an integer will give you a realistic answer, so if there would be a remainder it will round the answer down.  If you think of division of children-perhaps in a strange alt-world, you can have 4.5 children, but realistically you can only have 4 children.  4.5 would be the result of float division (the correct answer) and 4 is the result of integer division (the realistic answer).


```ruby puts (365*24)```
```ruby puts (24*60) * (365*10)```
