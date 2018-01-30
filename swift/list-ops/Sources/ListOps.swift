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
    
    class func length(_ i: [Int]) -> Int {
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
    
    class func foldLeft(_ i: [Int], accumulated: Int, combine:((Int,Int)->Int)) -> Int {
        var v = accumulated

        return v
    }
    
    class func foldRight<T>(_ i: [T], accumulated: T, combine:(T,T)->T) -> T {
        return accumulated
    }
    
    class func combine(_ i: [Int], accumulated: Int, combine:((Int,Int)->Int)) -> Int {
        return 0
    }
    
    class func reverse(_ i: [Int]) -> [Int] {
        let lengthI = length(i)
        guard lengthI > 0 else { return [Int]() }
        var v = [Int]()
        return v
    }
}
