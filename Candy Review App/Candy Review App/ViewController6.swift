//
//  ViewController6.swift
//  Candy Review App
//
//  Created by Sean Taylor on 11/3/23.
//

import UIKit

class ViewController6: UIViewController {

    @IBOutlet weak var candyCornText: UITextView!

    @IBOutlet weak var candyCornTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        candyCornText.text = "A classic candy that doesn't grow old, literally! The perfect candy for trick-or-treaters, or a quick  Halloween snack."
        candyCornTitle.text = "Candy Corn"
        
        
        
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
