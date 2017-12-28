//
//  CreateGroupVC.swift
//  Breakpoint
//
//  Created by Jeffrey Santana on 12/27/17.
//  Copyright © 2017 Jefffrey Santana. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailsearchTextField: InsetTextField!
    @IBOutlet weak var groupMembersLbl: UILabel!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneBtnPressed(_ sender: Any) {
    }
    
}

extension CreateGroupVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as? UserCell else {
            return UITableViewCell()
        }
        let profileImage = UIImage(named: "defaultProfileImage")
        
        cell.configCell(profileImage: profileImage!, email: "dumbledore@hogwarts.com", isSelected: true)
        return cell
    }
}
