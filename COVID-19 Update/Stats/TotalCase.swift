//
//  TotalCase.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 5/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
class TotalCase: UICollectionViewCell {
    let totalCase : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = lbl.font.withSize(35)
        return lbl
    }()
    var numberOfCase  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        lbl.font = UIFont.boldSystemFont(ofSize: 50)
        return lbl
       }()
    var dailyIncrLBL  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.text = "Daily Increment: "
        return lbl
    }()
    var dailyIncr  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return lbl
       }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.1606289148, green: 0.164450556, blue: 0.190335542, alpha: 1)
        layer.cornerRadius = 5
        layer.masksToBounds = true
        totalCase.text = "Total Confirm Cases"
        numberOfCase.text = "86183973"
        dailyIncr.text = "+359885"
        cellConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(totalCase)
        addSubview(numberOfCase)
        addSubview(dailyIncr)
        addSubview(dailyIncrLBL)
        totalCase.translatesAutoresizingMaskIntoConstraints = false
        numberOfCase.translatesAutoresizingMaskIntoConstraints = false
        dailyIncr.translatesAutoresizingMaskIntoConstraints = false
        dailyIncrLBL.translatesAutoresizingMaskIntoConstraints = false
        
        totalCase.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        totalCase.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        
        numberOfCase.topAnchor.constraint(equalTo: totalCase.bottomAnchor, constant: 10).isActive = true
        numberOfCase.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        dailyIncr.topAnchor.constraint(equalTo: numberOfCase.bottomAnchor, constant: 10).isActive = true
        dailyIncr.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        dailyIncrLBL.topAnchor.constraint(equalTo: numberOfCase.bottomAnchor, constant: 10).isActive = true
        dailyIncrLBL.trailingAnchor.constraint(equalTo: dailyIncr.leadingAnchor, constant: -3).isActive = true
    }
    
    
}
