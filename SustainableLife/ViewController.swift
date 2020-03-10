//
//  ViewController.swift
//  SustainableLife
//
//  Created by Intan Yoshana on 07/03/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var score: Int = 0
    var selectedButtons: Int = 0
    var buttons: [SelectedButtonTag] = []
    var hasil = ""
    
    @IBOutlet weak var btnGroceryBag: UIButton!
    @IBOutlet weak var btnWaterBottle: UIButton!
    @IBOutlet weak var btnPublicTransport: UIButton!
    @IBOutlet weak var btnThriftShop: UIButton!
    @IBOutlet weak var btnBicycle: UIButton!
    @IBOutlet weak var btnFoodWaste: UIButton!
    
    enum SelectedButtonTag: Int {
        case First
        case Second
        case Third
        case Fourth
        case Fifth
        case Sixth
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func unwindBackToFirstPage (segue: UIStoryboardSegue){
//        unwind action buat balik lagi ke page A
    }
    
    
//    buat baca button mana aja yang dipilih,trus masukin array
    @IBAction func selectedButtons (sender: UIButton){
//        if let First: SelectedButtonTag = SelectedButtonTag (rawValue: sender.tag) {
//            buttons.append(First)
//        }
        switch sender.tag {
        case SelectedButtonTag.First.rawValue:
//            ishidden=true
            buttons.append(SelectedButtonTag.First)
        case SelectedButtonTag.Second.rawValue:
            buttons.append(SelectedButtonTag.Second)
        case SelectedButtonTag.Third.rawValue:
            buttons.append(SelectedButtonTag.Third)
        case SelectedButtonTag.Fourth.rawValue:
            buttons.append(SelectedButtonTag.Fourth)
        case SelectedButtonTag.Fifth.rawValue:
            buttons.append(SelectedButtonTag.Fifth)
        case SelectedButtonTag.Sixth.rawValue:
            buttons.append(SelectedButtonTag.Sixth)
        default:
            break
        }
    }
  
//    to read the Int value
//    let rawValue: Int = SelectedButtonTag.First.rawValue
    
//buat baca size arraynya
    func getSize() -> Int{
        return buttons.count
    }
    
//function result buat nentuin masuk kategori mana berdasarkan size array
    @IBAction func result (sender: UIButton){
        print(getSize())
        if getSize() <= 2 && getSize()>0 {
            hasil = "You are one step ahead to be environmentally friendly"
//            print(hasil)
            print(hasil)
        } else if getSize() <= 4 {
            hasil = "You jump on environmentally friendly trends, but there's still more you could do"
//            print(hasil)
            print(hasil)
        } else {
            hasil = "You're a friend to the environment"
//            print(hasil)
           print(hasil)
        }
        buttons.removeAll()
        performSegue(withIdentifier: "toNextVC", sender: self)
    }
    
    
//    buat lempar hasil dr func result ke page selanjutnya
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ScoreViewController {
            destinationVC.quizResult = hasil
        }
    }
    
}
 
