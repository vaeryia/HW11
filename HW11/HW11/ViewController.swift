//
//  ViewController.swift
//  HW11
//
//  Created by Valeria Moyseychik on 9.08.23.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var setTimeBtn: UIButton!
    @IBOutlet private weak var setTimeLbl: UILabel!
    @IBOutlet private weak var `switch`: UISwitch!
    @IBOutlet private weak var clearBtn: UIButton!
   
    @IBAction private func sliderAction(_ sender: UISlider) {
        slider.minimumValue = 0
        slider.maximumValue = 1
        progressView.progress = sender.value
        let shortValue = round(Double(sender.value) * 10) / 10
        textField.text = String(shortValue)
        textField.placeholder = String(shortValue)
    }
    
    @IBAction private func datePickerAct(_ sender: UIDatePicker) {
        var hour = String(datePicker.calendar.component(.hour, from: datePicker.date))
        var min = String(datePicker.calendar.component(.minute, from: datePicker.date))
        if Int(hour)! < 10 {
            hour = "0" + hour
        }
        if Int(min)! < 10 {
            min = "0" + min
        }
        print("\(hour):\(min)")
        setTimeLbl.text = "\(hour):\(min)"
    }
    
    @IBAction private func turnOnAlarm(_ sender: UIButton) {}

    @IBAction private func switchAction(_ sender: UISwitch) {
        setTimeLbl.backgroundColor = sender.isOn ? .orange : .lightGray
    }
    
    @IBAction private func clearTimeLbl(_ sender: UIButton) {
        // setTimeLbl.text = nil
        if clearBtn.isEnabled == true {
            setTimeLbl.backgroundColor = .lightGray
            setTimeLbl.text = "Time is not set"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
