struct Bob {
    static func hey(_ input: String) -> String {
        if String(input.filter{ $0 != " " }) == "" {
            return "Fine. Be that way!"
        }
        let t = String(input.characters.filter {("A"..."z").contains($0)})
        if !t.contains(where: {("a"..."z").contains($0)}) && String(t.filter{ $0 != " " }) != "" {
            return "Whoa, chill out!"
        }
        if input.last == "?" {
            return "Sure."
        }
        return "Whatever."
    }
}
