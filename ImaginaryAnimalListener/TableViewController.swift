//
//  TableViewController.swift
//  ImaginaryAnimalsLister
//
//  Created by Charlie Williams on 14/09/2015.
//  Copyright © 2015 Charlie Williams. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var animalsArray:[ImaginaryAnimal]
    
    required init?(coder aDecoder: NSCoder) {
        
        animalsArray = AnimalsLoader().loadAnimals()
        super.init(coder: aDecoder)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        let animal = animalsArray[indexPath.row]
        
        cell.textLabel?.text = "\(indexPath.row + 1). \(animal.name)"
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destinationViewController = segue.destinationViewController as? DetailViewController,
            let selectedIndex = self.tableView.indexPathForSelectedRow?.row
        {
            let selectedAnimal = animalsArray[selectedIndex]
            destinationViewController.animal = selectedAnimal
        }
    }
    
}
