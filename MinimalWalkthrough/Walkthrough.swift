//
//  Walkthrough.swift
//  MinimalWalkthrough
//
//  Created by Sonar on 12/22/18.
//  Copyright © 2018 Sonar. All rights reserved.
//

import UIKit

class Walkthrough {
    
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor) {
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    
    static func fetchWalkthrough() -> [Walkthrough] {
        
        return [
            Walkthrough(title: "Copy Instagram Link", featuredImage: UIImage(named: "1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Walkthrough(title: "Click to paste the link", featuredImage: UIImage(named: "1")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
            Walkthrough(title: "Save your downloaded video", featuredImage: UIImage(named: "1")!, color: UIColor(red: 105/255.0, green: 80/255.0, blue: 227/255.0, alpha: 0.8))
        ]
    }
    
}
