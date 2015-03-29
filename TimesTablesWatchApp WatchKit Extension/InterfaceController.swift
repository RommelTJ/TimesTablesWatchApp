//
//  InterfaceController.swift
//  TimesTablesWatchApp WatchKit Extension
//
//  Created by Rommel Rico on 3/28/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var slider: WKInterfaceSlider!
    @IBOutlet weak var timesTable: WKInterfaceTable!
    
    @IBAction func sliderMoved(value: Float) {
        timesTable.setNumberOfRows(12, withRowType: "TimesTableRowController")
        
        for var i=1; i<=12; i++ {
            let row = timesTable.rowControllerAtIndex(i-1) as TimesTableRowController
            row.rowLabel.setText("\(i) x \(Int(value)) = \(i * Int(value))")
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
