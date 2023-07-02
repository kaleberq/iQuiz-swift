import Foundation

struct Question {
    var title: String
    var responses: [String]
    var rightAnswer: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", responses: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"], rightAnswer: 2),
    Question(title: "Quando foi lançado o filme Avatar 2?", responses: ["2014", "2022", "2023"], rightAnswer: 1),
    Question(title: "Quando foi lançado o filme Vingadores Ultimato?", responses: ["2019", "2018", "2017"], rightAnswer: 0),
    Question(title: "Qual é o primeiro filme da franquia Star Wars?", responses: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], rightAnswer: 1),
    Question(title: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?", responses: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"], rightAnswer: 0),
    Question(title: "Qual é o personagem principal de The Office, interpretado por Steve Carell?", responses: ["Michael Scott", "Jim Halpert", "Dwight Schrute"], rightAnswer: 0),
    Question(title: "Qual é o trabalho de Jay Pritchett na série Modern Family?", responses: ["Médico", "Empresário", "Advogado"], rightAnswer: 1),
]

