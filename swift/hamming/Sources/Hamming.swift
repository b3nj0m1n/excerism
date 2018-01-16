struct Hamming {
    static func compute(_ t: String, against: String) -> Int? {
        guard t.count == against.count else { return nil }
        if t == against { return 0 }
        return zip(Array(t), Array(against)).map { $0.0 == $0.1 ? 0 : 1 }.reduce(0, +)
    }
}
