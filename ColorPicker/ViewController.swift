//
//  ViewController.swift
//  ColorPicker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 fr.lp.iem. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PickColor" {
            let destination = segue.destination as! ColorPickerViewController
            destination.delegate = self
        }
    }


}


extension ViewController: ColorPickerDelegate {
    func userDidChooseColor(color: UIColor) {
        dismiss(animated: true, completion: nil)
        view.backgroundColor = color
    }
}
