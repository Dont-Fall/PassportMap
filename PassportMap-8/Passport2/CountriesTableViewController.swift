//
//  CountriesTableViewController.swift
//  Passport2
//
//  Created by Jake Ulasevich on 11/12/15.
//  Copyright © 2015 NitroxDev. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    var countries = ["Italy", "Norway", "England", "Spain"]
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //Return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return the number of sections
        return countries.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        var country = countries[indexPath.row]
        cell.textLabel!.text = country
        cell.accessoryType = .Checkmark
        
        return cell
    }

    
}
