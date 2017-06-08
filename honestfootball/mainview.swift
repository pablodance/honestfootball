//
//  mainview.swift
//  honestfootball
//
//  Created by Paul Dance on 07/06/2017.
//  Copyright © 2017 CavalryCreative. All rights reserved.
//

import UIKit



class MainView: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    class AlertHelper {
        func showAlert(fromController controller: UIViewController) {
            let alert = UIAlertController(title: "abc", message: "def", preferredStyle: .alert)
            controller.present(alert, animated: true, completion: nil)
        }
    }
   
    
    
       
    }




