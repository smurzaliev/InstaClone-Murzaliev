//
//  MainTableViewCell.swift
//  InstaClone-Murzaliev
//
//  Created by Samat Murzaliev on 14.02.2022.
//

import UIKit
import SnapKit

class MainTableViewCell: UITableViewCell {
    
    var profileImage: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFit
        view.layer.borderWidth = 1
        view.layer.shadowColor = UIColor.red.cgColor
        return view
    }()
    
    var profileLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        return view
    }()
    
    var profileLocation: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .medium)
        return view
    }()
    
    var profileButtonRight: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        return view
    }()
    
    var feedImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    var likeButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "heart"), for: .normal)
        return view
    }()
    
    var commentButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "message"), for: .normal)
        return view
    }()
    
    var shareButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "paperplane"), for: .normal)
        return view
    }()
    
    var bookmarkButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "bookmark"), for: .normal)
        return view
    }()
    
    var likesLabel: UILabel = {
        let view  = UILabel()
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        return view
    }()
    
    var feedText: UILabel = {
        let view  = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .medium)
        return view
    }()
    
    var timeStamp = UILabel()

    override func layoutSubviews() {
        
        addSubview(profileImage)
        profileImage.snp.makeConstraints { make in
            make.height.width.equalTo(40)
            make.top.equalToSuperview().offset(3)
            make.left.equalToSuperview().offset(3)
        }
        
        addSubview(profileLabel)
        profileLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top)
            make.left.equalTo(profileImage.snp.right).offset(3)
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 100)
        }
        
        addSubview(profileLocation)
        profileLocation.snp.makeConstraints { make in
            make.top.equalTo(profileLabel.snp.bottom)
            make.left.equalTo(profileLabel.snp.left)
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 100)
        }
        
        addSubview(profileButtonRight)
        profileButtonRight.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(3)
            make.top.equalToSuperview().offset(5)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        addSubview(feedImage)
        feedImage.snp.makeConstraints { make in
            make.height.equalTo(self.frame.width)
            make.width.equalTo(self.frame.width)
            make.top.equalTo(profileImage.snp.bottom).offset(5)
            make.left.right.equalToSuperview()
        }
        
        addSubview(likeButton)
        likeButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.left.equalToSuperview().offset(5)
            make.top.equalTo(feedImage.snp.bottom).offset(5)
        }
        
        addSubview(commentButton)
        commentButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.top.equalTo(likeButton.snp.top)
            make.left.equalTo(likeButton.snp.right).offset(5)
        }
        
        addSubview(shareButton)
        shareButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.top.equalTo(likeButton.snp.top)
            make.left.equalTo(commentButton.snp.right).offset(5)
        }
        
        addSubview(bookmarkButton)
        bookmarkButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(feedImage.snp.bottom).offset(5)
        }
        
        addSubview(likesLabel)
        likesLabel.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 30)
            make.left.equalToSuperview().offset(5)
            make.top.equalTo(likeButton.snp.bottom).offset(3)
        }
        
        addSubview(feedText)
        feedText.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(self.frame.width - 30)
            make.left.equalToSuperview().offset(5)
            make.top.equalTo(likesLabel.snp.bottom).offset(3)
        }
    }
}
