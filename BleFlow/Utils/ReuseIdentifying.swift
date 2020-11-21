//
//  ReuseIdentifying.swift
//  BleFlow
//
//  Created by 吴迪玮 on 2020/11/21.
//

import UIKit

public protocol ReuseIdentifying {
    static var kReuseIdentifier: String { get }
}

public extension ReuseIdentifying {
    static var kReuseIdentifier: String {
        return String(describing: Self.self)
    }
}

extension UICollectionViewCell: ReuseIdentifying {}

extension UITableViewCell: ReuseIdentifying {}

extension UITableViewHeaderFooterView: ReuseIdentifying {}
