//
//  ViewController.swift
//  SKFoundationDemo
//
//  Created by Britton Katnich on 2018-02-03.
//  Copyright © 2018 SandKatt Solutions Inc. All rights reserved.
//

import UIKit
import SKFoundation


class ViewController: UIViewController
{
    // MARK: IBOutlets
    
    @IBOutlet weak var textView: UITextView?
    
    
    // MARK: Lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        log.debug("called")
    }
    
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        log.debug("called")
        
        self.textView?.text.append("\n\n")
        self.textView?.text.append(SKFoundation.debugStatus())
    }


    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
        log.warning("called")
    }
}

