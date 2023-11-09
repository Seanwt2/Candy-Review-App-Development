//
//  ViewController4.swift
//  Candy Review App
//
//  Created by Sean Taylor on 11/3/23.
//
//THREE
import UIKit

class ViewController4: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var Chocolate = ["Lindt","Twix","Brookside Acai Bluberry","Reese's"]
    var ratingsArray = ["6","5","4.5","5"]
    
    //part 8
    var CategoryThreeImagesData = [String](arrayLiteral: "Lindt","Twix","Brookside Acai Blueberry","Reese's")
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //part 8
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        var CategoryThreecateImagesData = dict!.object(forKey: "CategoryThreeImages") as! [String]
    }

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Chocolate.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                       let text = Chocolate[indexPath.row]
                       cell.detailTextLabel?.text = ratingsArray[indexPath.row]
                       cell.textLabel?.text = text
                       return cell
        }

        func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    
    //Part 9
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue3"
        {
            let s1 = segue.destination as! fourthDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = CategoryThreeImagesData[imageIndex!]
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
