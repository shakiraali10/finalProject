//
//  FifthViewController.swift
//  finalProjectSageCare
//
//  Created by scholar on 8/16/22.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var income: UITextField!
    @IBOutlet weak var citizen: UITextField!
    @IBOutlet weak var resident: UITextField!
    @IBOutlet weak var buildingStructure: UITextField!
    @IBOutlet weak var criminalRecord: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitTapped(_ sender: UIButton) {
        if  Int((age.text)!) != nil && Int((income.text)!) != nil && (citizen.text != nil) {
            if Int((age.text)!)! >= 21 && Int((income.text)!)! >= 35000 && (citizen.text == "Yes" || citizen.text == "yes") && (criminalRecord.text == "No" || criminalRecord.text == "no") {
                let alert = UIAlertController(title: "Congrats!", message: "You are Qualified!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "okay", style: .default, handler: nil))
                present(alert, animated: true, completion: {
                  return
                })

            } else {
                let alert = UIAlertController(title: "Attention", message: "This may make you illegible. Please contact us for further questions on why.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "okay", style: .default, handler: nil))
                present(alert, animated: true, completion: {
                  return
                })
            }
        } else {
            let alert = UIAlertController(title: "Attention", message: "Input Invalid", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "okay", style: .default, handler: nil))
            present(alert, animated: true, completion: {
              return
            })
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

}
