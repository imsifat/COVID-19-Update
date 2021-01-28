//
//  DiseasesCell.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 16/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
class DiseasesCell: UITableViewCell {
    let DiseaseName : UILabel = {
        let lbl = UILabel()
        //lbl.textColor = .gray
        lbl.text = "Country: "
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    let Percentage : UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .red
        lbl.layer.masksToBounds = true
        lbl.layer.cornerRadius = 2
        lbl.textColor = .white
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellConstraints()
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
       func cellConstraints(){
           addSubview(DiseaseName)
           addSubview(Percentage)
           
           DiseaseName.translatesAutoresizingMaskIntoConstraints = false
           Percentage.translatesAutoresizingMaskIntoConstraints = false
           
           
           DiseaseName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
           DiseaseName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
           
           
           Percentage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
           Percentage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
           
       }
}
