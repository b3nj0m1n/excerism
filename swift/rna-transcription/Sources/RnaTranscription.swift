struct Nucleotide {
    let _v: String
    init(_ v: String) {
        _v = v
    }
    
    func complementOfDNA() throws -> String {
        let rna = ["C":"G","G":"C","T":"A","A":"U"]
        return try _v.map{String($0)}
            .map {
                guard let item = rna[$0] else {
                    throw TranscriptionError.invalidNucleotide
                }
                return item
            }.joined()
    }
    
}

enum TranscriptionError: Error {
    case invalidNucleotide
}
