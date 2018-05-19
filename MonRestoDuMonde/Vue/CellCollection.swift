//
//  CellCollection.swift
//  MonRestoDuMonde
//
//  Created by Benoît Goossens on 19/05/18.
//  Copyright © 2018 Benoît Goossens. All rights reserved.
//

import UIKit

class CellCollection: UICollectionViewCell {
    
    @IBOutlet weak var monMenuImage: UIImageView!
    @IBOutlet weak var monMenuLabel: UILabel!
    @IBOutlet weak var viewMenu: UIView!
    
    var menu:Menu!
    
    func miseEnPlace(menu:Menu){
        self.menu = menu
        viewMenu.layer.cornerRadius = 10
        viewMenu.layer.borderColor = NOIR.cgColor
        viewMenu.layer.borderWidth = 1
        
        monMenuImage.image = menu.image
        monMenuImage.contentMode = .scaleAspectFill
        monMenuImage.clipsToBounds = true
        monMenuImage.layer.cornerRadius = monMenuImage.frame.height/2
        monMenuImage.layer.borderColor = GRIS_TRES_CLAIR.cgColor
        monMenuImage.layer.borderWidth = 2
        
        monMenuLabel.text = "Menu " + menu.pays
        monMenuLabel.textColor = GRIS_TRES_FONCE
        monMenuLabel.textAlignment = .center
        monMenuLabel.font = FONT_DE_BASE
        monMenuLabel.adjustsFontSizeToFitWidth = true
    }
}
