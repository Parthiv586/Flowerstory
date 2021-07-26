import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var a1 = ["Flower1","Flower2","Flower3","Flower4"]
    var a2 = ["details..","details","details","details"]
    
    var a3 = [ #imageLiteral(resourceName: "flower"),#imageLiteral(resourceName: "flower2"),#imageLiteral(resourceName: "flower3"),#imageLiteral(resourceName: "flower3")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell =  tableView.dequeueReusableCell(withIdentifier: "c") as! TableViewCell
        cell.l1.text = a1[indexPath.row]
        cell.l2.text = a2[indexPath.row]
        cell.img.image = a3[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
            
    }


}

