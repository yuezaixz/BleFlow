//
//  ViewController.swift
//  BleFlow
//
//  Created by 吴迪玮 on 2020/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Design
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Vars
    
    private var flows: [Flow] = []
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }
    
    // MARK: - Setup
    
    func setupData() {
        flows = [
            Flow(icon: "applelogo", title: "测试", color: UIColor(hex: 0xFF0000), steps: [FlowStep(), FlowStep()]),
            Flow(icon: "play.rectangle.fill", title: "测试2", color: UIColor(hex: 0x0000FF), steps: [FlowStep()]),
            Flow(icon: "applelogo", title: "测试3", color: UIColor(hex: 0x00FF00), steps: [FlowStep()]),
            Flow(icon: "applelogo", title: "测试4", color: UIColor(hex: 0xEE2200), steps: [FlowStep(), FlowStep(), FlowStep(), FlowStep()])
        ]
    }
    
    // MARK: - Utils


}

