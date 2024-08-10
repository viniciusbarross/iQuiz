//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by vinicius b s ferreira on 09/08/24.
//

import UIKit

class DesempenhoViewController: UIViewController {

    var points: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var percentualLabel: UILabel!
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    @IBAction func botaoReiniciarQuiz(_ sender: Any) {
    }
    
    func configureLayout(){
        botaoReiniciarQuiz.layer.cornerRadius = 12.0
    }  
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
