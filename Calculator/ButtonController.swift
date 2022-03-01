class ButtonController {
    let buttons: [(String, CalcButtonType)]
    var mem: [(CalcButtonType, Int)] = []
    var isNeg: Bool = false
    
    init() {
        self.buttons = [
            ("AC", .SPECIAL), ("+-", .SPECIAL), ("%", .SPECIAL), ("×", .SPECIAL),
            ("7", .NUMBER), ("8", .NUMBER), ("9", .NUMBER), ("÷", .OPERATION),
            ("4", .NUMBER), ("5", .NUMBER), ("6", .NUMBER), ("+", .OPERATION),
            ("1", .NUMBER), ("2", .NUMBER), ("3", .NUMBER), ("-", .OPERATION),
            ("0", .NUMBER_LONG), ("0-None", .TRANSPARENT), (",", .NUMBER), ("=", .OPERATION)
        ]
    }
    
    func updateState() {
        // TODO: Update UI state
    }
    
    func concatNumber(_ num: Int) {
        
    }
}
