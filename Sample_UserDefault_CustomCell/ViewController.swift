//
//  ViewController.swift
//  Sample_UserDefault_CustomCell
//
//  Created by 大林拓実 on 2018/11/11.
//  Copyright © 2018年 TakumiObayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var TableView: UITableView!
    
    var NameArray: [String] = []    //UserDefaultのか読み込み・書き込み配列
    let saveData = UserDefaults.standard    //インスタンス
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        cell.NumberLabel.text = String(indexPath.row + 1)
        cell.ArrayLabel.text = NameArray[indexPath.row]
        
        return cell
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.TableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")

        //UserDefaultのデータ削除
        let userDefaults = UserDefaults.standard
        if let domain = Bundle.main.bundleIdentifier {
            userDefaults.removePersistentDomain(forName: domain)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.TableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
        if saveData.array(forKey: "NAME") != nil{
            NameArray = saveData.array(forKey: "NAME") as! [String]
        }
        TableView.reloadData()
    }


}

