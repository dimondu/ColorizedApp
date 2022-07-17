//
//  ColorViewController.swift
//  ColorizedApp
//
//  Created by Дмитрий Дуров on 12.07.2022.
//

import UIKit

protocol  ColorViewControllerDelegate{
    func setViewColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ColorViewController else { return }
        colorVC.viewColor =  view.backgroundColor
        colorVC.delegate = self
    }
}

// MARK: SettingsViewControllerDelegate

extension MainViewController: ColorViewControllerDelegate {
    func setViewColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
