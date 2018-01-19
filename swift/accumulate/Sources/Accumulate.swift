extension Array where Element: Equatable {
    mutating func accumulate<Element>(_ fun : (Element) -> Element) -> Array<Element> {
//        var a = [Element]()
//        for i in [0..<self.count] {
//            a.append(fun(self[i]))
//        }
        return self
    }
}
