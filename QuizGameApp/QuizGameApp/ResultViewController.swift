//
//  ResultViewController.swift
//  QuizGameApp
//
//  Created by Shibili Areekara on 10/11/21.
//

import UIKit

class ResultViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private var summary = ""
    private var answers = [String]()
    
    convenience init(summary: String, answers: [String]) {
        self.init()
        
        self.summary = summary
        self.answers = answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerLabel.text = summary
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
