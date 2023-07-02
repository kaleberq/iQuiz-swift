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
            
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
            print("acertou")
        }else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configQuestion), userInfo: nil, repeats: false)
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
    
    @objc func configQuestion(){
        titleQuestionLabel.text = questions[questionNumber].title
        for button in buttonsResponse {
            let titleButton = questions[questionNumber].responses[button.tag]
            button.setTitle(titleButton, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
}
