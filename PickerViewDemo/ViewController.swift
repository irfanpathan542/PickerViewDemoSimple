//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by iFlame on 5/2/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource , UIPickerViewDelegate{
    
    var cars = ["Audi", "Bmw", "Verna", "Swift"]

    @IBOutlet weak var labelPicker: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    // This Methos is Create a NumberOfComponents
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        }
    // This Method Is Set how Many row in one componet
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cars.count
    }
    // This method is set the row title
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cars[row]
    }
    // this methos is select the row shows in label which row is selected
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelPicker.text = cars[row]
    }

}

