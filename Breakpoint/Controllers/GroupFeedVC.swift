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
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBAction func backBtnPressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func sendBtnPressed(_ sender: Any) {
		sendBtnView.bindToKeyboard()
	}
	
	
}
