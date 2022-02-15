//
//  MainTableViewCell.swift
//  InstaClone-Murzaliev
//
//  Created by Samat Murzaliev on 14.02.2022.
//

import UIKit
import SnapKit

class MainTableViewCell: UITableViewCell {
    
    var profileImage = UIImageView()
    
    var profileLabel = UILabel()
    
    var profileLocation = UILabel()
    
    var profileButtonRight = UIButton(type: .system)
    
    var feedImage = UIImageView()
    
    var likeButton = UIButton(type: .system)
    
    var commentButton = UIButton(type: .system)
    
    var shareButton = UIButton(type: .system)
    
    var bookmarkButton = UIButton(type: .system)
    
    var likesLabel = UILabel()
    
    var feedText = UILabel()
    
    var timeStamp = UILabel()

    override func layoutSubviews() {
        
        addSubview(profileImage)
        profileImage.layer.cornerRadius = 20
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleAspectFit
        profileImage.layer.borderWidth = 1
        profileImage.layer.shadowColor = UIColor.red.cgColor
        profileImage.snp.makeConstraints { make in
            make.height.width.equalTo(40)
            make.top.equalToSuperview().offset(3)
            make.left.equalToSuperview().offset(3)
        }
        
        addSubview(profileLabel)
        profileLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        profileLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top)
            make.left.equalTo(profileImage.snp.right).offset(3)
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 100)
        }
        
        addSubview(profileLocation)
        profileLocation.font = .systemFont(ofSize: 14, weight: .medium)
        profileLocation.snp.makeConstraints { make in
            make.top.equalTo(profileLabel.snp.bottom)
            make.left.equalTo(profileLabel.snp.left)
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 100)
        }
        
        addSubview(profileButtonRight)
        profileButtonRight.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        profileButtonRight.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(3)
            make.top.equalToSuperview().offset(5)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        addSubview(feedImage)
        feedImage.contentMode = .scaleAspectFit
        feedImage.snp.makeConstraints { make in
            make.height.equalTo(self.frame.width)
            make.width.equalTo(self.frame.width)
            make.top.equalTo(profileImage.snp.bottom).offset(5)
            make.left.right.equalToSuperview()
        }
        
        addSubview(likeButton)
        likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        likeButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.left.equalToSuperview().offset(5)
            make.top.equalTo(feedImage.snp.bottom).offset(5)
        }
        
        addSubview(commentButton)
        commentButton.setImage(UIImage(systemName: "message"), for: .normal)
        commentButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.top.equalTo(likeButton.snp.top)
            make.left.equalTo(likeButton.snp.right).offset(5)
            
        }
        
        addSubview(shareButton)
        shareButton.setImage(UIImage(systemName: "paperplane"), for: .normal)
        shareButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.top.equalTo(likeButton.snp.top)
            make.left.equalTo(commentButton.snp.right).offset(5)
            
        }
        
        addSubview(bookmarkButton)
        bookmarkButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
        bookmarkButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(feedImage.snp.bottom).offset(5)
        }
        
        addSubview(likesLabel)
        likesLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        likesLabel.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 30)
            make.left.equalToSuperview().offset(5)
            make.top.equalTo(likeButton.snp.bottom).offset(3)
        }
        
        addSubview(feedText)
        feedText.font = .systemFont(ofSize: 14, weight: .medium)
        feedText.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 30)
            make.left.equalToSuperview().offset(5)
            make.top.equalTo(likesLabel.snp.bottom).offset(3)
        }
        
    }

}
