//
//  ViewController.swift
//  MixingColorsApp
//
//  Created by Теона Магай on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
        
        labelRed.text = "0.00"
        labelGreen.text = "0.00"
        labelBlue.text = "0.00"
        
        sliderRed.value = 0
        sliderRed.tintColor = .red
        sliderGreen.value = 0
        sliderGreen.tintColor = .green
        sliderBlue.value = 0
        sliderBlue.tintColor = .blue
    }

    @IBAction func sliderRedAction(_ sender: UISlider) {
        labelRed.text = String(format: "%.2f", sliderRed.value)
        mainView.backgroundColor = UIColor(displayP3Red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    @IBAction func sliderGreenAction(_ sender: UISlider) {
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        mainView.backgroundColor = UIColor(displayP3Red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    @IBAction func sliderBlueAction(_ sender: UISlider) {
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        mainView.backgroundColor = UIColor(displayP3Red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
}

