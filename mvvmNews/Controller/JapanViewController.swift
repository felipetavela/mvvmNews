//
//  JapanViewController.swift
//  mvvmNews
//
//  Created by Caroline Tavela on 13/08/22.
//

import Foundation
import UIKit

class JapanViewController: UIViewController {
    
    @IBOutlet weak var sportsButton: UIButton!
    
    @IBOutlet weak var techButton: UIButton!
    
    @IBOutlet weak var businessButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sportsButton.backgroundColor = UIColor(patternImage: UIImage(named: "sport")!).withAlphaComponent(0.6)
        
        sportsButton.layer.cornerRadius = 10
        
        techButton.backgroundColor = UIColor(patternImage: UIImage(named: "tech")!).withAlphaComponent(0.5)
        techButton.layer.cornerRadius = 10
        
        businessButton.backgroundColor = UIColor(patternImage: UIImage(named: "business")!).withAlphaComponent(0.5)
        businessButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sportsjpTableView" {
            
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "jp"
                destino.category = "sports"
            }
        }
        
        if segue.identifier == "techonologyjpTableView" {
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "jp"
                destino.category = "technology"
            }
        }
        
        if segue.identifier == "businessjpTableView" {
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "jp"
                destino.category = "business"
            }
        }
    }
}
