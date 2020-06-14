//
//  rockPaperScissors.swift
//  
//
//  Created by Jessica Coats on 6/14/20.
//

import Foundation
//set up function #1: player choice

func getUserChoice(userInput: String) -> String{
//check value of userInput
if userInput == "rock" || userInput == "paper" || userInput == "scissors"{
 
return userInput
}else
{
return "You can only enter rock, paper, or scissors. Try again."
}
}

//function 2 : computer choice

func getComputerChoice() -> String {
  let random = Int.random(in: 0...2)
  switch random {
    case 0:
    return "rock"
    case 1:
    return "paper"
    case 2:
    return "scissors"
    default:
    return "Something went wrong"
  }
  
}
print(getComputerChoice())

//function 3: determine winner

func findWinner(_ userChoice: String, _ compChoice: String) -> String {
  var decision = "It's a tie"
  switch userChoice {
    case "rock":
    if compChoice == "paper" {
      decision = "The computer won"
  } else if compChoice == "scissors" {
       decision = "The user won."
    }
    case "paper":
    if compChoice == "rock" {
      decision = "The user won"}
    else if compChoice == "scissors"{
      decision = "The computer won"
    }
    case "scissors":
    if compChoice == "rock" {
      decision = "The computer won"}
    else if compChoice == "paper"{
      decision = "The user won"
    }
    default:
    print("Something went wrong")
  }
  return decision
}
let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")

print(findWinner(userChoice, compChoice))

