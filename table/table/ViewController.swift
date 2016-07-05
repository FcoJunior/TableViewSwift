//
//  ViewController.swift
//  table
//
//  Created by Fco Junior on 7/4/16.
//  Copyright © 2016 Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tb_item: UITableView!
    
    var array: Array<Item> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setItems()
        
        self.tb_item.reloadData()
    }

    @IBAction func edit(sender: AnyObject) {
        self.tb_item.setEditing(true, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item = self.array[indexPath.row]
        let cell: ItemTableViewCell = tableView.dequeueReusableCellWithIdentifier("ItemCell") as! ItemTableViewCell
        
        cell.setItem(item.text!)
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == UITableViewCellEditingStyle.Delete {
//            self.array.removeAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
//        }
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return 3;
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func setItems() {
        let obj_1 = Item.init(text: "01")
        let obj_2 = Item.init(text: "02")
        let obj_3 = Item.init(text: "03")
        
        self.array.append(obj_1)
        self.array.append(obj_2)
        self.array.append(obj_3)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let view = sender!.superview
        let cell = view!!.superview as! ItemTableViewCell
        print("===>>> prepareForSegue(): \(cell.textValue!)")
    }

}

