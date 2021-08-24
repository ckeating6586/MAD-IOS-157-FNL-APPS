import Cocoa

/* Design a Class using the 5 step process that calculates what year your 64th birthday will be in.
 
 Step 1 - Give Your Class A Descriptive Name

 Step 2 - Define Your Properties And Variables (Attributes)

 Step 3 - Initialize Your Properties And Variables

 Step 4 - Define Your Functions/Methods (Behaviours)

 Step 5 - Instantiate Your Class

 Upload your completed work.*/

class MySixtyFourthBirthday {
    var myBirthYear: Int
    
    init(mybirthday: Int) {
        self.myBirthYear = mybirthday
    }
    
    func calculateSixtyFourthBirthdayYear() -> Int {
        return myBirthYear + 64
    }
}

var mySixtyFourthBirthday = MySixtyFourthBirthday(mybirthday:1986)
print(mySixtyFourthBirthday.calculateSixtyFourthBirthdayYear())




