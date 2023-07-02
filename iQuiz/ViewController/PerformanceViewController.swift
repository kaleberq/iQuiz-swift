import UIKit

class PerformanceViewController: UIViewController {

    var punctuation: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var buttonRestarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        configPerformace()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        buttonRestarQuiz.layer.cornerRadius = 12.0
    }
    
    func configPerformace(){
        guard let punctuation = punctuation else { return }
        resultLabel.text = "Você acertou \(punctuation) de \(questions.count) questões"
        
        let percent = (punctuation * 100) / questions.count
        
        percentLabel.text = "Percentual final: \(percent)%"
    }
}
