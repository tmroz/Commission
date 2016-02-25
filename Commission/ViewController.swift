//
//  ViewController.swift
//  Commission
//
//  Created by Robert D. Brown on 7/29/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var commissionTextField: UITextField!
    @IBOutlet weak var totalPayLabel: UILabel!
    var basePay = 500

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func calculateOnTap(sender: UIButton) {
        let commissionPayString = commissionTextField.text
        let commissionPayNSString = NSString(string: commissionPayString)
        let commissionPay = commissionPayNSString.doubleValue
        let totalPay = String(format: "%.2f",(Double)(basePay) + commissionPay)

        totalPayLabel.text = "Total Pay = $\(totalPay)"

    }
}

