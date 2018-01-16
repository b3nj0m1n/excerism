struct Grains {
    static let board = sequence(first: 1, next: { $0 * UInt64(2) }).prefix(64).map { UInt64($0) }
    
    static var total: UInt64 {
        return board.reduce(0, +)
    }
    
    static func square(_ i: Int) throws -> UInt64 {
        guard i < 65 else { throw GrainsError.inputTooHigh(message: "Input[\(i)] invalid. Input should be between 1 and 64 (inclusive)") }
        guard i > 0 else { throw GrainsError.inputTooLow(message: "Input[\(i)] invalid. Input should be between 1 and 64 (inclusive)") }
        return UInt64(board[i - 1])
    }
    
    enum GrainsError: Error {
        case inputTooHigh(message: String)
        case inputTooLow(message: String)
    }
}
