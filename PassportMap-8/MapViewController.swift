//
//  MapViewController.swift
//  Passport2
//
//  Created by Jake Ulasevich on 12/8/15.
//  Copyright © 2015 NitroxDev. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let italy = MKPointAnnotation()
        italy.coordinate = CLLocationCoordinate2DMake(41.897400,12.4839000)
        italy.title = "Rome, Italy"
        let england = MKPointAnnotation()
        england.coordinate = CLLocationCoordinate2DMake(51.5085300, -0.1257400)
        england.title = "London, England"
        let norway = MKPointAnnotation()
        norway.coordinate = CLLocationCoordinate2DMake(59.914225, 10.75256)
        norway.title = "Oslo, Norway"
        let spain = MKPointAnnotation()
        spain.coordinate = CLLocationCoordinate2DMake(40.41694, -3.70081)
        spain.title = "Madrid, Spain"
        
        let locations = [italy, england, norway, spain]
        myMapView.addAnnotations(locations)
        var myRegion = MKCoordinateRegionMakeWithDistance(italy.coordinate, 5500000, 5500000)
        myMapView.setRegion(myRegion, animated: true)
        

        // Do any additional setup after loading the view.
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) ->MKAnnotationView! {
        
        var pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
            pin.canShowCallout = true
        
        return pin
    }

    
    

}
