import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var titleQuestionLAbel: UILabel!
    
    @IBOutlet var buttonsResponse: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayoutBotton()
    }

    @IBAction func responseButtonPressed(_ sender: UIButton) {
        print(sender.tag)
    }
    
    func configLayoutBotton(){
        navigationItem.hidesBackButton = true
        
        for button in buttonsResponse {
            button.layer.cornerRadius = 12.0
        }
    }
}
