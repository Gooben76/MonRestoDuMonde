//
//  ALaCarte.swift
//  MonRestoDuMonde
//
//  Created by Benoît Goossens on 20/05/18.
//  Copyright © 2018 Benoît Goossens. All rights reserved.
//

import UIKit

class ALaCarte{
    
    private var _type:Type
    private var _plats:[Plat]
    
    var type:Type{
        return self._type
    }
    var plats:[Plat]{
        return self._plats
    }
    
    init(type:Type) {
        self._type = type
        self._plats = LesPlats.obtenir.ajouterPlatALaCarte(type: self._type)
    }
}
