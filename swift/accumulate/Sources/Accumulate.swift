extension Array where Element: Any {
    func accumulate<Element>(_ fun : (Element) -> Element) -> [Element] {
        var a = [Element]()
        for i in self {
            a.append(fun(i))
        }
        return a
    }
    
    func accumulate<Element>(_ fun : (Element) -> [Element]) -> [[Element]] {
        //        var a = [Element]()
        //        for i in [0..<self.count] {
        //            a.append(fun(self[i]))
        //        }
        return [[Element]]()
    }
}
