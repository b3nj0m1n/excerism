func toLimit(_ limit: Int, inMultiples multiples: Array<Int>) -> Int {
    if limit == 0 { return 0 }
    let validMultiples = multiples.filter {$0 != 0}
    return (1..<limit).filter { number in
            validMultiples.contains { multiple in
               number % multiple == 0
            }
        }.reduce(0, +)
}
