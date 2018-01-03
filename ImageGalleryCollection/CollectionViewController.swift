//
//  CollectionViewController.swift
//  ImageGalleryCollection
//
//  Created by Jaime Jazareno III on 03/01/2018.
//  Copyright © 2018 Jaime Jazareno III. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    var images = ["Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6","Image1","Image2","Image3","Image4","Image5","Image6",]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
    
        // Configure the cell
        cell.cellImage.image = UIImage(named: images[indexPath.row])
        return cell
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionView, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screenSize : CGRect = UIScreen.main.bounds
        var widthCell = 0
        var heightCell = 0
        
        
        if screenSize.width == 320 {
            heightCell = 75
            widthCell = 75
        }
        else if screenSize.width == 320 {
            heightCell = 100
            widthCell = 100
        }
        else if screenSize.width == 414 {
            heightCell = 115
            widthCell = 115
        }
        return CGSize(width: widthCell, height: heightCell)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.collectionView?.indexPath(for: sender as! UICollectionViewCell) {
                let detailView = segue.destination as! DetailViewController
                
                detailView.sendData = images[indexPath.row] as String
            }
        }
    }

}
