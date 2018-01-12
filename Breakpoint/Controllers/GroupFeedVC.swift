//
//  GroupFeedVC.swift
//  Breakpoint
//
//  Created by Jeffrey Santana on 1/12/18.
//  Copyright © 2018 Jefffrey Santana. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

	//Outlets
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var groupTitleLbl: UILabel!
	@IBOutlet weak var membersLbl: UILabel!
	@IBOutlet weak var sendBtnView: UIView!
	@IBOutlet weak var messageTextField: UIStackView!
	@IBOutlet weak var sendBtn: UIButton!
	
	//Variables
	var group: Group?
	
	override func viewDidLoad() {
        super.viewDidLoad()
		sendBtnView.bindToKeyboard()
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		groupTitleLbl.text = group?.groupTitle
		
		DataService.instance.getEmails(group: group!) { (returnedEmails) in
			self.membersLbl.text = returnedEmails.joined(separator: ", ")
		}
	}
	
	func initData(forGroup group: Group) {
		self.group = group
	}

	@IBAction func backBtnPressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func sendBtnPressed(_ sender: Any) {
	}
	
	
}
