//
//  PhotoGalleryCollectionViewCell.swift
//  Tomo
//
//  Created by admin on 12/7/17.
//  Copyright © 2017 Karel Vacek. All rights reserved.
//

import UIKit
import Photos

protocol PhotoGalleryCollectionViewCellDelegate {
    func didFinishLoadImages(_ image: UIImage, index: Int)
}

class PhotoGalleryCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imgPhoto: UIImageView!
    var asset: Any!
    var photo: UIImage?
    var requestId: Int32!
    
    var index: Int!
    var delegate: PhotoGalleryCollectionViewCellDelegate?
    
    let imgManager : PHImageManager = PHImageManager.default()
    
    func loadImageWithAsset(_ asset: Any, index: Int) {
        if let id = self.requestId {
            self.imgManager.cancelImageRequest(id)
            self.requestId = nil
        }
        
        self.asset = asset
        self.index = index
    }
    
    func loadAsset() {
        
        if let asset = self.asset as? PHAsset {
            let requestOptions = PHImageRequestOptions()
            let size = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width)
            
            requestOptions.resizeMode = .fast
            requestOptions.version = .current
            requestOptions.deliveryMode = .highQualityFormat
            requestOptions.isSynchronous = false
            
            DispatchQueue.global().async {
                self.requestId = self.imgManager.requestImage(for: asset, targetSize: size, contentMode: .aspectFit, options: requestOptions, resultHandler: { (image, _) in
                    DispatchQueue.main.async {
                        self.photo = image
                        self.imgPhoto.image = self.photo
                        if let image = image {
                            self.delegate?.didFinishLoadImages(image, index: self.index)
                        }
                    }
                })
            }
        } else if let image = self.asset as? UIImage {
            self.photo = image
            self.imgPhoto.image = self.photo
        }
    }
}
