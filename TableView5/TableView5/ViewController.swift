//
//  ViewController.swift
//  TableView5
//
//  Created by mac on 03/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var label: UILabel!
    
    
    var array = [["name":"Subhanshu", "location":"Jablapur"],["name":"Ritwik", "location":"Sagar"],["name":"Akshat", "location":"Dewas"],["name":"aman", "location":"Bhopal"],["name":"Ayush", "location":"Bhopal"]]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let dict = array[indexPath.row]
        cell.namelabel.text = dict["name"]
        cell.addresslabel.text = dict["location"]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
          array.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    var i = 0
    
    @IBAction func add(_ sender: Any) {
        let array2 = [["name":"Khatloyiya", "location":"Jablapur"],["name":"Puneet", "location":"Nagda"],["name":"Shubham", "location":"Gwalior"],["name":"Prannet", "location":"Jablapur"],["name":"Srajan", "location":"Jablapur"],["name":"Sansa", "location":"Winterfell"],["name":"Gendry", "location":"Kings Landing"],["name":"Tyrion Lannister", "location":"Castely Rock"],["name":"Walder Frey", "location":"Riverrun"]]
        
        
        array.append(array2[i])
        
        print(array)
        for _ in 0...3{
            print()
        }
        i=i+1
       self.tableView.reloadData()
        
    }
    
    @IBOutlet weak var deleete: UIButton!
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

