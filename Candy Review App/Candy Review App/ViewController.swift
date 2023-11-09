//
//  ViewController.swift
//  Candy Review App
//
//  Created by Sean Taylor on 11/1/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var homeTitle: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        background.image = UIImage(named: "Candy App")
        
homeTitle.text = "Candy of the Day: Candy Corn"
        imageView.image = UIImage(named: "Candy Corn")
    }
    
}


