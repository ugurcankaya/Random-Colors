//
//  ColorsDetailVC.swift
//  Random Calors
//
//  Created by UGURCAN KAYA on 4/14/20.
//  Copyright © 2020 Veri Expo. All rights reserved.
//

import UIKit

class ColorsDetailVC: UIViewController {
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? UIColor.black
        // Do any additional setup after loading the view.
    }
    

   

}
