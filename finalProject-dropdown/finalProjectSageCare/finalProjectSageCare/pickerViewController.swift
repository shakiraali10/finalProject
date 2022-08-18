//
//  pickerViewController.swift
//  finalProjectSageCare
//
//  Created by scholar on 8/17/22.
//

import UIKit

class pickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    


    @IBOutlet weak var picker: UIPickerView!
    
    var pickerData: [String] = [String]()

        override func viewDidLoad() {
            super.viewDidLoad()

            self.picker.delegate = self
            self.picker.dataSource = self

            // Input data into the Array:
            pickerData = ["Alliance for Children", "A Better Place for our Children", "Adoptions from the Heart", "Chosen Parents Adoption", "Cradle Of Hope", "Open Arms Adoption Center"]
        }

        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
            return 1
        }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return pickerData.count
        }

        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return pickerData[row]
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


