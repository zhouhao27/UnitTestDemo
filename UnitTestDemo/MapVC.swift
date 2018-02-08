//
//  MapVC.swift
//  UnitTestDemo
//
//  Created by Zhou Hao on 30/1/18.
//  Copyright © 2018 Zhou Hao. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
  @IBOutlet weak var mapView: MKMapView!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  deinit {
    print("Release MapVC")
  }
}
