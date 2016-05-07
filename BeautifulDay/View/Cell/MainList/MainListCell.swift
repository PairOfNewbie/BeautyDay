//
//  MainListCell.swift
//  BeautifulDay
//
//  Created by DaiFengyi on 16/5/3.
//  Copyright © 2016年 PairOfNewbie. All rights reserved.
//

import UIKit
import SnapKit
class MainListCell: UITableViewCell {
    @IBOutlet weak var bgView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mpViewContrainer: UIView!
    var mpView: MusicPlayBar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mpView = NSBundle.mainBundle().loadNibNamed("MusicPlayBar", owner: self, options: nil).last as! MusicPlayBar
        mpViewContrainer.addSubview(mpView)
        mpView.snp_makeConstraints { [unowned self](make) in
            make.edges.equalTo(self.mpViewContrainer)
        }
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}