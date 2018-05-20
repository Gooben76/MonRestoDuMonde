//
//  PlatCell.swift
//  MonRestoDuMonde
//
//  Created by Benoît Goossens on 20/05/18.
//  Copyright © 2018 Benoît Goossens. All rights reserved.
//

import UIKit

class PlatCell: UITableViewCell {

    var plat:Plat!
    
    @IBOutlet weak var imagePlat: UIImageView!
    @IBOutlet weak var descPlat: UILabel!
    
    func miseEnPlace(plat:Plat){
        self.plat = plat
        
        imagePlat.image = self.plat.image
        imagePlat.contentMode = .scaleToFill
        imagePlat.clipsToBounds = true
        imagePlat.layer.cornerRadius = 20
        
        descPlat.text = self.plat.desc
        descPlat.numberOfLines = 0
        descPlat.textAlignment = .center
        descPlat.textColor = GRIS_TRES_CLAIR
        descPlat.font = FONT_DE_BASE
        
    }
}
