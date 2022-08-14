//
//  JapanViewController.swift
//  mvvmNews
//
//  Created by Caroline Tavela on 13/08/22.
//

import Foundation
import UIKit

class JapanViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
