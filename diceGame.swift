
print("This program rolls a dice and you have to guess what face it landed on!")
var counter = 0
var randInt = Int.random(in: 1..<6)
var userGuess = 0
while(true) {

  print("Guess a number between 1 and 6")
  counter += 1
  
  let userInput = readLine()
  userGuess = Int(userInput!) ?? -1
  
  if (userGuess == randInt) {
    break
  } else if (userGuess == -1) {
    print("You must input an integer")
    counter -= 1
  } else if (userGuess < randInt) {
    print("Guess is too low")
  } else if (userGuess > randInt) {
    print("Guess is too high")
  }
}
print("Congratulations!")
print("It took you \(counter) guesses!")
