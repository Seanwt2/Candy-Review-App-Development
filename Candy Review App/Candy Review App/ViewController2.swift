//
//  ViewController2.swift
//  Candy Review App
//
//  Created by Sean Taylor on 11/3/23.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    var Hardcandy = ["Candy 0","Candy 1","Candy 2","Candy 3","Candy 4"]
    //candies ^
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Hardcandy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                       let text = Hardcandy[indexPath.row]
                       cell.textLabel?.text = text
                       return cell
    }
    
    
    
    func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
    tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
