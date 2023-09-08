//
//  FeedViewContoller.swift
//  InstaCloneFirebase
//
//  Created by Omercan Colak on 7.08.2023.
//

import UIKit
import Firebase

class FeedViewContoller: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        getDataFromFirestore()
            
        // Do any additional setup after loading the view.
    }
    
    func getDataFromFirestore() {
    
        let fireStoreDatabase = Firestore.firestore()
        
        fireStoreDatabase.collection("Posts").addSnapshotListener { (snapshot, error) in
            if error != nil {
                print(error?.localizedDescription)
            }else {
                if snapshot?.isEmpty != true  && snapshot != nil {
                    for document in snapshot!.documents {
                        let documentID = document.documentID
                        print(documentID)
                    }
                            
                    
                }
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    
    }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
            cell.userEmailLabel.text = "user@email.com"
            cell.likeLabel.text = "0"
            cell.commentLabel.text = "Comment"
            cell.userImageView.image = UIImage(named: "select2.png")
            return cell
        }


}
