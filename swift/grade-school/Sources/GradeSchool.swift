class GradeSchool {
    var roster: [Int: [String]] = [:]
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
    
    func addStudent(_ name: String, grade: Int) {
        var names = studentsInGrade(grade)
        names.append(name)
        roster[grade] = names
    }
    
    var sortedRoster: [Int: [String]] {
        var sortedRoster: [Int: [String]] = [:]
        roster.forEach { (key, value) in
            sortedRoster[key] = value.sorted(by: <)
        }
        return sortedRoster
    }
    
}
