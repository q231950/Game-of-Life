public class Cell: Equatable {
    public internal(set) var populated: Bool! = false
    var neighbors: [Cell?]
    private(set) lazy var topLeftNeighbor = neighbors[0]!
    private(set) lazy var topCenterNeighbor = neighbors[1]!
    private(set) lazy var topRightNeighbor = neighbors[2]!
    private(set) lazy var rightNeighbor = neighbors[3]!
    private(set) lazy var bottomRightNeighbor = neighbors[4]!
    private(set) lazy var bottomCenterNeighbor = neighbors[5]!
    private(set) lazy var bottomLeftNeighbor = neighbors[6]!
    private(set) lazy var leftNeighbor = neighbors[7]!

    init(neighbors: [Cell?] = [nil, nil, nil, nil, nil, nil, nil, nil], populated: Bool = false) {
        self.neighbors = neighbors
        self.populated = populated
    }
    
    public static func ==(lhs: Cell, rhs: Cell) -> Bool {
        return lhs.populated == rhs.populated && lhs.neighbors == rhs.neighbors
    }

    func copy() -> Cell {
        return Cell(neighbors: neighbors, populated: populated)
    }

    func hasTwoOrThreePopulatedNeighbors() -> Bool {
        return numberOfPopulatedNeighbors() == 3 || numberOfPopulatedNeighbors() == 2
    }

    func hasThreePopulatedNeighbors() -> Bool {
        return numberOfPopulatedNeighbors() == 3
    }

    func hasLessThanOrEqualToThreePopulatedNeighbors() -> Bool {
        return numberOfPopulatedNeighbors() <= 3
    }

    func numberOfPopulatedNeighbors() -> Int {
        return neighbors.filter({ (neighbor) -> Bool in
            return neighbor?.populated == true
        }).count
    }
}
