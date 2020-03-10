//
//  ScoreViewController.swift
//  SustainableLife
//
//  Created by Intan Yoshana on 07/03/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    var quizResult: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelResult.text = quizResult
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backAction (_ sender: UIButton){
        self.performSegue(withIdentifier: "unwindBack", sender: self)
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
