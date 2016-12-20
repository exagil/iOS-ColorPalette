//
//  ViewController.swift
//  iOSColorPalette
//
//  Created by Chirag Aggarwal on 20/12/16.
//  Copyright © 2016 Chirag Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onSlide(self )
    }
    
    @IBAction func onSlide(_ sender: Any) {
        let valueSliderRed : Float = sliderRed.value
        let valueSliderBlue : Float = sliderBlue.value
        let valueSliderGreen : Float = sliderGreen.value
        
        viewColor.backgroundColor = getUIColorForValues(valueSliderRed, valueSliderBlue, valueSliderGreen)
    }
    
    private func getUIColorForValues(_ valueSliderRed : Float, _ valueSliderBlue : Float, _ valueSliderGreen : Float) -> UIColor {
        let cgFloatRed : CGFloat = CGFloat(valueSliderRed)
        let cgFloatBlue : CGFloat = CGFloat(valueSliderBlue )
        let cgFloatGreen  : CGFloat = CGFloat(valueSliderGreen)
        return UIColor(red: cgFloatRed, green: cgFloatGreen , blue: cgFloatBlue, alpha: 1)
    }
}

