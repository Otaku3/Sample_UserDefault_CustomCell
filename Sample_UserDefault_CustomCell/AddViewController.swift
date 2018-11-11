//
//  AddViewController.swift
//  Sample_UserDefault_CustomCell
//
//  Created by 大林拓実 on 2018/11/11.
//  Copyright © 2018年 TakumiObayashi. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var NameTextfield: UITextField!
    var NameArray: [String] = []    //UserDefaultのか読み込み・書き込み配列
    let saveData = UserDefaults.standard    //インスタンス

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if saveData.array(forKey: "NAME") != nil{
            NameArray = saveData.array(forKey: "NAME") as! [String]
        }
    }
    
    @IBAction func save(){
        if NameTextfield.text != nil{
            NameArray.append(NameTextfield.text!)
            saveData.set(NameArray, forKey: "NAME")
            self.navigationController?.popViewController(animated: true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
