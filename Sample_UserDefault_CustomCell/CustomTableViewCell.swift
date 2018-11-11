//
//  CustomTableViewCell.swift
//  Sample_UserDefault_CustomCell
//
//  Created by 大林拓実 on 2018/11/11.
//  Copyright © 2018年 TakumiObayashi. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NumberLabel: UILabel!
    @IBOutlet weak var ArrayLabel: UILabel!
    @IBOutlet weak var StepperLabel: UILabel!
//    @IBOutlet weak var CellStepper: UIStepper!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func changeStepperValue(_ sender: UIStepper){
        StepperLabel.text = String(Int(sender.value))
    }
    
}
