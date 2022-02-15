//
//  ViewController.swift
//  InstaClone-Murzaliev
//
//  Created by Samat Murzaliev on 13.02.2022.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private lazy var screenLayout = UIView()
    
    private lazy var mainTableView = UITableView()
    
    private lazy var bottomBar = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(MainTableViewCell.self, forCellReuseIdentifier: "MainTableViewCell")
        mainTableView.register(StoriesTableViewCell.self, forCellReuseIdentifier: "StoriesTableViewCell")

        makeScreen()
        
    }
    
    //MARK: - Элементы ленты
    
    private var feeds: [FeedModel] = [
        FeedModel(profileImage: UIImage(named: "profile1")!, profileLabel: "Andrey Butsman", profileLocation: "Monte Carlo", feedImage: UIImage(named: "feed1")!, likesLabel: "Нравится mercedes.kg и другим", feedText: "Enjoying Weather!!"),
        FeedModel(profileImage: UIImage(named: "profile2")!, profileLabel: "Azamat Nogoibaev", profileLocation: "Issyk-Kul Lake, Kyrgyzstan", feedImage: UIImage(named: "feed2")!, likesLabel: "Нравится kloop.kg и другим", feedText: "Как вам Иссык-Куль сегодня?"),
        FeedModel(profileImage: UIImage(named: "profile3")!, profileLabel: "Medet Suleimen", profileLocation: "Almata, Kazakhstan", feedImage: UIImage(named: "feed3")!, likesLabel: "Нравится osce и другим", feedText: "Наслаждаясь тишиной"),
        FeedModel(profileImage: UIImage(named: "profile1")!, profileLabel: "Andrey Butsman", profileLocation: "Monte Carlo", feedImage: UIImage(named: "feed1")!, likesLabel: "Нравится mercedes.kg и другим", feedText: "Enjoying Weather!!"),
        FeedModel(profileImage: UIImage(named: "profile2")!, profileLabel: "Azamat Nogoibaev", profileLocation: "Issyk-Kul Lake, Kyrgyzstan", feedImage: UIImage(named: "feed2")!, likesLabel: "Нравится kloop.kg и другим", feedText: "Как вам Иссык-Куль сегодня?"),
        FeedModel(profileImage: UIImage(named: "profile3")!, profileLabel: "Medet Suleimen", profileLocation: "Almata, Kazakhstan", feedImage: UIImage(named: "feed3")!, likesLabel: "Нравится osce и другим", feedText: "Наслаждаясь тишиной"),
        FeedModel(profileImage: UIImage(named: "profile1")!, profileLabel: "Andrey Butsman", profileLocation: "Monte Carlo", feedImage: UIImage(named: "feed1")!, likesLabel: "Нравится mercedes.kg и другим", feedText: "Enjoying Weather!!"),
        FeedModel(profileImage: UIImage(named: "profile2")!, profileLabel: "Azamat Nogoibaev", profileLocation: "Issyk-Kul Lake, Kyrgyzstan", feedImage: UIImage(named: "feed2")!, likesLabel: "Нравится kloop.kg и другим", feedText: "Как вам Иссык-Куль сегодня?"),
        FeedModel(profileImage: UIImage(named: "profile3")!, profileLabel: "Medet Suleimen", profileLocation: "Almata, Kazakhstan", feedImage: UIImage(named: "feed3")!, likesLabel: "Нравится osce и другим", feedText: "Наслаждаясь тишиной")
    ]
    
    private func makeScreen() {
        
        //MARK: - Добавление элементов View
        
        view.addSubview(screenLayout)
        screenLayout.backgroundColor = .white
        screenLayout.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        screenLayout.addSubview(mainTableView)
        mainTableView.showsVerticalScrollIndicator = false
        mainTableView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(self.view.frame.height - 80)
        }
        
        let lineView = UIView()
        lineView.layer.borderColor = UIColor.darkGray.cgColor
        lineView.layer.borderWidth = 1
        lineView.layer.shadowColor = UIColor.lightGray.cgColor
        //        lineView.layer.shadowOffset = CGSize(width: 15, height: 15)
        lineView.layer.shadowRadius = CGFloat(5)
        screenLayout.addSubview(lineView)
        lineView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(mainTableView.snp.bottom)
            make.height.equalTo(2)
        }
        
        //MARK: - Добавление элементов в NavigationBar
        
        let labelImage = UIImageView(image: UIImage(named: "logo-label"))
        labelImage.contentMode = .scaleAspectFit
        
        let leftImage = UIImageView(image: UIImage(systemName: "camera"))
        let rightImage = UIImageView(image: UIImage(systemName: "paperplane"))
        
        navigationController?.navigationBar.addSubview(leftImage)
        leftImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(5)
            make.width.equalTo(35)
            make.height.equalTo(30)

        }
        
        navigationController?.navigationBar.addSubview(rightImage)
        rightImage.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(5)
            make.width.equalTo(35)
            make.height.equalTo(30)

        }
        
        navigationController?.navigationBar.addSubview(labelImage)
        labelImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            
        }
        
        
        //MARK: - Нижний StackView с кнопками из SF Symbols
        
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 24, weight: .semibold, scale: .large)
        
        let imageHome = UIImage(systemName: "house.fill", withConfiguration: largeConfig)
        let imageSearch = UIImage(systemName: "magnifyingglass", withConfiguration: largeConfig)
        let imageAdd = UIImage(systemName: "plus.app", withConfiguration: largeConfig)
        let imageHeart = UIImage(systemName: "heart.fill", withConfiguration: largeConfig)
        let imageProfile = UIImage(systemName: "person.crop.circle", withConfiguration: largeConfig)
        
        
        let bottomButtonHome = UIButton(type: .system)
        bottomButtonHome.setImage(imageHome, for: .normal)
        
        let bottomButtonSearch = UIButton(type: .system)
        bottomButtonSearch.setImage(imageSearch, for: .normal)
        
        let bottomButtonAdd = UIButton(type: .system)
        bottomButtonAdd.setImage(imageAdd, for: .normal)
        
        let bottomButtonHeart = UIButton(type: .system)
        bottomButtonHeart.setImage(imageHeart, for: .normal)
        
        let bottomButtonProfile = UIButton(type: .system)
        bottomButtonProfile.setImage(imageProfile, for: .normal)
        
        screenLayout.addSubview(bottomBar)
        
        bottomBar.addArrangedSubview(bottomButtonHome)
        bottomBar.addArrangedSubview(bottomButtonSearch)
        bottomBar.addArrangedSubview(bottomButtonAdd)
        bottomBar.addArrangedSubview(bottomButtonHeart)
        bottomBar.addArrangedSubview(bottomButtonProfile)
        
        
        
        bottomBar.axis = .horizontal
        bottomBar.distribution = .fillEqually
        bottomBar.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(lineView.snp.bottom)
            make.height.equalTo(60)
        }
        
    }
    
    
}

//MARK: - Делегаты главной UITableView на экране

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let index = indexPath.row
        
        if index != 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
            cell.profileLabel.text = feeds[index].profileLabel
            cell.profileImage.image = feeds[index].profileImage
            cell.profileLocation.text = feeds[index].profileLocation
            cell.feedImage.image = feeds[index].feedImage
            cell.likesLabel.text = feeds[index].likesLabel
            cell.feedText.text = feeds[index].feedText
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
            
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let index = indexPath.item
        
        if index != 0 {
            return CGFloat(535)

        } else {
            return CGFloat(84)
        }
    }
    
}

