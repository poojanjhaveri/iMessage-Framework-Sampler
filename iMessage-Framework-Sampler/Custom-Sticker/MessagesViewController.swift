//
//  MessagesViewController.swift
//  Custom-Sticker
//
//  Created by Poojan Jhaveri on 6/15/16.
//  Copyright © 2016 Poojan Jhaveri. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        browserViewController = CustomMonkeyStickerBrowserVC(stickerSize: .small)
//        browserViewController.view.frame = self.view.frame
//        
//        self.addChildViewController(browserViewController)
//        browserViewController.didMove(toParentViewController: self)
//        self.view.addSubview(browserViewController.view)
//        
//        browserViewController.loadStickers()
//        browserViewController.stickerBrowserView.reloadData()
        
        
        let dataAsset = NSDataAsset(name: "Walk")
        
        let sitcker = MSSticker(contentsOfFileURL: NSURL.ur, localizedDescription: <#T##String#>)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




extension MessagesViewController : UICollectionViewDataSource
{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StickerCell", for: indexPath) as! StickerCell
        cell.backgroundColor = UIColor.black()
        // Configure the cell
        return cell
    }
}
