import Foundation

struct Question {
    var title: String
    var responses: [String]
    var rightAnswer: Int
}

let questions: [Question] = [
    Question(
        title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
        responses: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
        rightAnswer: 2
    ),
    Question(
        title: "Quando foi lançado avatar 2",
        responses: ["2014", "2022", "2023"],
        rightAnswer: 1
    ),
    Question(
        title: "Você finalizou o iQuiz!",
        responses: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
        rightAnswer: 2
    )
]
