public class Cell: Equatable {
    public internal(set) var populated: Bool! = false
    var neighbors: [Cell?] = [nil, nil, nil, nil, nil, nil, nil, nil]
    private(set) lazy var topLeftNeighbor = neighbors[0]!
    private(set) lazy var topCenterNeighbor = neighbors[1]!
    private(set) lazy var topRightNeighbor = neighbors[2]!
    private(set) lazy var rightNeighbor = neighbors[3]!
    private(set) lazy var bottomRightNeighbor = neighbors[4]!
    private(set) lazy var bottomCenterNeighbor = neighbors[5]!
    private(set) lazy var bottomLeftNeighbor = neighbors[6]!
    private(set) lazy var leftNeighbor = neighbors[7]!
    
    public static func ==(lhs: Cell, rhs: Cell) -> Bool {
        return lhs === rhs
    }
}
