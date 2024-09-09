//
//  ViewController.swift
//  TechPod
//
//  Created by 久田　悠平 on 2024/08/30.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = songNameArray[indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }
    
    @IBOutlet var table: UITableView!
    
    var songNameArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.dataSource = self
        
        songNameArray = ["カノン", "エリーゼのために","G線上のアリア"]
    }


}

