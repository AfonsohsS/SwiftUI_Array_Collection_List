//
//  Array_Ext.swift
//  Grid_Demo
//
//  Created by Afonso Sabino on 1/13/20.
//  Copyright © 2020 Afonso Sabino. All rights reserved.
//

import Foundation

extension Array {
    
    /// Func to create a collection of items like Collection List.
    func chunking(to nColumns: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: nColumns).map {
            Array(self[$0..<Swift.min($0 + nColumns, count)])
        }
    }
}
