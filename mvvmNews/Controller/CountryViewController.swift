
import Foundation
import UIKit

class CountryViewController: UIViewController {
    
    @IBOutlet weak var brasilButton: UIButton!
    
    @IBOutlet weak var usaButton: UIButton!
    @IBOutlet weak var japanButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        brasilButton.backgroundColor = UIColor(patternImage: UIImage(named: "brasilfinal")!).withAlphaComponent(0.8)
        brasilButton.layer.cornerRadius = 10
        
        usaButton.backgroundColor = UIColor(patternImage: UIImage(named: "usafinal")!).withAlphaComponent(0.8)
        usaButton.layer.cornerRadius = 10
        
        japanButton.backgroundColor = UIColor(patternImage: UIImage(named: "finaljapan")!).withAlphaComponent(0.8)
        japanButton.layer.cornerRadius = 10
    
    }
    @IBAction func brasilAction(_ sender: Any) {
        performSegue(withIdentifier: "toBrasil", sender: self)
    }
    @IBAction func usaAction(_ sender: Any) {
        performSegue(withIdentifier: "toUsa", sender: self)
    }
    @IBAction func japanAction(_ sender: Any) {
        performSegue(withIdentifier: "toJapan", sender: self)
    }
}
