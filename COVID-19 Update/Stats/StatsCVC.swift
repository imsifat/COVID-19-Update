//
//  ViewController.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 5/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit
import Alamofire
class StatsCVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let cellName1 = ["Total Case"]
    let cellName2 = ["Total Death", "Total Serious", "Total Recovered", "Total Countries Affected"]
    let cellNumber = [1,1,4]
    var inSearchMode = false
    var AllCountryTitle = [String]()
    var countryTitle = ""
    var Cases = 0
    var Deaths = 0
    var TodayCases = 0
    var TodayDeaths = 0
    var Active = 0
    var Critical = 0
    var Recovered = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        registerCell()
        coronaData()
    }
     
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return cellNumber.count
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellNumber[section]
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleCell", for: indexPath) as? TitleCell {
                cell.countryName.text = countryTitle
                return cell
            }
        }else if indexPath.section == 1{
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TotalCase", for: indexPath) as? TotalCase {
                cell.numberOfCase.text = "\(Cases)"
                cell.dailyIncr.text = "+\(TodayCases)"
                return cell
            }
        }else if indexPath.section == 2{
            if indexPath.row == 0{
                if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TotalDeath", for: indexPath) as? TotalDeath {
                    cell.TotalDeaths.text = "\(Deaths)"
                    cell.dailyIncr.text = "+\(TodayDeaths)"
                    return cell
                }
            }else if indexPath.row == 1{
                if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TotalSerious", for: indexPath) as? TotalSerious {
                    cell.TotalSeriousCase.text = "\(Critical)"
                    return cell
                }
            }else if indexPath.row == 2{
                if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TotalRecovered", for: indexPath) as? TotalRecovered {
                    cell.RecoveredNumber.text = "\(Recovered)"
                    return cell
                }
            }else if indexPath.row == 3{
                if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TotalCountriesAffected", for: indexPath) as? TotalCountriesAffected {
                    return cell
                }
            }
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0{
            return CGSize(width: view.frame.width, height: 30)
        }else if indexPath.section == 1{
            return CGSize(width: view.frame.width - 20, height: 200)
        }
        return CGSize(width: (view.frame.width - 40) / 2, height: 120)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func registerCell(){
        collectionView.register(TotalCase.self, forCellWithReuseIdentifier: "TotalCase")
        collectionView.register(TotalDeath.self, forCellWithReuseIdentifier: "TotalDeath")
        collectionView.register(TotalSerious.self, forCellWithReuseIdentifier: "TotalSerious")
        collectionView.register(TotalRecovered.self, forCellWithReuseIdentifier: "TotalRecovered")
        collectionView.register(TotalCountriesAffected.self, forCellWithReuseIdentifier: "TotalCountriesAffected")
        collectionView.register(TitleCell.self, forCellWithReuseIdentifier: "TitleCell")
    }
    
    func coronaData(){
        AF.request("https://coronavirus-19-api.herokuapp.com/countries").responseJSON{response in
            if let dict = response.value as? [Dictionary<String, AnyObject>]{
                if let country = dict[0]["country"] as? String{
                    self.countryTitle = "\(country)"
                    print(country)
                }
                for i in 0..<dict.count {
                    if let countryName = dict[i]["country"] as? String{
                        self.AllCountryTitle.append(countryName)
                    }
                }
                if let cases = dict[0]["cases"] as? Double{
                    self.Cases = Int(cases)
                    print(self.Cases)
                }
                if let todayCases = dict[0]["todayCases"] as? Double{
                    self.TodayCases = Int(todayCases)
                    print(self.TodayCases)
                }
                if let active = dict[0]["active"] as? Double{
                    self.Active = Int(active)
                    print(self.Active)
                }
                if let deaths = dict[0]["deaths"] as? Double{
                    self.Deaths = Int(deaths)
                    print(self.Deaths)
                }
                if let todayDeaths = dict[0]["todayDeaths"] as? Double{
                    self.TodayDeaths = Int(todayDeaths)
                    print(self.TodayDeaths)
                }
                if let recovered = dict[0]["recovered"] as? Double{
                    self.Recovered = Int(recovered)
                    print(self.Recovered)
                }
                if let critical = dict[0]["critical"] as? Double{
                    self.Critical = Int(critical)
                    print(self.Critical)
                }
                
                self.collectionView.reloadData()
                //print(dict)
               // print(self.AllCountryTitle)
                print(dict[0])
            }
        }
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        let searchView: UICollectionReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SearchBarView", for: indexPath)
        return searchView
    }

}


/*country: "World",
cases: 86624909,
todayCases: 488937,
deaths: 1871452,
todayDeaths: 10149,
recovered: 61402132,
active: 23351325,
critical: 107799,
casesPerOneMillion: 11113,
deathsPerOneMillion: 240,
totalTests: 0,
testsPerOneMillion: 0**/
