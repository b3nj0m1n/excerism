struct Raindrops{
    let i: Int
    
    init(_ i: Int) {
        self.i = i
    }
    
    var sounds: String {
        var s: String? = nil
        if (i % 3 == 0) {
            s = (s ?? "") + "Pling"
        }
        if (i % 5 == 0) {
            s = (s ?? "") + "Plang"
        }
        if (i % 7 == 0) {
            s = (s ?? "") + "Plong"
        }
        return s ?? String(i)
    }
}
