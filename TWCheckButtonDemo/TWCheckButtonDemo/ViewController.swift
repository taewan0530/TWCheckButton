//
//  ViewController.swift
//  TWCheckButtonDemo
//
//  Created by kimtaewan on 2015. 12. 24..
//  Copyright © 2015년 prnd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var radioGroup: [TWCheckButton]?
    @IBOutlet var checkGroup: [TWCheckButton]?
    
    @IBOutlet weak var radioResultLabel: UILabel!
    @IBOutlet weak var checkResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard var radioGroup = self.radioGroup else { return }
        radioGroup.tw_group_isRadio = true
        
    }
    
    @IBAction func onClickRadio(sender: TWCheckButton) {
        sender.checked = !sender.checked
        guard let radioGroup = self.radioGroup else { return }
        if let checkButton = radioGroup.tw_group_checked().first {
            radioResultLabel.text = checkButton.name
        }
    }
    
    @IBAction func onClickCheck(sender: TWCheckButton) {
        sender.checked = !sender.checked
        guard let checkGroup = self.checkGroup else { return }
        var names = ""

        for checkButton in checkGroup.tw_group_checked() {
            names += ","
            names += checkButton.name ?? ""
        }
        
        checkResultLabel.text = names
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

