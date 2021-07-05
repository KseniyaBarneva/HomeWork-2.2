//
//  ViewController.swift
//  HomeWork 2.2
//
//  Created by Ксения on 03.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    func outputValue() {
        redValue.text = String(format:"%.2f", redSlider.value)
        greenValue.text = String(format:"%.2f", greenSlider.value)
        blueValue.text = String(format:"%.2f", blueSlider.value)
    }
    @IBAction func rgbSliderChanged(_ sender: Any) {
        changeColor()
        outputValue()
    }
}

