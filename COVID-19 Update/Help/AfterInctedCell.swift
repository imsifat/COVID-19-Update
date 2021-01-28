//
//  AfterInctedCell.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 20/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//
import UIKit

class AfterInctedCell: UITableViewCell {
    let Description : UILabel = {
        let lbl = UILabel()
        //lbl.textColor = .gray
        lbl.text = "Country: "
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    let Index : UILabel = {
        let lbl = UILabel()
        //lbl.textColor = .gray
        lbl.text = ""
        lbl.font = lbl.font.withSize(17)
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        cellConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConstraints(){
        addSubview(Description)
        addSubview(Index)
        
        Index.translatesAutoresizingMaskIntoConstraints = false
        Description.translatesAutoresizingMaskIntoConstraints = false
      
        Index.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        //Index.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        Index.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        
        Description.leadingAnchor.constraint(equalTo: Index.trailingAnchor, constant: 30).isActive = true
        Description.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        Description.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        Description.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
    }
}
