class ListOps {
    class func append(_ i: [Int]...) -> [Int] {
        var v = [Int]()
        for element in i {
            for k in element {
                v.append(k)
            }
        }
        return v
    }
    
    class func concat(_ i: [Int]...) -> [Int] {
        var v = [Int]()
        for element in i {
            for k in element {
                v.append(k)
            }
        }
        return v
    }
    
    class func filter(_ i: [Int], _ g: (Int) -> Bool) -> [Int] {
        var v = [Int]()
        for element in i {
            if g(element){
                v.append(element)
            }
        }
        return v
    }
    
    class func length<T>(_ i: [T]) -> Int {
        var v = 0
        for _ in i {
            v += 1
        }
        return v
    }
    
    class func map(_ i: [Int], _ g: (Int) -> Int) -> [Int] {
        var v = [Int]()
        for element in i {
            v.append(g(element))
        }
        return v
    }
    
    class func foldLeft(_ i: [Int], accumulated: Int, combine:(Int,Int)->Int) -> Int {
        var v = accumulated
        for item in i {
            v = combine(v, item)
        }
        return v
    }
    
    class func foldRight<T>(_ i: [T], accumulated: T, combine:(T,T)->T) -> T {
        var v = accumulated
        for item in reverse(i) {
            v = combine(item, v)
        }
        return v
    }
    
    class func reverse<T>(_ i: [T]) -> [T] {
        let lengthI = length(i)
        guard lengthI > 0 else { return i }
        var v = [T]()
        for index in stride(from: lengthI - 1, to: -1, by: -1) {
            v.append(i[index])
        }
        return v
    }
}
