
import Foundation
import UIKit

class UsaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sportsTableView" {
            
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "us"
                destino.category = "sports"
            }
        }
        
        if segue.identifier == "technologyTableView" {
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "us"
                destino.category = "technology"
            }
        }
        
        if segue.identifier == "businessTableView" {
            if let destino = segue.destination as? NewsListTableViewController {
                
                destino.country = "us"
                destino.category = "business"
            }
        }
    }
}
