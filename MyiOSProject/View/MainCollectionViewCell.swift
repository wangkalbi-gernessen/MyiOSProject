//
//  MainCollectionViewCell.swift
//  MyiOSProject
//
//  Created by Kazunobu Someya on 2021-02-03.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    let label: UILabel = {
        let lab = UILabel()
        return lab
    }()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      contentView.addSubview(label)
      contentView.backgroundColor = .systemTeal
      
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
}
