//
//  CardModel.swift
//  Learn by Doing
//
//  Created by Alfredo Martinez on 5/17/20.
//  Copyright © 2020 Alfredo Martinez. All rights reserved.
//

import SwiftUI

// MARK: - Card Model

struct Card: Identifiable {
    var id = UUID()
    var title:  String
    var headline:  String
    var imageName:  String
    var callToAction:  String
    var message: String
    var gradientColors:  [Color]
    
}
