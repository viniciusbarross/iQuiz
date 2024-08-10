//
//  Question.swift
//  iQuiz
//
//  Created by vinicius b s ferreira on 09/08/24.
//

import Foundation

struct Questao {
    var title: String
    var answers: [String]
    var rightAnswer: Int
}


let questoes: [Questao] = [
    Questao(title: "Qual a capital de Santa Catarina?", answers:[ "Joinville","Florianópolis","Foz do Iguaçu"], rightAnswer: 1),
    Questao(title: "Quem descobriu o Brasil?", answers:[ "Pablo Marçal","Pedro Alvares Cabral","Mike Baguncinha"], rightAnswer: 1),
        Questao(title: "Quem gritou independencia ou morte?", answers:[ "Dom Pedro I","Pedro Alvares Cabral","Bolsonaro"], rightAnswer: 0),
        Questao(title: "Uai é um termo de qual estado brasileiro?", answers:[ "Minas Gerais","Goiás","Ambas estao corretas"], rightAnswer: 2)
]
