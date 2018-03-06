//
//  EventsViewController.swift
//  SKFoundationDemo
//
//  Created by Britton Katnich on 2018-01-09.
//  Copyright © 2018 SandKatt Solutions Inc. All rights reserved.
//

import UIKit
import SKFoundation


class EventsViewController: UIViewController, UITableViewDataSource
{
    // MARK: Properties
    
    var events: Array<Event> = Array<Event>()
    
    
    // MARK: IBOutlets
    
    @IBOutlet weak var contentView: UIView?
    
    
    // MARK: Lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        log.debug("called and current content holder is:\n\n" +
            String(describing:ContentManager.shared().currentHolder!))
        
        contentView?.layer.cornerRadius = 10.0
        contentView?.layer.masksToBounds = true
    }


    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    // MARK: IBOutlets
    
    @IBAction func onButtonPressed(sender: UIButton)
    {
        let calendar = Calendar.current
        let startDate = calendar.date(byAdding: .day, value: -16, to: Date())
        
        Event.events(from: startDate!, to: Date())
            { (events, error) in
    
                if error != nil
                {
                    log.error(error!)
                    return;
                }
                
                log.debug("\n\nEvents retrieved:\n\n" + String(describing: events))
                
                self.events = events!
                //self.tableView?.reloadData()
            }
    }
    
    
    // MARK: UITableViewDatasource
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let rows = self.events.count
        
        return rows
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //
        // Obtain the cell
        //
        let cell:EventTableViewCell = tableView.dequeueReusableCell(
            withIdentifier: EventTableViewCell.cellId(),
            for: indexPath) as! EventTableViewCell
        
        //
        // Obtain info and update cell
        //
        let event = self.events[indexPath.item]
        cell.update(event: event)
        
        return cell
    }
}
