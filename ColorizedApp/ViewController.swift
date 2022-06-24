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
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
        setupSliders()
        changeColor()
        
        colorView.layer.cornerRadius = 20
    }
    
    // MARK: - IB Actions
    @IBAction func sliderAction() {
        setupLabels()
        changeColor()
    }
    
    // MARK: - Private Mathods
    private func setupLabels() {
        redLabel.text = String(format:"%.2f", redSlider.value)
        greenLabel.text = String(format:"%.2f",greenSlider.value)
        blueLabel.text = String(format:"%.2f",blueSlider.value)
    }
    
    private func setupSliders() {
        redSlider.minimumTrackTintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        greenSlider.minimumTrackTintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        blueSlider.minimumTrackTintColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(
            displayP3Red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

