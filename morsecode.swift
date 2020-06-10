//
//  morsecode.swift
//  
//
//  Created by Jessica Coats on 6/10/20.
//

import Foundation
//File: morse.swift
//Author: Jessica Coats
//Purpose: Encode and decode messages written in morse code.


//Set Up:

var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

//English to Morse dictionary:
var lettersToMorse: [String : String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]

//Begin encoding:
//Empty String for morse code message:
var morseText = " "

//Loop through characters in englishText
//add letter and space  to morseText
for element in englishText{
  if let morseChar = lettersToMorse["\(element)"]{
    morseText += morseChar + " "
  }
//add three spaces between each word.
  else{
    morseText+="   "
  }
  }

    //print(morseText)
//Decode the message

var decodedMessage = ""
var currMorse = ""
//create array of morse code letters
var morseCodeArray = [String]()

//iteration of each char in secretMessage

for char in secretMessage{
//check for spaces
if char != " "  {
  currMorse.append(char)
  //if not a space, append value of char to currMorse.
}
//if value is a space, else will execute
else
{
  switch currMorse{
    case "":
    currMorse += " "
    case " ":
    //append space to array
    morseCodeArray.append(" ")
    currMorse = ""
    default:
    morseCodeArray.append(currMorse)
    currMorse = ""

  }
}
}
//append final currMorse to morseCodeArray
morseCodeArray.append(currMorse)
// Create an empty dictionary. This will hold morse code values as Keys and their english counter parts as Values
var morseToLetter: [String: String] = [:]

// Iterate through letterToMorse dictionary, add the keys as values and the values as keys to the morseToLetter dictionary
for (letter,morseChar) in lettersToMorse{
  morseToLetter[morseChar]=letter
}

// Go through each element in morseCodeArray and find the text value via the morseToLetter dictionary
for morseValue in morseCodeArray {
  // Check if the value exists in the morseToLetter dictionary
  if let letterChar = morseToLetter[morseValue]{
    //Append the values to decodedMessage
    decodedMessage += letterChar
  }
  //if it's not in the dictionary, it's probably a space
  else {
    // Add a space to decodedMessage
    decodedMessage += " "
  }
}
print (decodedMessage)

