//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 fr.lp.iem. All rights reserved.
//

import UIKit


protocol ColorPickerDelegate {
    func userDidChooseColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    var delegate: ColorPickerDelegate?
    
    
    @IBAction func greenButtonTapped(_ sender: AnyObject) {
        
        delegate?.userDidChooseColor(color: UIColor(red: 32.0/255, green: 203.0/255, blue: 136.0/255, alpha: 1.0)) //32	203	136
    }
    
}
