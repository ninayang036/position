//
//  ViewController.swift
//  position
//
//  Created by Yang Nina on 2021/4/6.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    @IBOutlet weak var laoneTextField: UITextField!
    @IBOutlet weak var latwoTextField: UITextField!
    @IBOutlet weak var looneTextField: UITextField!
    @IBOutlet weak var lotwoTextField: UITextField!
    @IBOutlet weak var lathreeTextField: UITextField!
    @IBOutlet weak var lafourTextField: UITextField!
    @IBOutlet weak var lafiveTextField: UITextField!
    @IBOutlet weak var lothreeTextField: UITextField!
    @IBOutlet weak var lofourTextField: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var lofiveTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convert(_ sender: Any) {
        if let latitude = Double(latitudeTextField.text!){
            if let longitude = Double(longitudeTextField.text!){
                //緯度
                laoneTextField.text = "\(Int(latitude))"
                lathreeTextField.text = laoneTextField.text
                //緯分
                latwoTextField.text = String(format: "%.3f",(latitude - Double(laoneTextField.text!)!) * 60)
                
                //經度
                looneTextField.text = "\(Int(longitude))"
                lothreeTextField.text = looneTextField.text
                //經分
                lotwoTextField.text = String(format: "%.3f", (longitude - Double(looneTextField.text!)!) * 60)
                
                if let latitude2 = Double(latwoTextField.text!){
                    if let longitude2 = Double(lotwoTextField.text!){
                        //緯分
                        lafourTextField.text = "\(Int(latitude2))"
                        //緯秒
                        lafiveTextField.text = String(format: "%.3f", (latitude2 - Double(lafourTextField.text!)!) * 60)
                        //經分
                            lofourTextField.text = "\(Int(longitude2))"
                        //經秒
                            lofiveTextField.text = String(format: "%.3f", (longitude2 - Double(lofourTextField.text!)!) * 60)
                    }
                }
               
           }
        }
        position()
    }
    func position(){
        mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: Double(latitudeTextField.text!)!, longitude: Double(longitudeTextField.text!)!), latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}

