//
//  Plat.swift
//  MonRestoDuMonde
//
//  Created by Benoît Goossens on 19/05/18.
//  Copyright © 2018 Benoît Goossens. All rights reserved.
//

import UIKit

class Plat{
    private var _type:Type
    private var _pays:String
    private var _desc:String
    private var _image:UIImage
    
    var type:Type{
        return _type
    }
    var pays:String{
        return _pays
    }
    var desc:string{
        return _desc
    }
    var image:UIImage{
        return _image
    }
    
    init(type:Type, pays:String, desc:String, image:UIImage) {
        self._type = type
        self._pays = pays
        self._desc = desc
        self._image = image
    }
}
