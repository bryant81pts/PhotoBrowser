//
//  HomeCollectionViewLayout.swift
//  PhotoBrowser
//
//  Created by  Mac on 16/4/28.
//  Copyright © 2016年 dalpha. All rights reserved.
//

import UIKit

class HomeCollectionViewLayout: UICollectionViewFlowLayout {

    /**
     Tells the layout object to update the current layout.
     Layout updates occur the first time the collection view presents its content and whenever the layout is invalidated explicitly or implicitly because of a change to the view. During each layout update, the collection view calls this method first to give your layout object a chance to prepare for the upcoming layout operation.
     The default implementation of this method does nothing. Subclasses can override it and use it to set up data structures or perform any initial computations needed to perform the layout later.
     */
    override func prepareLayout() {
        
        //item之间的间距
        let margin : CGFloat = 10
        //列数
        let colums : CGFloat = 3
        
        //计算item的宽度
        let itemWidth : CGFloat = (UIScreen.mainScreen().bounds.width - (colums + 1) * margin) / colums
        
        minimumLineSpacing = margin
        minimumInteritemSpacing = margin
        
        itemSize = CGSize(width: itemWidth, height: itemWidth)
     
        //假如scroll view嵌套了navigation controller 那么为了不让scroll view的内容被 navigation bar挡住 所以系统会将scroll view的内边距增加64,但如果自己设置scroll view的contentInset,系统就不会帮增加内边距,需要自己设置
        collectionView?.contentInset = UIEdgeInsets(top: margin + 64, left: margin, bottom: margin, right: margin)
        
    }
    
    
}
