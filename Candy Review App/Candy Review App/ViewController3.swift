//
//  ViewController3.swift
//  Candy Review App
//
//  Created by Sean Taylor on 11/3/23.
//
//TWO
import UIKit


class ViewController3: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var Softcandy = ["Skittles","Sour Patch","Airheads","Candy Corn (Again)"]
    var ratingsArray = ["5","5","3","5"]
    
    //part 8
    var CategoryTwoImagesData = [String](arrayLiteral: "Skittles","Sour Patch","Airheads","Candy Corn (Again)")
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //part 8
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        var CategoryTwoImagesData = dict!.object(forKey: "CategoryTwoImages") as! [String]
    }
  
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Softcandy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                       let text = Softcandy[indexPath.row]
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
        if segue.identifier == "mySegue2"
        {
            let s1 = segue.destination as! thirdDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = CategoryTwoImagesData[imageIndex!]
        }
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


