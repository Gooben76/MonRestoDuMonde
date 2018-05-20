//
//  PlatView.swift
//  MonRestoDuMonde
//
//  Created by Benoît Goossens on 20/05/18.
//  Copyright © 2018 Benoît Goossens. All rights reserved.
//

import UIKit

class PlatView: UIView {

    var typeDePlat: UILabel?
    var imageDuPlat: UIImageView?
    var descDuPlat: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func miseEnPlace(plat:Plat){
        typeDePlat = UILabel(frame: CGRect(x: 20, y: 0, width: frame.width-40, height: 50))
        typeDePlat?.text = convertirTypeEnPlat(type: plat.type)
        typeDePlat?.font = FONT_DE_BASE
        typeDePlat?.textColor = GRIS_TRES_CLAIR
        typeDePlat?.numberOfLines = 1
        typeDePlat?.textAlignment = .left
        guard typeDePlat != nil else {return}
        addSubview(typeDePlat!)
        var maxY = typeDePlat!.frame.maxY
        
        imageDuPlat = UIImageView(frame: CGRect(x: 0, y: maxY, width: frame.width, height: 200))
        imageDuPlat?.image = plat.image
        imageDuPlat?.contentMode = .scaleAspectFill
        imageDuPlat?.clipsToBounds = true
        guard imageDuPlat != nil else {return}
        addSubview(imageDuPlat!)
        maxY = imageDuPlat!.frame.maxY
        
        descDuPlat = UILabel(frame: CGRect(x: 20, y: maxY, width: frame.width-40, height: 100))
        descDuPlat?.text = plat.desc
        descDuPlat?.textColor = GRIS_TRES_CLAIR
        descDuPlat?.textAlignment = .center
        descDuPlat?.font = FONT_DE_BASE
        descDuPlat?.numberOfLines = 0
        guard descDuPlat != nil else {return}
        addSubview(descDuPlat!)
        maxY = descDuPlat!.frame.maxY
    }
    
    func convertirTypeEnPlat(type:Type)->String {
        switch type {
            case .entree: return "Entrée"
            case .platPrincipal: return "Plat principal"
            case .dessert : return "Dessert"
        }
    }
}
