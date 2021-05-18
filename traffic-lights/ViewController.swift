//
//  ViewController.swift
//  traffic-lights
//
//  Created by Георгий  Цамаладзе  on 18.05.2021.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var switchButton: UIButton!
    
    enum trafficStatus{
        case off
        case red
        case yellow
        case green
    }
    
    var status = trafficStatus.off
    
    @IBAction func switchTraffic() {
        switchButton.setTitle("NEXT", for: .normal)
        
        switch status {
        case .off:
            redLight.alpha = 1
            status = trafficStatus.red
        case .red:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            status = trafficStatus.yellow
        case .yellow:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            status = trafficStatus.green
        case .green:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            status = trafficStatus.red
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = 0.5 * redLight.frame.size.width
        redLight.clipsToBounds = true
        
        yellowLight.layer.cornerRadius = 0.5 * yellowLight.frame.size.width
        yellowLight.clipsToBounds = true
        
        greenLight.layer.cornerRadius = 0.5 * greenLight.frame.size.width
        greenLight.clipsToBounds = true
        
        switchButton.setTitle("START", for: .normal)
        
    }


}

