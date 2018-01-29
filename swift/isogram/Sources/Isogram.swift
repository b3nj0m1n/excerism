import Foundation

class Isogram {
    class func isIsogram(_ i: String) -> Bool {
        guard i != "" else { return true }
        let sortedI: String = String(i.lowercased().sorted().filter { $0 >= "a" && $0 <= "z" })
        for single in sortedI {
            if sortedI.contains(String(single) + String(single)) {
                return false
            }
        }
        return true
    }
}
