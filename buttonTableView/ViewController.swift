//
//  ViewController.swift
//  buttonTableView
//
//  Created by Rails on 05/07/19.
//  Copyright © 2019 gammastack. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableViewObject: UITableView!
    
    var array = [["S.no": 101, "name": "Tony stark", "heroName": "Ironman", "address": "L.A.", "image":#imageLiteral(resourceName: "ironman") ], ["S.no": 102, "name": "Steve Rogers", "heroName": "Captain America", "address": "Brokklyn", "image": #imageLiteral(resourceName: "captain") ], ["S.no": 103, "name": "Peter Parker", "heroName": "Spiderman", "address": "Queens", "image": #imageLiteral(resourceName: "spiderman") ], ["S.no": 104, "name": "Natasha", "heroName": "Agent Romonaf", "address": "Russia", "image": #imageLiteral(resourceName: "natasha") ], ["S.no": 105, "name": "Clint", "heroName": "Hawkeye", "address": "Country Yard", "image": #imageLiteral(resourceName: "hawkeye") ],["S.no": 106, "name": "Bruce Banner", "heroName": "Hulk", "address": "California", "image":#imageLiteral(resourceName: "hulk") ]]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:newTableViewCell = tableViewObject.dequeueReusableCell(withIdentifier: "cell") as! newTableViewCell
        let dict = array[indexPath.row]
        cell.delegate = self as? dataPassing
        cell.delegate1 = self
        cell.delegatenew = self
        cell.nameLabel.text = dict["name"] as? String
        cell.locationLabel.text = dict["address"] as? String
        cell.userProfileImageView.image = dict["image"] as? UIImage
        return cell
    }
    
}


extension ViewController : YoutuberTableViewCellDelegate {
    func youtuberTableViewCell(name: String, address: String) {
        print("================")
    }
    
}

extension ViewController : YoutuberTableViewCellDelegateNew {
    func youtuberTableViewCell(_ youtuberTableViewCell: newTableViewCell, subscribeButtonTappedFor youtuber: String) {
        
        let newcell = youtuberTableViewCell
        print(newcell.nameLabel.text ?? "")
        
        
    }
    
}
