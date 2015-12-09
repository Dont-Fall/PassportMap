//
//  CountriesTableViewController.swift
//  Passport
//
//  Created by Christopher Frost on 11/19/15.
//  Copyright (c) 2015 ChristopherWFrost. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    
    var countries = ["Italy", "Norway", "England", "Spain"]
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return countries.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        var country = countries[indexPath.row]
        cell.textLabel!.text = country
        cell.accessoryType = .Checkmark
        return cell
    }

}
