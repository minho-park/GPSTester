//
//  GTMainViewController.swift
//  GPSTester
//
//  Created by Strawnut - Developer on 2018. 3. 22..
//  Copyright © 2018년 Strawnut. All rights reserved.
//  Modified krh 2018.04.04
//

import UIKit
import SnapKit
import GoogleMaps

class GTMainViewController: UIViewController {
    
    var mapView: UIView = UIView()
    
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        
        self.makeMapView()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

    func makeMapView() {
        self.mapView.backgroundColor = UIColor.yellow
        self.view.addSubview(self.mapView)
        
        self.mapView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.safeAreaLayoutGuide)
            make.left.equalTo(self.view.safeAreaLayoutGuide)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide).dividedBy(2)
            make.right.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let testMapView = GMSMapView.map(withFrame: CGRect.init(x: 0, y: 0, width: 200, height: 200), camera: camera)   //need to modify View size.
        testMapView.isMyLocationEnabled = true
        self.mapView.addSubview(testMapView)
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = testMapView
    }
}

