struct Year {
    let calendarYear: Int

    var isLeapYear: Bool {
        return yearDivBy(400) || (yearDivBy(4) && !yearDivBy(100))
    }

    private func yearDivBy(_ value: Int) -> Bool {
        return calendarYear % value == 0
    }
}
