//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by vinicius b s ferreira on 09/08/24.
//

import UIKit

class QuestaoViewController: UIViewController {
    var points = 0
    
    var numberQuestion = 0
    
    @IBOutlet weak var titleQuestionLabel: UILabel!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let isRightAnswer = questoes[numberQuestion].rightAnswer == sender.tag
        
        if isRightAnswer {
            points += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
            print("usuario acertou")
        }else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        if numberQuestion < questoes.count-1{
            numberQuestion += 1
            Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(configureQuestion),userInfo: nil,repeats: false)
        }else{
            
        }
      
    }
    func navigateDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: <#T##Any?#>)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureQuestion()
        
    }
    
    func configureLayout( ){
        navigationItem.hidesBackButton = true
        titleQuestionLabel.numberOfLines = 0
        titleQuestionLabel.textAlignment = .center
        for botao in buttonCollection{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configureQuestion( ){
        titleQuestionLabel.text = questoes[numberQuestion].title
        
        for botao in buttonCollection{
            let titleButton = questoes[numberQuestion].answers[botao.tag]
            botao.setTitle(titleButton, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else {return}
        desempenhoVC.points = points
    }


}
