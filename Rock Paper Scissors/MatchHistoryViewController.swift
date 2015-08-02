//
//  MatchHistoryViewController.swift
//  Rock Paper Scissors
//
//  Created by Gianluca on 02/08/15.
//  Copyright © 2015 Gianluca Bargelli. All rights reserved.
//

import Foundation
import UIKit

struct HistoryEntry {
    var result: String
    var moves: String
}

class HistoryLog {
    var entries: [HistoryEntry]

    init(entries: [HistoryEntry]) {
	self.entries = entries
    }

    var count: Int {
	get {
	    return self.entries.count as Int
	}
    }
}

class MatchHistoryViewController: UIViewController {
    var history: HistoryLog!

    override func viewDidAppear(animated: Bool) {
	print(self.history)
    }

    let cellIdentifier = "HistoryCell"

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	return self.history.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
	let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)!

	cell.textLabel?.text = self.history.entries[indexPath.row].result
	cell.detailTextLabel?.text = self.history.entries[indexPath.row].moves

	return cell
    }

    @IBAction func dismissDialog(sender: UIButton) {
	self.dismissViewControllerAnimated(true, completion: nil)
    }

}