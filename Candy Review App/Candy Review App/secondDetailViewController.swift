//
//  secondDetailViewController.swift
//  Candy Review App
//
//  Created by Sean Taylor on 11/8/23.
//

import UIKit

class secondDetailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
  
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        
        
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
