struct Rect {
    
    let minX: Int
    
    let minY: Int
    
    let maxX: Int
    
    let maxY: Int
    
    init(_ array: [Int]) {
        minX = array[0]
        minY = array[1]
        maxX = array[2]
        maxY = array[3]
    }
}

func isSegmentOverlap(_ min1: Int, _ max1: Int, _ min2: Int, _ max2: Int) -> Bool {
    return !(max1 <= min2 || max2 <= min1)
}

func isRectangleOverlap(_ rect1: Rect, _ rect2: Rect) -> Bool {
    return isSegmentOverlap(rect1.minX, rect1.maxX, rect2.minX, rect2.maxX) &&
        isSegmentOverlap(rect1.minY, rect1.maxY, rect2.minY, rect2.maxY)
}

func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
    let rect1 = Rect(rec1)
    let rect2 = Rect(rec2)
    return isRectangleOverlap(rect1, rect2)
}

assert(isRectangleOverlap([0,0,2,2], [1,1,3,3]) == true, "Failed")
assert(isRectangleOverlap( [0,0,1,1], [1,0,2,1]) == false, "Failed")

