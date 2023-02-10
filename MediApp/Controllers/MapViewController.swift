//
//  MapViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 29/05/2022.
//
import UIKit
import MapKit
import CoreLocation
class MapViewController: UIViewController,CLLocationManagerDelegate{
    @IBOutlet weak var mapView: MKMapView!
    let manager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
        
        //create array of pharmacies
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.509869, longitude: -0.118091)
        annotation.title = "the pharmacy"
        annotation.subtitle = "Best prices in London"
        mapView.addAnnotation(annotation)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 51.508, longitude: 0)
        annotation2.title = "the pharmacy"
        annotation2.subtitle = "Best prices in London"
        mapView.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 51.5097, longitude: 0.1)
        annotation3.title = "the pharmacy"
        annotation3.subtitle = "Best prices in London"
        mapView.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 51.5098, longitude: 0)
        annotation4.title = "the pharmacy"
        annotation4.subtitle = "Best prices in London"
        mapView.addAnnotation(annotation4)
        
        let region = MKCoordinateRegion(center: annotation4.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
    }
    
    
    private func setupNavigationBar(){
        self.title = "Map"
    }
    private func setupViews(){
    
    }
    
}
