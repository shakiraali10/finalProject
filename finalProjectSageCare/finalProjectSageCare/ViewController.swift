//
//  ViewController.swift
//  finalProjectSageCare
//
//  Created by scholar on 8/15/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var adoptNow: UIButton!
    @IBOutlet weak var donate: UIButton!
    @IBOutlet weak var ourMission: UIButton!
    @IBOutlet weak var contacts: UIButton!
    @IBOutlet weak var understandingAdoption: UIButton!
    @IBOutlet weak var collaborate: UIButton!
    @IBOutlet weak var map: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        map.setImage(UIImage(named: "Screen_Shot_2022-08-17_at_12.44.35_PM-removebg-preview"), for: .normal)
        adoptNow.setImage(UIImage(named: "Screen_Shot_2022-08-17_at_12.50.59_PM-removebg-preview"), for: .normal)
        collaborate.setImage(UIImage(named: "Screen_Shot_2022-08-17_at_12.56.11_PM-removebg-preview"), for: .normal)
        understandingAdoption.setImage(UIImage(named: "Screen_Shot_2022-08-17_at_12.58.31_PM-removebg-preview"), for: .normal)
        contacts.setImage(UIImage(named: "Screen_Shot_2022-08-17_at_1.02.18_PM-removebg-preview (1)"), for: .normal)
        ourMission.setImage(UIImage(named: "Screen_Shot_2022-08-17_at_1.02.35_PM-removebg-preview (1)"), for: .normal)
       donate.setImage(UIImage(named: "Screen_Shot_2022-08-17_at_11.57.45_AM-removebg-preview"), for: .normal)
        
        
        // Do any additional setup after loading the view.
    }


}

