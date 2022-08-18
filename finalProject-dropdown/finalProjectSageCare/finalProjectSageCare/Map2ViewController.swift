//
//  Map2ViewController.swift
//  finalProjectSageCare
//
//  Created by scholar on 8/16/22.
//

import UIKit
import MapKit

class Map2ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return adoptionCenters.count
    }
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var pickerMap: UIPickerView!
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    let adoptionCenters =  ["Alliance for Children", "A Better Chance for our Children", "Adoptions from the Heart", "Chosen Parents Adoption", "Cradle Of Hope", "Open Arms Adoption Center"]
    
    let centerText = ["Alliance for Children \n https://www.allforchildrenadoption.org/ ", "A Better Chance for our Children \n https://abcfoc.org/", "Adoptions from the Heart \n https://afth.org/", "Chosen Parents Adoption \n https://chosenparentsadoptions.com/", "Cradle Of Hope \n https://cradlehope.org/", "Open Arms Adoption Center \n https://openarmsadoption.net/"]
    
    let centerWebsite = ["https://www.allforchildrenadoption.org", "https://abcfoc.org/", "https://afth.org/", "https://chosenparentsadoptions.com/", " https://cradlehope.org/", "https://openarmsadoption.net/"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return adoptionCenters[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        display.text = centerText[row]
       // let websiteLink = centerWebsite[row]
    }
    
    func findInt(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) -> Int? {
        return row
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    
    
        let initialLocation = CLLocation(latitude: 39.9578/*820533054*/, longitude: -75.1685/*8230246532*/)
        mapView.centerToLocation(initialLocation)

        let AC1 = MKPointAnnotation()
         AC1.title = "Chosen Parents Adoption"
         AC1.subtitle = "Building Families through Adoption"
        AC1.coordinate = CLLocationCoordinate2D(latitude: 39.9578820533054, longitude: -75.16858230246532)
      //  place1.pinTintColor = .green
         mapView.addAnnotation(AC1)

        let AC2 = MKPointAnnotation()
         AC2.title = "Open Arms Adoption Center"
         AC2.subtitle = "a program of JFCS of Greater Philadelphia"
        AC2.coordinate = CLLocationCoordinate2D(latitude: 39.95569980016154, longitude: -75.17521062663438)
      //  place1.pinTintColor = .green
         mapView.addAnnotation(AC2)
      
        let AC3 = MKPointAnnotation()
         AC3.title = "Alliance for Children"
         AC3.subtitle = "Alliance for Children's Incusive Community"
        AC3.coordinate = CLLocationCoordinate2D(latitude: 40.76466046288385, longitude:-73.9762463495762)
      //  place1.pinTintColor = .green
         mapView.addAnnotation(AC3)
        
        let AC4 = MKPointAnnotation()
         AC4.title = "A Better Place for our Children"
         AC4.subtitle = "Connecting Children with Families"
        AC4.coordinate = CLLocationCoordinate2D(latitude: 39.7827512246973, longitude:-75.48223759062728)
      //  place1.pinTintColor = .green
         mapView.addAnnotation(AC4)
        
        let AC5 = MKPointAnnotation()
         AC5.title = "Adoptions from the Heart"
         AC5.subtitle = "Domestic and international placement services"
        AC5.coordinate = CLLocationCoordinate2D(latitude: 39.93753744892809, longitude:-75.03271358975142)
    //    AC5.markerTintColor = .green
         mapView.addAnnotation(AC5)
        
        let AC6 = MKPointAnnotation()
         AC6.title = "Cradle Of Hope"
         AC6.subtitle = "Provide adoption services to children in the US and overseas"
        AC6.coordinate = CLLocationCoordinate2D(latitude: 39.782223550953766, longitude:-75.48253799998972)
      //  place1.pinTintColor = .green
         mapView.addAnnotation(AC6)
    
    }

    @IBAction func websiteTapped(_ sender: UIButton) {
        
        if let url = URL(string: centerWebsite[2]){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)}
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

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 200000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
