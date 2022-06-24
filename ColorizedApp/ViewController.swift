//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Дмитрий Дуров on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
        setupSliders()
        changeColor()
        
        colorView.layer.cornerRadius = 10
    }
    
    // MARK: - IB Actions
    @IBAction func sliderAction() {
        setupLabels()
        changeColor()
    }
    
    // MARK: - Private Mathods
    private func setupLabels() {
        redColorLabel.text = String(format:"%.2f", redColorSlider.value)
        greenColorLabel.text = String(format:"%.2f",greenColorSlider.value)
        blueColorLabel.text = String(format:"%.2f",blueColorSlider.value)
    }
    
    private func setupSliders() {
        redColorSlider.minimumTrackTintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        greenColorSlider.minimumTrackTintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        blueColorSlider.minimumTrackTintColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(
            displayP3Red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
}

