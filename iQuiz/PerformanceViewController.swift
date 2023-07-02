import UIKit

class PerformanceViewController: UIViewController {

    var punctuation: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var buttonRestarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    func configLayout(){
        buttonRestarQuiz.layer.cornerRadius = 12.0
    }
    
}
