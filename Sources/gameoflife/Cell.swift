public class Cell: Equatable {
    var neighbors: [Cell?] = [nil, nil, nil, nil, nil, nil, nil, nil]
    
    public static func ==(lhs: Cell, rhs: Cell) -> Bool {
        return lhs === rhs
    }
}
