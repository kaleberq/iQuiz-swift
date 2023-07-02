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
        navigationItem.hidesBackButton = true
        bottonStartQuiz.layer.cornerRadius = 12.0
    }
}

