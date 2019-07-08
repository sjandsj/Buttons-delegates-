//
//  newTableViewCell.swift
//  buttonTableView
//
//  Created by Rails on 05/07/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

// Only class object can conform to this protocol (struct/enum can't)
protocol YoutuberTableViewCellDelegate: AnyObject {
    func youtuberTableViewCell(name: String, address: String)
}


// Only class object can conform to this protocol (struct/enum can't)
protocol YoutuberTableViewCellDelegateNew: AnyObject {
    func youtuberTableViewCell(_ youtuberTableViewCell: newTableViewCell, subscribeButtonTappedFor youtuber: String)
}

protocol dataPassing {
    func passingMyData(name: String, address: String, profilePic: UIImageView)
}

class newTableViewCell: UITableViewCell {

    @IBOutlet var userProfileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    var delegate : dataPassing!
    var delegate1 : YoutuberTableViewCellDelegate?
     var delegatenew : YoutuberTableViewCellDelegateNew?

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func detailsButtonAction(_ sender: Any) {
       // self.delegate1?.youtuberTableViewCell(name: "", address: "")
        
        self.delegatenew?.youtuberTableViewCell(self, subscribeButtonTappedFor: "HELLO")
        //self.delegate.passingMyData(name: nameLabel.text!, address: locationLabel.text!, profilePic: userProfileImageView)
    }
}
