//
//  EventTableViewCell.swift
//  SKFoundationDemo
//
//  Created by Britton Katnich on 2018-01-16.
//  Copyright © 2018 SandKatt Solutions Inc. All rights reserved.
//

import UIKit


class EventTableViewCell: UITableViewCell
{
    // MARK: -- IBOutlets --
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    // MARK: -- Lifecycle --
    
    public required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        
        self.backgroundColor = UIColor.clear
    }
    
    
    // MARK: -- Public --
    
    public class func cellId() -> String
    {
        return "EventTableViewCellId"
    }
    
    
    public func update(event: Event)
    {
        self.titleLabel.text = event.title
    }
}
