//
//  FirstViewController.swift
//  finalProjectSageCare
//
//  Created by scholar on 8/16/22.
//

import UIKit
import MapKit
class FirstViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Set initial location in Honolulu
        
            let initialLocation = CLLocation(latitude: 39.9578820533054, longitude: -75.16858230246532)
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
          //  place1.pinTintColor = .green
             mapView.addAnnotation(AC5)
          
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
