
import Foundation
import UIKit

class UsaViewController: UIViewController {
    
    @IBOutlet weak var sportsButton: UIButton!
    
    @IBOutlet weak var techButton: UIButton!
    @IBOutlet weak var businessButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sportsButton.backgroundColor = UIColor(patternImage: UIImage(named: "sport")!).withAlphaComponent(0.5)
        
        sportsButton.layer.cornerRadius = 10
        
        techButton.backgroundColor = UIColor(patternImage: UIImage(named: "tech")!).withAlphaComponent(0.5)
        techButton.layer.cornerRadius = 10
        
        businessButton.backgroundColor = UIColor(patternImage: UIImage(named: "business")!).withAlphaComponent(0.5)
        businessButton.layer.cornerRadius = 10
        
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
