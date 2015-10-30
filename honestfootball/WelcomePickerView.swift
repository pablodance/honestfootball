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
    let pickerData = ["Mozzarella","Gorgonzola","Provolone","Brie","Maytag Blue","Sharp Cheddar","Monterrey Jack","Stilton","Gouda","Goat Cheese", "Asiago"]
    override func viewDidLoad() {
        super.viewDidLoad()
        uiPicker_teams.dataSource = self
        uiPicker_teams.delegate = self
    }
    
    
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblWelcomeTeam.text = pickerData[row]
    }
    
    @IBOutlet weak var uipick: UIButton!
    @IBAction func btnClick(sender: AnyObject) {
        if ((lblWelcomeTeam.text?.isEmpty) != nil){
             print(lblWelcomeTeam.text);
        }
        else{
            print(lblWelcomeTeam.text);
            
        }
    }
    
    
  
    
   


}
