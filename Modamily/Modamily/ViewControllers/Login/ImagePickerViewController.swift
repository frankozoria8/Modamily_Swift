//
//  ImagePickerViewController.swift
//  Tomo
//
//  Created by admin on 12/7/17.
//  Copyright © 2017 Karel Vacek. All rights reserved.
//

import UIKit
import Photos

protocol ImagePickerViewControllerDelegate {
    func didSelectProfileImage(_ image: UIImage)
}

class ImagePickerViewController: BaseViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var selectedImage: UIImage!
    
    let requestOptions = PHImageRequestOptions()
    let fetchOptions = PHFetchOptions()
    
    var delegate: ImagePickerViewControllerDelegate?
    
    var assets: [Any] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupViews()
    }
    
    // MARK: - Life Cycling
    func setupViews() {
        PHPhotoLibrary.requestAuthorization { (status) in
            switch status {
            case .authorized:
                print("Good to proceed")
                self.fetchPhotos()
            case .denied, .restricted:
                print("Not allowed")
            case .notDetermined:
                print("Not determined yet")
            }
        }
    }
    
    func fetchPhotos() {
        requestOptions.resizeMode = .fast
        requestOptions.version = .current
        requestOptions.deliveryMode = .fastFormat
        requestOptions.isSynchronous = true
        
        fetchOptions.predicate = NSPredicate(format: "mediaType == %d", PHAssetMediaType.image.rawValue)
        fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
        fetchOptions.fetchLimit = 0
        
        DispatchQueue.global().async {
            let fetchResults = PHAsset.fetchAssets(with: .image, options: self.fetchOptions)
            fetchResults.enumerateObjects({ object, index, stop in
                let asset = object
                self.assets.append(asset)
            })
            DispatchQueue.main.async() {
                self.collectionView.reloadData()
            }
        }
    }
    
    // MARK: - IBAction
    @IBAction func takePhoto(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
//    @IBAction func goToTop(_ sender: Any) {
//        self.collectionView.scrollToItem(at: IndexPath.init(row: 0, section: 0), at: .top, animated: true)
//    }
    
//    // MARK: - Prepare segue
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ProfileIdentitySeque" {
//            let profileIdentityVC = segue.destination as! ProfileIdentityViewController
//            profileIdentityVC.profileImage = selectedImage
//        }
//    }
}

extension ImagePickerViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return assets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoGalleryCell", for: indexPath as IndexPath) as! PhotoGalleryCollectionViewCell
        // Configure the cell
        cell.delegate = self
        cell.loadImageWithAsset(self.assets[indexPath.row], index: indexPath.row)
        cell.loadAsset()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if let cell = cell as? PhotoGalleryCollectionViewCell, let requestId = cell.requestId {
            PHImageManager.default().cancelImageRequest(PHImageRequestID(requestId))
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath as IndexPath, animated: false)
        
        let cell = collectionView.cellForItem(at: indexPath) as! PhotoGalleryCollectionViewCell
        if let image = cell.photo {
            self.selectedImage = image
            
            if let delegate = self.delegate {
                self.dismiss(animated: true, completion: nil)
                delegate.didSelectProfileImage(image)
            } else {
//                self.performSegue(withIdentifier: "ProfileIdentitySeque", sender: nil)
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width  = collectionView.bounds.size.width / 3 - 4
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4.0
    }
}

extension ImagePickerViewController: PhotoGalleryCollectionViewCellDelegate {
    func didFinishLoadImages(_ image: UIImage, index: Int) {
        self.assets[index] = image
    }
}

extension ImagePickerViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true, completion: nil)
        print(info)
        
        let image = info[UIImagePickerControllerEditedImage] as! UIImage
        self.selectedImage = image
        if let delegate = self.delegate {
            self.dismiss(animated: true, completion: nil)
            delegate.didSelectProfileImage(image)
        } else {
//            self.performSegue(withIdentifier: "ProfileIdentitySeque", sender: nil)
        }
    }
}
