//
//  SecundViewController.swift
//  SegueApp
//
//  Created by Jazmin on 08/08/24.
//

import UIKit

class SecundViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    


}
