//
//  Step.swift
//  Fun Fitness
//
//  Created by Keven Atalla on 5/6/21.
//

import Foundation

struct Step: Identifiable {
    let id = UUID()
    let count: Int
    let date: Date
}
