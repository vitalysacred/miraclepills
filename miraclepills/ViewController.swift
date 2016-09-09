//
//  ViewController.swift
//  miraclepills
//
//  Created by Vitaly Sacred on 07/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var textFieldCountry: UITextField!
    @IBOutlet weak var labelZipCode: UILabel!
    @IBOutlet weak var textFieldZipCode: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var labelState: UILabel!
    @IBOutlet weak var textFieldCity: UITextField!
    @IBOutlet weak var textFieldAdress: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelAdress: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageOnTitle: UIImageView!
    @IBOutlet weak var diveder: UIView!
    @IBOutlet weak var ImageViewSuccses: UIImageView!
    
    
    let states = ["Alaska","Orkansaz","Alabama", "California", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        ImageViewSuccses.isHidden = true
        //ImageViewSuccses.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPress(_ sender: AnyObject) {
        statePickerBtn.setTitle("", for: UIControlState())
        statePicker.isHidden = false
        labelCountry.isHidden = true
        textFieldCountry.isHidden = true
        labelZipCode.isHidden = true
        textFieldZipCode.isHidden = true
        statePickerBtn.isHidden = true
        buyNowButton.isHidden = true
        
    }
    
    @IBAction func buyNowButtonPress(_ sender: AnyObject) {
        //labelCountry.isHidden = true
        //textFieldCountry.isHidden = true
        //labelZipCode.isHidden = true
        //textFieldZipCode.isHidden = true
        //labelState.isHidden = true
        //textFieldCity.isHidden = true
        //textFieldAdress.isHidden = true
        //textFieldName.isHidden = true
        //labelAdress.isHidden = true
        //labelName.isHidden = true
        //labelCity.isHidden = true
        //statePickerBtn.isHidden = true
        //labelPrice.isHidden = true
        //labelTitle.isHidden = true
        //imageOnTitle.isHidden = true
        //diveder.isHidden = true
        
        
        for subview in view.subviews {
            subview.isHidden = true
        }
        ImageViewSuccses.isHidden = false
        //ImageViewSuccses.alpha = 1
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePicker.isHidden = true
        labelCountry.isHidden = false
        textFieldCountry.isHidden = false
        labelZipCode.isHidden = false
        textFieldZipCode.isHidden = false
        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIcontrolState.normal
        statePickerBtn.isHidden = false
        buyNowButton.isHidden = false
    }
}

