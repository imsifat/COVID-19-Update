//
//  TitleCell.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 22/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
class TitleCell: UICollectionViewCell{
    
    let title : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.text = "Country: "
        lbl.font = lbl.font.withSize(20)
        return lbl
    }()
    let countryName : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .red
        lbl.font = lbl.font.withSize(25)
        return lbl
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        //backgroundColor = .red
        cellConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(title)
        addSubview(countryName)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        countryName.translatesAutoresizingMaskIntoConstraints = false
        
        
        title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        countryName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        countryName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
