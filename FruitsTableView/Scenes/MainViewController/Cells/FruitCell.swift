//
//  FruitCell.swift
//  FruitsTableView
//
//  Created by Ana on 12/20/23.
//

import Foundation
import UIKit
import SnapKit

class FruitCell: UITableViewCell {
    
    let fruitImage = UIImageView()
    let fruitName = UILabel()
    let expirationDate = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(fruitImage)
        addSubview(fruitName)
        addSubview(expirationDate)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        
        fruitImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(50)
        }

        fruitName.snp.makeConstraints { make in
            make.left.equalTo(fruitImage.snp.right).offset(16)
            make.top.equalToSuperview().offset(8)
        }

        expirationDate.snp.makeConstraints { make in
            make.left.equalTo(fruitImage.snp.right).offset(16)
            make.bottom.equalToSuperview().offset(-8)
        }
        
    }
    
    func configure(with fruit: Fruit) {
        fruitImage.image = UIImage(named: fruit.image)
        fruitName.text = fruit.name
        expirationDate.text = "Expires on: \(fruit.expirationDate)"
    }
}
