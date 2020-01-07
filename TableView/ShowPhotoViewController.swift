//
//  ShowPhotoViewController.swift
//  TableView
//
//  Created by Marine Dufant on 07/01/2020.
//  Copyright © 2020 Marine Dufant. All rights reserved.
//

import UIKit

class ShowPhotoViewController: UIViewController {

    var photoInfo : String?
    @IBOutlet weak var photo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let filename = photoInfo{
            photo.image = UIImage(named: filename)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
