struct DNA {
    let strand: String
    let valid: Set<Character> = ["A", "T", "G", "C"]
    
    init?(strand: String) {
        guard Set(strand.characters).isSubset(of: valid) else { return nil }
        self.strand = strand
    }
    
    func count(_ s: String) -> Int {
        return strand.map { String($0) == s ? 1 : 0 }.reduce(0, +)
    }
    
    func counts() -> [String : Int] {
        return strand.reduce(["T": 0, "A": 0, "C": 0, "G": 0]) { (dict, char) -> [String: Int] in
            var dict = dict
            dict[String(char)] = count(String(char))
            return dict
        }
    }
}
