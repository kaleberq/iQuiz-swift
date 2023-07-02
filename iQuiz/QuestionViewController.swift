import UIKit

class QuestionViewController: UIViewController {
    
    var punctuation = 0
    var questionNumber = 0

    @IBOutlet weak var titleQuestionLabel: UILabel!
    @IBOutlet var buttonsResponse: [UIButton]!
    
    @IBAction func responseButtonPressed(_ sender: UIButton) {
        let userGotAnswerRight = questions[questionNumber].rightAnswer == sender.tag
        
        if userGotAnswerRight {
            punctuation += 1
            print("acertou")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayoutBotton()
        configQuestion()
    }
    
    func configLayoutBotton(){
        navigationItem.hidesBackButton = true
        titleQuestionLabel.numberOfLines = 0
        titleQuestionLabel.textAlignment = .center
        
        for button in buttonsResponse {
            button.layer.cornerRadius = 12.0
        }
    }
    
    func configQuestion(){
        titleQuestionLabel.text = questions[questionNumber].title
        for button in buttonsResponse {
            let titleButton = questions[questionNumber].responses[button.tag]
            button.setTitle(titleButton, for: .normal)
        }
    }
}
