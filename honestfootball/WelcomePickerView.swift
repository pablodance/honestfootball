//
//  WelcomePickerView.swift
//  honestfootball
//
//  Created by Paul Dance on 30/10/2015.
//  Copyright © 2015 CavalryCreative. All rights reserved.
//

import UIKit



class WelcomePickerView: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var uiPicker_teams: UIPickerView!
    @IBOutlet weak var lblWelcomeTeam: UILabel!
  
    @IBOutlet weak var uiBtnCont: UIButton!
   
    let pickerData = ["AFC Bournmouth","Arsenal","Brighton","Burnley","Chelsea","Crystal Palace","Everton","Huddersfield","Leicester","Liverpool", "Man City", "Man Utd","Newcastle", "Southampton", "Stoke", "Swansea", "Tottenham",  "Watford", "West Brom", "West Ham Utd" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        uiPicker_teams.dataSource = self
        uiPicker_teams.delegate = self
        uiBtnCont.isEnabled = false
        
        
    }
    
    func textChanged(sender: NSNotification) {
         if ((lblWelcomeTeam.text?.isEmpty) != nil){
            uiBtnCont.isEnabled = true
           
        }
        else {
           uiBtnCont.isEnabled = false
        }
    }
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    //MARK: Delegates
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblWelcomeTeam.text = pickerData[row]
         uiBtnCont.isEnabled = true
    }
    
    @IBOutlet weak var uipick: UIButton!
    @IBAction func btnClick(_ sender: AnyObject) {
        if ((lblWelcomeTeam.text?.isEmpty) != nil){
            
            let defaults = UserDefaults.standard
            defaults.set(lblWelcomeTeam.text, forKey: "team")
            
            
              
                      if let stringOne = defaults.string(forKey: "team") {
                print(stringOne) // Some String Value
            }

        }
        else{
            print("tat");
             
            
        }
    }
    
    
  
    
   


}
