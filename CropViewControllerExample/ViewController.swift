//
//  ViewController.swift
//  CropViewControllerExample
//
//  Created by Tim Oliver on 2/28/17.
//  Copyright © 2017 Tim Oliver. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBAction func addPhotoButtonTapped(_ sender: AnyObject?) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        imagePicker.delegate = self
        present(imagePicker, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage

        dismiss(animated: true) { 
            let cropViewController = CropViewController(image: image)
            self.present(cropViewController, animated: true, completion: nil)
        }
    }

    @IBAction func shareButtonTapped(_ sender: AnyObject?) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

