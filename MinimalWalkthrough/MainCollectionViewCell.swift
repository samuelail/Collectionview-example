//
//  MainCollectionViewCell.swift
//  MinimalWalkthrough
//
//  Created by Sonar on 12/22/18.
//  Copyright © 2018 Sonar. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var featuredLabel: UILabel!
    @IBOutlet weak var coverView: UIView!
    
    
    func displayContent(image: UIImage, title: String, cover: UIView) {
        featuredImage.image = image
        featuredLabel.text = title
        coverView = cover
    }
    
    var walkthrough: Walkthrough? {
        didSet {
            self.updateUI()
        }
    }
    
   private func updateUI() {
    if let walkthrough = walkthrough {
        featuredImage.image = walkthrough.featuredImage
        featuredLabel.text = walkthrough.title
        coverView.backgroundColor = walkthrough.color
    } else {
        featuredImage.image = nil
        featuredLabel.text = nil
        coverView.backgroundColor = nil
    }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 5
        self.clipsToBounds = false
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 5, height: 10)
    }
}
