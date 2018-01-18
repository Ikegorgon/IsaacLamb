//
//  CreativityController.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/8/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class CreativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsests = UIEdgeInsets(top:50.0, left: 20.0, bottom:50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] = {
        return [
            UIImage(named: "Pic1"),
            UIImage(named: "Pic2"),
            UIImage(named: "Pic3"),
            UIImage(named: "Pic4"),
            UIImage(named: "Pic5"),
            UIImage(named: "Pic6"),
            UIImage(named: "Pic7"),
            UIImage(named: "Pic8"),
            UIImage(named: "Pic9"),
            UIImage(named: "Pic10"),
            UIImage(named: "Pic11"),
            UIImage(named: "Pic12"),
            UIImage(named: "Pic13"),
            UIImage(named: "Pic14"),
            UIImage(named: "Pic15")
        ]
    }()
    
    var largePhotoIndexPath: IndexPath? {
        didSet {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue {
                indexPaths.append(oldValue)
            }
            collectionView?.performBatchUpdates({
                self.collectionView?.reloadItems(at:indexPaths)
            })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath, at: .centeredVertically, animated: true)
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return artSelection.count
    }
    override public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        artCell.backgroundColor = .black
        artCell.imageView.image = artSelection[indexPath.row]
        artCell.imageName.text = "@ianericksonphotography"
        
        return artCell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath == largePhotoIndexPath {
            let art = artSelection[indexPath.row]
            let size = collectionView.bounds.size
            let widthScale = (size.width / art!.size.width) * CGFloat(0.90)
            let largeSize = CGSize(width:art!.size.width * widthScale, height: art!.size.height + 30)
            return largeSize
        }
        let paddingSpace = sectionInsests.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height : widthPerItem)
    }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsests
    }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsests.right
    }
    override public func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        if largePhotoIndexPath == indexPath {
            largePhotoIndexPath = nil
        } else {
            largePhotoIndexPath = indexPath
        }
        return false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
