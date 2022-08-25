//
//  Array+extension.swift
//  Artistep
//
//  Created by Artistep on 2022/08/25.
//

extension Array {
    func get(index: Int) -> Element? {
        if 0 <= index && index < count {
            return self[index]
        } else {
            return nil
        }
    }
}
