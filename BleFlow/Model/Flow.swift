//
//  Flow.swift
//  BleFlow
//
//  Created by 吴迪玮 on 2020/11/21.
//

import UIKit

struct Flow: Hashable {
    
    var id: String
    var icon: String
    var title: String
    var color: UIColor
    var steps: [FlowStep]
    
    static func == (lhs: Flow, rhs: Flow) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

struct FlowStep {
    
}
