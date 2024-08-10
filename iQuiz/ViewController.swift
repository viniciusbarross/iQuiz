//
//  ViewController.swift
//  iQuiz
//
//  Created by vinicius b s ferreira on 09/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }


    @IBAction func botaoPressionado(_ sender: Any) {
        print("botao pressionado")
    }
    
    func configuraLayout( ){
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }
}

