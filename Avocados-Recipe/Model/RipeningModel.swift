//
//  RipeningModel.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-13.
//

import SwiftUI

struct Ripening: Identifiable{
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

