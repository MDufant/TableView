//
//  ViewController.swift
//  TableView
//
//  Created by Marine Dufant on 16/12/2019.
//  Copyright © 2019 Marine Dufant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let identifier = "photoCell"
    var photo = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("photo-"){
                photo.append(item)
            }
        }
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TableViewCell
        let row  = indexPath.row
        
        cell.imgName.text = photo[row]
        cell.img.image = UIImage(named: photo[row])
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPhoto"{
            let showPhotoVC = segue.destination as! ShowPhotoViewController
            let row = tableView.indexPathForSelectedRow!.row
            showPhotoVC.photoInfo = photo[row]
        }
    }
    


}

