
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var table = [String: [String]]()
    for str in strs {
        let sorted = String(str.sorted())
        table[sorted, default: []] += [str]
    }
    return Array(table.values)
}
