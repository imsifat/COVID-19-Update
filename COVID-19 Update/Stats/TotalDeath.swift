//
//  TotalDeath.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 5/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
class TotalDeath: UICollectionViewCell {
    let TotalDeathsLBL : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    var TotalDeaths  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .red
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        return lbl
       }()
    
    var dailyIncr  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .red
        lbl.text = "+7131"
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.1606289148, green: 0.164450556, blue: 0.190335542, alpha: 1)
        layer.cornerRadius = 5
        layer.masksToBounds = true
        TotalDeathsLBL.text = "Total Deaths"
        TotalDeaths.text = "1862364"
        cellConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(TotalDeathsLBL)
        addSubview(TotalDeaths)
        addSubview(dailyIncr)
        
        TotalDeathsLBL.translatesAutoresizingMaskIntoConstraints = false
        TotalDeaths.translatesAutoresizingMaskIntoConstraints = false
        dailyIncr.translatesAutoresizingMaskIntoConstraints = false
        
        TotalDeathsLBL.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        TotalDeathsLBL.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        
        TotalDeaths.topAnchor.constraint(equalTo: TotalDeathsLBL.bottomAnchor, constant: 10).isActive = true
        TotalDeaths.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        dailyIncr.topAnchor.constraint(equalTo: TotalDeaths.bottomAnchor, constant: 10).isActive = true
        dailyIncr.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
    }
    
    
}
