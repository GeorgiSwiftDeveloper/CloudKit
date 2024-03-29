//
//  ViewController.swift
//  CloudKit
//
//  Created by Georgi Malkhasyan on 6/28/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addNoteBtn(_ sender: Any) {
        let alert = UIAlertController(title: "Type Something", message: "What would you like to save", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder  = "Type Note here"
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let save = UIAlertAction(title: "Save", style: .default) { (_) in
            guard let text = alert.textFields?.first?.text else {return}
            print(text)
        }
        alert.addAction(cancel)
        alert.addAction(save)
        present(alert, animated: true, completion: nil)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = ""
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
 
}

