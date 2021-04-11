//
//  SettingsViewController.swift
//  MixingColorsApp
//
//  Created by Теона Магай on 10.04.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var mainView: UIView!
        
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
        
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    var mainViewColor: UIColor!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        mainView.layer.cornerRadius = 20
        mainView.backgroundColor = mainViewColor

        slidersValue()
        setValue(for: labelRed, labelGreen, labelBlue)
    }
        
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
                    
        switch sender {
        case sliderRed: setValue(for: labelRed)
        case sliderGreen: setValue(for: labelGreen)
        default: setValue(for: labelBlue)
        }
        
        mainView.backgroundColor = mainViewColor
    }
    
    private func slidersValue() {
        let components = CIColor(color: mainViewColor)
        sliderRed.value = Float(components.red)
        sliderGreen.value = Float(components.green)
        sliderBlue.value = Float(components.blue)
    }
        
    private func setColor() {
        mainViewColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case labelRed:
                label.text = string(from: sliderRed)
            case labelGreen:
                label.text = string(from: sliderGreen)
            default:
                label.text = string(from: sliderBlue)
            }
        }
    }
            
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    @IBAction func doneAction() {
    dismiss(animated: true)
    }

}
