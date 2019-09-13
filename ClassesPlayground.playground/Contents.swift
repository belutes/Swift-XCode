import UIKit

class Spaceship{
    // When functions are inside classes
    // they become a "method" of that class.
    
    // Declare property fuelLevel (property is a variable within a class)
    var fuelLevel = 100 // Here the property is available within
    // the entire scope of the class and can be accessed from within methods in the class.
    
    func cruise(){
        // Code initiate cruising
        
    }
    
    func thrust(){
        // Code initiate rocket thrusters
        
    }
    
}

var myShip:Spaceship = Spaceship() 

myShip.thrust()
myShip.cruise()
myShip.fuelLevel = 10 // Here I change the value of fuelLevel from 100 to 10
print(myShip.fuelLevel)

