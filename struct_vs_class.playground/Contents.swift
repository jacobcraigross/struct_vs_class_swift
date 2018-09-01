import UIKit

// automatically initializes itself. These go in the stack.
struct CyborgStruct {
    var name: String
    var role: String
    
    var purpose: String {
        return "\(name) \(role)"
    }
}

// does not auto init, So we gotta do that and they go on the heap.
class CyborgClass {
    var name: String
    var role: String
    
    init (name: String, role: String) {
        self.name = name
        self.role = role
    }
    
    var purpose: String {
        return "\(name) \(role)"
    }
}

// lets create two death machines and put them on the stack.
var cyborg1 = CyborgStruct(name: "DEATH BLADE", role: "EXTERMINATION")
let cyborg2 = cyborg1
cyborg1.name = "DEMON FIRE"
// since these are copies, they are indep of one another. add infinitum.
cyborg1.name
cyborg2.name


// Now the same thing with the class.
var cyborg3 = CyborgClass(name: "HUNTER KILLER", role: "BOOT ON NECK")
let cyborg4 = cyborg3
cyborg3.name = "NUCLEAR CHANT"
// we changed the object on the heap, so both names are now the same. 
cyborg3.name
cyborg4.name

















