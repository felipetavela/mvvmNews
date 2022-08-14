//
//  BrasilViewController.swift
//  mvvmNews
//
//  Created by Caroline Tavela on 13/08/22.
//

import Foundation
import UIKit

class BrasilViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "esportesTableView" {
            
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "br"
                destino.category = "sports"
            }
        }
        
        if segue.identifier == "tecnologiaTableView" {
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "br"
                destino.category = "technology"
            }
        }
        
        if segue.identifier == "negociosTableView" {
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "br"
                destino.category = "business"
            }
        }
    }
}
