//
//  TotalCountriesAffected.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 5/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
class TotalCountriesAffected: UICollectionViewCell {
    let TCALBL : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    var TCANumber  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        return lbl
       }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.1606289148, green: 0.164450556, blue: 0.190335542, alpha: 1)
        layer.cornerRadius = 5
        layer.masksToBounds = true
        TCALBL.text = "Total Contries Affected"
        TCANumber.text = "187/195"
        cellConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(TCALBL)
        addSubview(TCANumber)
        
        TCALBL.translatesAutoresizingMaskIntoConstraints = false
        TCANumber.translatesAutoresizingMaskIntoConstraints = false
        
        
        TCALBL.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        TCALBL.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        
        TCANumber.topAnchor.constraint(equalTo: TCALBL.bottomAnchor, constant: 10).isActive = true
        TCANumber.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
    }
    
    
}

