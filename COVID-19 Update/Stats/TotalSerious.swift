//
//  TotalSerious.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 5/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
class TotalSerious: UICollectionViewCell {
    let TotalSeriousCaseLBL : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    var TotalSeriousCase  : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .yellow
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        return lbl
       }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.1606289148, green: 0.164450556, blue: 0.190335542, alpha: 1)
        layer.cornerRadius = 5
        layer.masksToBounds = true
        TotalSeriousCaseLBL.text = "Total Serious Cases"
        TotalSeriousCase.text = "108237"
        cellConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellConstraints(){
        addSubview(TotalSeriousCaseLBL)
        addSubview(TotalSeriousCase)
        
        TotalSeriousCaseLBL.translatesAutoresizingMaskIntoConstraints = false
        TotalSeriousCase.translatesAutoresizingMaskIntoConstraints = false
        
        
        TotalSeriousCaseLBL.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        TotalSeriousCaseLBL.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        
        TotalSeriousCase.topAnchor.constraint(equalTo: TotalSeriousCaseLBL.bottomAnchor, constant: 10).isActive = true
        TotalSeriousCase.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
    }
    
    
}
