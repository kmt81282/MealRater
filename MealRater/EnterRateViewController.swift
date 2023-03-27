//
//  EnterRateViewController.swift
//  MealRater
//
//  Created by Marc Turner on 3/26/23.
//

import UIKit
// 1) Create protocol
protocol EnterRateViewControllerDelegate {
    func sendDataToVC(myData: String)
}


class EnterRateViewController: UIViewController {

    
    //2) Create Var to reference the protocal
    var delegate: EnterRateViewControllerDelegate? = nil

    // 3) Value to send
    @IBOutlet weak var scRatingToBeSent: UISegmentedControl!
    
    // 4) send the data
    
    @IBAction func buttonSaveClicked(_ sender: Any) {
        let dataToBeSent = (self.scRatingToBeSent.selectedSegmentIndex+1).description
        self.delegate?.sendDataToVC(myData: dataToBeSent)
        dismiss(animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    
    
    
        
}
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


