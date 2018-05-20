//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by Benoît Goossens on 20/05/18.
//  Copyright © 2018 Benoît Goossens. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(Degrade())
        view.bringSubview(toFront: scroll)
        
        guard menu != nil else {return}
        
        miseEnPlace(menu: menu!)
    }

    func miseEnPlace(menu:Menu){
        let imageDuMenu = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        imageDuMenu.image = menu.image
        imageDuMenu.contentMode = .scaleAspectFill
        imageDuMenu.clipsToBounds = true
        scroll.addSubview(imageDuMenu)
        var maxY = imageDuMenu.frame.maxY
        
        let nomDuMenu = UILabel(frame: CGRect(x: 20, y: maxY, width: view.frame.width, height: 100))
        nomDuMenu.text = "Menu " + menu.pays
        nomDuMenu.textColor = UIColor.red
        nomDuMenu.font = FONT_TITRE
        nomDuMenu.numberOfLines = 1
        nomDuMenu.textAlignment = .center
        nomDuMenu.adjustsFontSizeToFitWidth = true
        scroll.addSubview(nomDuMenu)
        maxY = nomDuMenu.frame.maxY
        
        for plat:Plat in menu.plats {
            let vuePlat = PlatView(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 375))
            vuePlat.miseEnPlace(plat: plat)
            scroll.addSubview(vuePlat)
            maxY = vuePlat.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maxY+50)
        
    }
}
