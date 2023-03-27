//
//  ViewController.swift
//  MealRater
//
//  Created by Marc Turner on 3/25/23.
//

import UIKit

class ViewController: UIViewController, EnterRateViewControllerDelegate {
    
    
    
    
    
    
    @IBOutlet weak var selectedRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Delegate Method and confirm the protocol (error no long shows in class line also setting the label to the value myData
    func sendDataToVC(myData: String) {
        self.selectedRate.text = myData
        }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "getDataSegue" {
            let secondVC: EnterRateViewController = segue.destination as! EnterRateViewController
            secondVC.delegate = self
        }
    }

    
}


