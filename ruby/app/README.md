# ironhack-precurse-exercises

Code a program to solve the following problem: We need a software for the next hackshow to manage the apps that the students will make during the iOS bootcamp The data we are interested in is: name of the app, author, OS of the app, and the score obtained.

Iteration 1: We need a method to get all the data from the object in a string.

app = App.new “ILoveApples”, “Richard Stallman”, “iOS”, 8
app.description
 > Richard Stallman has developed ILoveApples for iOS and he has got 8 points
Note: The constructor is only a suggestion, maybe it could be optimized if you see some values that are always repeated ;)

Iteration 2: Replace the numeric score by a literal. But the object constructor is the same as the previous exercise. We create objects with numerical score but the output is a literal. Score Range [ 0 - 4 ] -> Poor [ 5 - 6 ] -> Good [ 7 - 9 ] -> Very Cool [ 10 ] -> Awesome

app = App.new “ILoveApples”, “Richard Stallman”, “iOS”, 8 
app.evaluation
> Richard Stallman has developed ILoveApples for iOS and he has made an awesome application
Iteration 3: Add a method to compare the score between two apps and it also returns the app with higher value.

app = App.new “ILoveApples”, “Richard Stallman”, “iOS”, 8
other_app = App.new “SmashingCandies”, “Steve Ballmer”, “iOS”, 6
app.compare other_app
> ILoveApples is better than SmashingCandies
