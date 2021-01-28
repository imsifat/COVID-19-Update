//
//  HelpVC.swift
//  COVID-19 Update
//
//  Created by Imran Sifat on 17/1/21.
//  Copyright © 2021 Imran Sifat. All rights reserved.
//

import UIKit

class HelpVC: UITableViewController{
    let rowNumber = [4,7,5]
    let sectionTitle = [
        "How do you get infected?",
        "how can I protect myself?",
        "I think I'm infected, now what?"
    ]
    var InfectingWays = [
        "When an infected person coughs, sneezes, or talks, droplets or tiny particles called aerosols carry the virus into the air from their nose or mouth. Anyone who is within 6 feet of that person can breathe it into their lungs.",
        
        "Research shows that the virus can live in the air for up to 3 hours. It can get into your lungs if someone who has it breathes out and you breathe that air in. Experts are divided on how often the virus spreads through the airborne route and how much it contributes to the pandemic.",
        
        "Another way to catch the new coronavirus is when you touch surfaces that someone who has the virus has coughed or sneezed on. You may touch a countertop or doorknob that's contaminated and then touch your nose, mouth, or eyes. The virus can live on surfaces like plastic and stainless steel for 2 to 3 days. To stop it, clean and disinfect all counters, knobs, and other surfaces you and your family touch several times a day.",
        
        "Studies also suggest that virus particles can be found in infected people's poop. But experts aren't sure whether the infection can spread through contact with an infected person's stool. If that person uses the bathroom and doesn't wash their hands, they could infect things and people that they touch."
    ]
    
    var PreventionWays = [
        "Clean your hands often. Use soap and water, or an alcohol-based hand rub.",
        "Maintain a safe distance from anyone who is coughing or sneezing.",
        "Wear a mask when physical distancing is not possible.",
        "Don’t touch your eyes, nose or mouth.",
        "Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.",
        "Stay home if you feel unwell.",
        "If you have a fever, cough and difficulty breathing, seek medical attention."
    ]
    
    var AfterInfected = [
        "Most people with COVID-19 have mild symptoms. Your doctor can help you decide if you can care for yourself at home or need treatment, and can also guide you to a location for testing. Always call before you go in person to get care for COVID-19, so that your health care provider can be prepared to protect staff and other patients from potential infection.",
        
        "Stop the spread by staying home and avoiding public areas unless you’re seeking medical care. Isolate yourself as much as possible from the people and pets in your home and use a separate bathroom, if possible. Wear a face mask if you must be in the same room with others (even pets) and when leaving your home for COVID-19 testing and care. If exposed to COVID-19, you should quarantine at home for no less than 14 days. If you think or know you have COVID-19, you should isolate for 10 days after first experiencing symptoms or receiving a positive COVID-19 test; don’t leave home until you go at least 24 hours with no fever (without the use of fever-reducing medications).",
        
        "If you are experiencing mild symptoms, you can most likely find relief with the use of over-the-counter pain relievers and fever reducers, along with lots of rest and hydration. Monitor your symptoms and call your doctor if symptoms worsen and you become concerned. Call 911 or go to the nearest emergency room if you are having trouble breathing or persistent pain or pressure in your chest; are unable to stay awake; have bluish face or lips; or are experiencing confusion.",
        
        "It’s important that you reach out to anyone you may have exposed to COVID-19. Think back to all the places you’ve gone and people you’ve seen starting two days before your symptoms began or you tested positive. You might receive a call from public health contact tracers in your area; it is important that you cooperate by talking to them honestly about where you have been and who you have been with, so that they can help limit the spread.",
        
        "Wash your hands often with soap and water for at least 20 seconds, or clean them using hand sanitizer with at least 60% alcohol. Make sure to wash dishes, glasses, cups, utensils, towels and bedding after use, and avoid sharing them with others in your household. Use effective household cleaners and disinfectants on all surfaces in your room, bathroom and anywhere else you spend time in your home, including countertops, light switches, bathroom and kitchen fixtures, doorknobs, phones, computers, remote controls and handrails."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.setContentOffset( CGPoint(x: 0, y: 0) , animated: true)
        
        registerCell()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return rowNumber.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rowNumber[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "InfectedCell") as? InfectedCell{
                    cell.Description.numberOfLines = 0
                    cell.Index.text = "\(indexPath.row + 1)."
                    cell.Description.text = InfectingWays[indexPath.row]
                    cell.Description.textAlignment = .justified
                
                return cell
            }
        } else if indexPath.section == 1{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "PreventionCell") as? PreventionCell{
                    cell.Description.numberOfLines = 0
                    cell.Index.text = "\(indexPath.row + 1)."
                    cell.Description.text = PreventionWays[indexPath.row]
                    cell.Description.textAlignment = .justified
                return cell
            }
        } else if indexPath.section == 2{
                   if let cell = tableView.dequeueReusableCell(withIdentifier: "AfterInctedCell") as? AfterInctedCell{
                           cell.Description.numberOfLines = 0
                           cell.Index.text = "\(indexPath.row + 1)."
                           cell.Description.text = AfterInfected[indexPath.row]
                           cell.Description.textAlignment = .justified
                       return cell
                   }
               }
        
        return UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if section == 2 {
            view.tintColor = .red
        }else{
            view.tintColor = .darkGray
        }
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
        header.textLabel?.font = header.textLabel?.font.withSize(25)
        header.textLabel?.numberOfLines = 0
        header.textLabel?.adjustsFontSizeToFitWidth = true
        header.textLabel?.minimumScaleFactor = 0.5
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    func tableView(tableView: UITableView,
        heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {

        return CGFloat(UITableView.automaticDimension)
    }
    
    func registerCell(){
        tableView.register(InfectedCell.self, forCellReuseIdentifier: "InfectedCell")
        tableView.register(PreventionCell.self, forCellReuseIdentifier: "PreventionCell")
        tableView.register(AfterInctedCell.self, forCellReuseIdentifier: "AfterInctedCell")
    }
}



