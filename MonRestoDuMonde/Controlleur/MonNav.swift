//
//  MonNav.swift
//  MonRestoDuMonde
//
//  Created by Benoît Goossens on 19/05/18.
//  Copyright © 2018 Benoît Goossens. All rights reserved.
//

import UIKit

class MonNav: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.tintColor = GRIS_TRES_CLAIR
        navigationBar.barTintColor = NOIR
        navigationBar.titleTextAttributes = [.font:FONT_DE_BASE as Any, .foregroundColor:GRIS_TRES_CLAIR]
        
    }


}
