import Foundation

class Gigasecond {
    let description: String

    init?(from timestamp: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        let date = dateFormatter.date(from: timestamp)!
        description = dateFormatter.string(from: date.addingTimeInterval(pow(10, 9)))
    }
}
