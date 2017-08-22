//
//  ViewController.swift
//  VanillaNavFrameworkTest
//
//  Created by Dn on 15/05/2017.
//  Copyright © 2017 Dorin Danilov. All rights reserved.
//

import UIKit
import VanillaNavFramework

class ViewController: UIViewController {
    
    let venueId: UInt64 = 5949
    let savedIdText = "Saved id: "
    
    @IBOutlet weak var textLabel: UILabel!
    @IBAction func getSaved(_ sender: Any) {
        if  let id =  SaveDestinationManager.getSavedMarkerId(forVenue: venueId) {
            self.textLabel.text = String(describing: id)
        }
    }
    @IBAction func save(_ sender: Any) {
        let nav = SaveDestinationVC(venueId: venueId)
        self.navigationController?.pushViewController(nav, animated: true)
    }
    @IBAction func deleteTap(_ sender: Any) {
        SaveDestinationManager.deleteSavedMarkerId(forVenue: venueId)
        
        let id =  SaveDestinationManager.getSavedMarkerId(forVenue: venueId)
        
        self.textLabel.text = savedIdText + String(describing: id)
    }
    @IBAction func navigate(_ sender: Any) {
        
        if let id = SaveDestinationManager.getSavedMarkerId(forVenue: venueId) {
            let nav = NavigationVC(venueId: venueId, destinationId: id)
            self.navigationController?.pushViewController(nav, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textLabel.text = savedIdText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if  let id =  SaveDestinationManager.getSavedMarkerId(forVenue: venueId) {
            self.textLabel.text = savedIdText + String(describing: id)
        }
    }
    
}

