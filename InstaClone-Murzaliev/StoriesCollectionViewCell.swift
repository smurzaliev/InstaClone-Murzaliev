//
//  StoriesCollectionViewCell.swift
//  InstaClone-Murzaliev
//
//  Created by Samat Murzaliev on 15.02.2022.
//

import UIKit
import SnapKit

class StoriesCollectionViewCell: UICollectionViewCell {
    var storyImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 40
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor.red.cgColor
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override func layoutSubviews() {
        addSubview(storyImage)
        storyImage.snp.makeConstraints { make in
            make.edges.equalToSuperview().offset(2)
        }
    }
}
