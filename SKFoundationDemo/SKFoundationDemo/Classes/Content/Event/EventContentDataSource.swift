//
//  EventContentDataSource.swift
//  SKFoundationDemo
//
//  Created by Britton Katnich on 2017-12-29.
//  Copyright © 2017 SandKatt Solutions Inc. All rights reserved.
//

import UIKit
import SKFoundation


@objc class EventContentDataSource: NSObject, ContentDataSource
{
    // MARK: -- Properties --
    
    var filename: String = "EventContent"
    var fileExtension: String = "json"
    
    static func dataSource() -> ContentDataSource
    {
        return EventContentDataSource()
    }
}
