//
//  TotalRecovered.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 5/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
class TotalRecovered: UICollectionViewCell {
    let RecoveredLBL : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    var RecoveredNumber  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        lbl.adjustsFontSizeToFitWidth = true
        lbl.minimumScaleFactor = 0.5
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        return lbl
       }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.1606289148, green: 0.164450556, blue: 0.190335542, alpha: 1)
        layer.cornerRadius = 5
        layer.masksToBounds = true
        RecoveredLBL.text = "Total Recovered"
        RecoveredNumber.text = "60803133"
        cellConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(RecoveredLBL)
        addSubview(RecoveredNumber)
        
        RecoveredLBL.translatesAutoresizingMaskIntoConstraints = false
        RecoveredNumber.translatesAutoresizingMaskIntoConstraints = false
        
        
        RecoveredLBL.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        RecoveredLBL.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        
        RecoveredNumber.topAnchor.constraint(equalTo: RecoveredLBL.bottomAnchor, constant: 10).isActive = true
        RecoveredNumber.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
    }
    
    
}
