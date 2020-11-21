//
//  ViewController.swift
//  BleFlow
//
//  Created by 吴迪玮 on 2020/11/21.
//

import UIKit

class ViewController: DGBaseViewController {
    
    enum Section {
        case main
    }
    
    // MARK: - IB Design
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Vars
    
    var dataSource: UICollectionViewDiffableDataSource<Section, Flow>! = nil
    
    private var flows: [Flow] = []
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }
    
    // MARK: - Setup
    
    func setupData() {
        flows = [
            Flow(id: "1", icon: "applelogo", title: "测试", color: UIColor(hex: 0xFF0000), steps: [FlowStep(), FlowStep()]),
            Flow(id: "2", icon: "play.rectangle.fill", title: "测试2", color: UIColor(hex: 0x0000FF), steps: [FlowStep()]),
            Flow(id: "3", icon: "applelogo", title: "测试3", color: UIColor(hex: 0x00FF00), steps: [FlowStep()]),
            Flow(id: "4", icon: "applelogo", title: "测试4", color: UIColor(hex: 0xEE2200), steps: [FlowStep(), FlowStep(), FlowStep(), FlowStep()])
        ]
        var snapshot = NSDiffableDataSourceSnapshot<Section, Flow>()
        snapshot.appendSections([.main])
        snapshot.appendItems(flows)
        dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    // MARK: - UI
    
    override func makeUI() {
        collectionView.collectionViewLayout = createLayout()
        configureDataSource()
        
    }
    
    func createLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                             heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 16, leading: 10, bottom: 0, trailing: 10)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .absolute(128))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
//        let spacing = CGFloat(10)
//        group.interItemSpacing = .fixed(spacing)

        let section = NSCollectionLayoutSection(group: group)
//        section.interGroupSpacing = spacing
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6)

        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    func configureDataSource() {
        
        dataSource = UICollectionViewDiffableDataSource<Section, Flow>(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, flowItem: Flow) -> UICollectionViewCell? in
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FlowIndexItemCell.kReuseIdentifier, for: indexPath) as! FlowIndexItemCell
            cell.configureItem(self.flows[indexPath.row])
            return cell
        }

        var snapshot = NSDiffableDataSourceSnapshot<Section, Flow>()
        snapshot.appendSections([.main])
        snapshot.appendItems([])
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
    // MARK: - Utils


}

