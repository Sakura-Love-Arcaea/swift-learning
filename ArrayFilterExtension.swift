extension Array {
    func filter<T>(on paths: [KeyPath<Element, T>], where predicate: (T) -> Bool) -> [Element] { // 我希望pre的T是跟Key的第二個參數類型是一樣的
        filter { element in
            paths.contains { path in 
                predicate(element[keyPath: path])
            }
        }
    }
}
