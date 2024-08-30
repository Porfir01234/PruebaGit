//
//  ViewController.swift
//  SegueApp
//
//  Created by Jazmin on 08/08/24.
//

import UIKit

class ViewController: UIViewController {
   
    var myName = ""
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       print("viewDidLoad funcion called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidsappear funtion called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("vieWillappear function called")
        
        nameText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    @IBAction func continueButton(_ sender: UIButton) {
         
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        myName = nameText.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecundViewController
            destinationVC.myName = myName
        }
    }
    
}

