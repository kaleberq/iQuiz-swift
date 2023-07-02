import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottonStartQuiz: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
        print("O bottao foi precionado")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    func configLayout(){
        bottonStartQuiz.layer.cornerRadius = 12.0
    }
}

