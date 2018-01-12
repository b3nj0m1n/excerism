class Squares {
    let _square: Int
    init(_ square: Int) {
        _square = square
    }

    var sumOfSquares: Int {
        return (1..._square).map{$0^2}.reduce(0, +)
    }

    var squareOfSums: Int {
        return (1..._square).reduce(0, +)^2
    }

    var differenceOfSquares: Int {
        return abs(sumOfSquares - squareOfSums)
    }

}