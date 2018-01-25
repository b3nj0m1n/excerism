final class ETL {
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        var new:[String: Int] = [:]
        old.forEach { key, value in
            value.forEach { newKey in
                new[newKey.lowercased()] = key
            }
        }
        return new
    }
}
