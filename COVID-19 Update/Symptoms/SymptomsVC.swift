//
//  SymptomsVC.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 16/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit

class SymptomsVC: UITableViewController {
    let DiseaseName = ["Fever", "Dry Cough", "Fatigue", "Sputum Production", "Shortness of Breath", "Muscle Pain or Joint Pain", "Sore Throat", "Headache", "Chills", "Nausea or Vomitting", "Nasal Congestion", "Dirrhea", "Haemoptysis", "Conjunctival Congestion"]
    let percentage = [" 87.9% ", " 67.7% ", " 38.1% ", " 33.4% ", " 18.6% ", " 14.8% ", " 13.9% ", " 13.4% ", " 11.6% ", " 5% ", " 4.8% ", " 3.7% ", " 0.9% ", " 0.8% "]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        tableView.estimatedSectionHeaderHeight = 36;
        tableView.register(DiseasesCell.self, forCellReuseIdentifier: "DiseasesCell")
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DiseaseName.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DiseasesCell") as? DiseasesCell{
            cell.DiseaseName.text = DiseaseName[indexPath.row]
            cell.Percentage.text = percentage[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Common symptoms of infection include respiratory symptoms, fever cough, shortness of breath and breathing difficulties. In more severe cases, the infection can cause pneumonia, kidney failure and even death."
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label: UILabel = {
           let lb = UILabel()
            lb.translatesAutoresizingMaskIntoConstraints = false
            lb.text = "Common symptoms of infection include respiratory symptoms, fever cough, shortness of breath and breathing difficulties. In more severe cases, the infection can cause pneumonia, kidney failure and even death."
            lb.textColor = .gray
            lb.textAlignment = .justified
            lb.font = lb.font.withSize(20)
            lb.backgroundColor = .white
            lb.numberOfLines = 0
            return lb
        }()

        let header: UIView = {
            let hd = UIView()
            hd.backgroundColor = .white
            hd.addSubview(label)
            label.leadingAnchor.constraint(equalTo: hd.leadingAnchor, constant: 8).isActive = true
            label.topAnchor.constraint(equalTo: hd.topAnchor, constant: 8).isActive = true
            label.trailingAnchor.constraint(equalTo: hd.trailingAnchor, constant: -8).isActive = true
            label.bottomAnchor.constraint(equalTo: hd.bottomAnchor, constant: -8).isActive = true
            return hd
        }()
        return header
    }
    
//    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        let header = view as! UITableViewHeaderFooterView
//        header.textLabel?.font = header.textLabel?.font.withSize(25)
//        header.textLabel?.numberOfLines = 0
//
//    }
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 50
//    }
}
/*
 Fever 87.9
 Dry cough 67.7
 Fatigue 38.1
 sputum production 33.4
 shortness of breath 18.6
 muscle pain or joint pain 14.8
 sore throat 13.9
 headache 13.6
 chills 11.4
 nausea or vomiting 5.0
 nasal congestion 4.8
 diarrhea 3.7
 haemoptysis 0.9
 conjunctival congestion 0.8
 */
