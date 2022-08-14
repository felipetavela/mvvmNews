
import Foundation
import UIKit

class CountryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
