//
//  ColorViewController.swift
//  MixingColorsApp
//
//  Created by Теона Магай on 10.04.2021.
//

import UIKit

class ColorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let settingsVC = segue.destination as? SettingsViewController else { return }
        
        settingsVC.mainViewColor = view.backgroundColor
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    guard let settingsVC = segue.source as? SettingsViewController else { return }
        view.backgroundColor = settingsVC.mainViewColor
    }
    

}
