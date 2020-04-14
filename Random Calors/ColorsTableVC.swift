//
//  ColorsTableVC.swift
//  Random Calors
//
//  Created by UGURCAN KAYA on 4/14/20.
//  Copyright © 2020 Veri Expo. All rights reserved.
//

import UIKit

class ColorsTableVC: UIViewController{
    var colors: [UIColor] = []
    enum Cells {
        static let colorCell = "ColorCell"
    }
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
    }
    
    func addRandomColors(){
        for _ in 0..<100{
            colors.append(.random())
        }
    }
    
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
        
    }
    

  
}


extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{ return UITableViewCell()}
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
    
}
