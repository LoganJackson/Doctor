//
//  ViewController.swift
//  Car
//
//  Created by Aaron DeAngelis on 2/1/15.
//  Copyright (c) 2015 Aaron DeAngelis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var problemLabel: UILabel!
    
    var codeNumber = 100

    let p0Dictionary: [Int: String] = [ 100 : "Mass or Volume Air Flow Circuit Malfunction",
                                        101 : "Mass or Volume Air Flow Circuit Range/Performance Problem",
                                        102 : "Mass or Volume Air Flow Circuit Low Input",
                                        103 : "Mass or Volume Air Flow Circuit High Input",
                                        104 : "Mass or Volume Air Flow Circuit Intermittent",
                                        105 : "Manifold Absolute Pressure/Barometric Pressure Circuit Malfunction",
                                        106 : "Manifold Absolute Pressure/Barometric Pressure Circuit Range/Performance Problem",
                                        107 : "Manifold Absolute Pressure/Barometric Pressure Circuit Low Input",
                                        108 : "Manifold Absolute Pressure/Barometric Pressure Circuit High Input",
                                        109 : "Manifold Absolute Pressure/Barometric Pressure Circuit Intermittent"]
    
    @IBAction func scanButton(sender: AnyObject) {
        
        /*
        var urlString = "file:///Users/deangeaj/Desktop/Hello.html"
        var url = NSURL(string: urlString)
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            
            var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            var contentArray = urlContent?.componentsSeparatedByString("<h1>")

            self.resultsLabel.text = contentArray![1].stringByReplacingOccurrencesOfString("</h1>", withString: "")
            
            var problemArray = urlContent?.componentsSeparatedByString("<h2>")
            
            self.problemLabel.text = problemArray![1].stringByReplacingOccurrencesOfString("</h2>", withString: "").stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            
            println("1")
            println(contentArray![1])
            println("2")
            println(problemArray![1])
            
        }
        
        task.resume()
        
        println(urlString)*/
        
        var randomNumber = Int(arc4random_uniform(11))
        
        println(randomNumber)
        codeNumber = codeNumber + randomNumber
        println(codeNumber)
        
        if p0Dictionary[codeNumber] != nil
        {
            codeLabel.text = "P0\(codeNumber):"
            problemLabel.text = p0Dictionary[codeNumber]!
        } else
        {
            codeLabel.text = ""
            problemLabel.text = "False Code"
        }
        codeNumber = 100
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

