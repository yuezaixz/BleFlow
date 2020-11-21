//
//  FlowIndexItemCell.swift
//  BleFlow
//
//  Created by 吴迪玮 on 2020/11/21.
//

import UIKit

class FlowIndexItemCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stepCountLabel: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureItem(_ flowItem: Flow) {
        self.titleLabel.text = flowItem.title
        self.stepCountLabel.text = "\(flowItem.steps.count)个操作"
        self.containerView.backgroundColor = flowItem.color
        self.logoImageView.image = UIImage(systemName: flowItem.icon)
    }

}
