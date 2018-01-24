class GradeSchool {
    init() {
        roster = Dictionary<Int, [String]> ()
    }
    
    var roster: Dictionary<Int, [String]>
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? [String]()
    }
    
    func addStudent(_ name: String, grade: Int) {
        var names = studentsInGrade(grade)
        names.append(name)
        roster[grade] = names
    }
    
    var sortedRoster: Dictionary<Int, [String]> {
        var sortedRoster = Dictionary<Int, [String]> ()
        roster.forEach { (key, value) in
            sortedRoster[key] = value.sorted(by: <)
        }
        return sortedRoster
    }
    
}
