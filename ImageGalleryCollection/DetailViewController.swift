//
//  DetailViewController.swift
//  ImageGalleryCollection
//
//  Created by Jaime Jazareno III on 03/01/2018.
//  Copyright © 2018 Jaime Jazareno III. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var sendData: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: sendData)
        
        if imageView.image == UIImage(named: "Image1"){
            label.text = "Image 1"
            textView.text = "Image 1"
        }
        else if imageView.image == UIImage(named: "Image2"){
            label.text = "Image 2"
            textView.text = "Image 2"
        }
        else if imageView.image == UIImage(named: "Image3"){
            label.text = "Image 3"
            textView.text = "Image 3"
        }
        else if imageView.image == UIImage(named: "Image4"){
            label.text = "Image 4"
            textView.text = "Image 4"
        }
        else if imageView.image == UIImage(named: "Image5"){
            label.text = "Image 5"
            textView.text = "Image 5"
        }
        else if imageView.image == UIImage(named: "Image6"){
            label.text = "Image 6"
            textView.text = "Image 6"
        }
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
