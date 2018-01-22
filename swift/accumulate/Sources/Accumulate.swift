import Foundation

extension Array {
    func accumulate<T>(_ fun : (T) -> T) -> [T] {
        var a = Array<T>()
        for i in self {
            a.append(fun(i as! T))
        }
        return a
    }
    
    func accumulate<T>(_ fun : (T) -> [T]) -> [[T]] {
        var a = Array<Array<T>>()
        for i in self {
            a.append(fun(i as! T))
        }
        return a
    }
}
