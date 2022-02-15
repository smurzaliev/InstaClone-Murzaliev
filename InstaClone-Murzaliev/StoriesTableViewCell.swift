//
//  StoriesTableViewCell.swift
//  InstaClone-Murzaliev
//
//  Created by Samat Murzaliev on 15.02.2022.
//

import UIKit
import SnapKit

class StoriesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Элементы сторис
    
    private var stories: [UIImage] = [
        UIImage(named: "feed1")!, UIImage(named: "feed2")!, UIImage(named: "feed3")!, UIImage(named: "profile1")!, UIImage(named: "profile2")!, UIImage(named: "profile3")!,UIImage(named: "feed1")!, UIImage(named: "feed2")!, UIImage(named: "feed3")!, UIImage(named: "profile1")!, UIImage(named: "profile2")!, UIImage(named: "profile3")!
    ]
    
    //MARK: - Делегаты UICollectionView
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 80, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let index = indexPath.item
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCollectionViewCell", for: indexPath) as! StoriesCollectionViewCell
        cell.storyImage.image = stories[index]
        return cell
    }
    
    
    let scrollView: UICollectionView = {
        let flow = UICollectionViewFlowLayout()
        flow.scrollDirection = .horizontal
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: flow)
        view.showsHorizontalScrollIndicator = false
        view.register(StoriesCollectionViewCell.self, forCellWithReuseIdentifier: "StoriesCollectionViewCell")
                
        return view
    }()
    


    override func layoutSubviews() {
        addSubview(scrollView)

        
        scrollView.delegate = self
        scrollView.dataSource = self
        scrollView.register(StoriesCollectionViewCell.self, forCellWithReuseIdentifier: "StoriesCollectionViewCell")
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}
