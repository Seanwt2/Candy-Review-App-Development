//
//  ViewController5.swift
//  Candy Review App
//
//  Created by Sean Taylor on 11/3/23.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var aboutMe: UITextView!
    
    @IBOutlet weak var aboutMeTitle: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        aboutMe.text = "Sean Taylor lives in Mililani, Oahu and has been a sweets critic and connoisseur for almost 19 years. He stands by his motto ''there is no such thing as ''too'' sweet, only not sweet enough.'' He has yet to meet the consequences of his heavy reviewing over the years."
        
        aboutMeTitle.text = "About the Reviewer"
        
        imageView.image = UIImage(named: "MEG Sean copy")
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
