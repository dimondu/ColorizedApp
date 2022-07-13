//
//  ColorViewController.swift
//  ColorizedApp
//
//  Created by Дмитрий Дуров on 12.07.2022.
//

import UIKit

protocol  SettingsViewControllerDelegate{
    func setViewColor(red: CGFloat, green: CGFloat, blue: CGFloat)
}

class ColorViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? SettingsViewController else { return }
        
        viewController.uiColor =  view.backgroundColor
        viewController.delegate = self
    }
}

// MARK: SettingsViewControllerDelegate

extension ColorViewController: SettingsViewControllerDelegate {
    func setViewColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
