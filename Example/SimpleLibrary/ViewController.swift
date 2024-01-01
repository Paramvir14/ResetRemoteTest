//
//  ViewController.swift
//  SimpleLibrary
//
//  Created by Paramvir14 on 01/01/2024.
//  Copyright (c) 2024 Paramvir14. All rights reserved.
//

import UIKit
import SimpleLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var logger = Logger()
        logger.printLog()
        
        let frameworkBundle = Bundle(for: Logger.self)
        let bundleURL = frameworkBundle.resourceURL?.appendingPathComponent("SimpleLibrary.bundle")
        let resourceBundle = Bundle(url: bundleURL!)

        let image = UIImage(named: "randomScreenshot.png", in: resourceBundle, compatibleWith: nil)
        print(image)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

