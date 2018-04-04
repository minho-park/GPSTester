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
    }
}

