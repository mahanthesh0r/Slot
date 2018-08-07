//
//  HomeViewController.swift
//  Slot
//
//  Created by Mahanthesh R on 05/08/18.
//  Copyright © 2018 Mahanthesh. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var hall = [Hall]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadAudi()
        // Do any additional setup after loading the view.
        print(Auth.auth().currentUser?.email)
    }
    func loadAudi() {
        Database.database().reference().child("Halls").observe(.childAdded) { (snapshot: DataSnapshot) in
            if let dict = snapshot.value as? [String: Any]{
                let nameText = dict["name"] as! String
                let imageUrlString = dict["imageUrl"] as! String
                let Halls = Hall(nameText: nameText, imageUrlString: imageUrlString)
                self.hall.append(Halls)
                self.tableView.reloadData()
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension HomeViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hall.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "audiCell", for: indexPath)
        //cell.imageView?.image = hall[indexPath.row].imageUrl
        cell.textLabel?.text = hall[indexPath.row].name
        return cell
    }
}
