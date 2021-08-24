import Cocoa
/*
 1) Assign a list of unique random numbers to 5 variables and 5 constants.

  

 2) Place them into an array

  

 3) Sort them into ascending order

  

 4) Store them into a dictionary using key values for easy retrieval of the highest and lowest number.

  

 5) Change a variable or constant and show me it works!

  

 Upload your completed work.
 */

var rogueCurrentHealth = 90
var sword = 78
var spell = 23
var energy = 71
var lives = 15

let maxHealth = 100
let maxSword = 80
let maxSpell = 32
let maxEnergy = 77
let maxLives = 15

var rogueArray = [rogueCurrentHealth,sword,spell,energy,lives,maxHealth,maxSword,maxSpell,maxEnergy,maxLives]


rogueArray.sort(){ $0 < $1}

print(rogueArray)

var rogueCharacter : [Int:Int] = [Int:Int]()

for i in 0...rogueArray.count-1 {
    rogueCharacter[i] = rogueArray[i]
}

print(rogueCharacter[0] ?? "no min")
print(rogueCharacter[rogueArray.count-1] ?? "no max")

rogueCurrentHealth = rogueCurrentHealth - 10
print(rogueCurrentHealth)





