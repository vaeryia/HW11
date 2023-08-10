//
//  ViewController.swift
//  HW11
//
//  Created by Valeria Moyseychik on 9.08.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var progressView: UIProgressView!
    
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var setTimeBtn: UIButton!
    
    @IBOutlet var setTimeLbl: UILabel!
    
    @IBOutlet var `switch`: UISwitch!
    
    @IBOutlet var clearBtn: UIButton!
    
    @IBAction func sliderAction(_ sender: Any) {
        slider.minimumValue = 0
        slider.maximumValue = 1
        textField.text = String(slider.value)
        progressView.progress = Float(slider.value)
    }
    
    @IBAction func datePickerAct(_ sender: Any) {
        //        if `switch`.isOn == true {
        //            let time = DateFormatter()
        //            time.timeStyle = .short
        //            let choosenTime = time.string(from: datePicker.date)
        //            setTimeLbl.text = choosenTime
    }
    
    @IBAction func turnOnAlarm(_ sender: UIButton) {
       
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
