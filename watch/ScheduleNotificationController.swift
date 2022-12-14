//
//  ScheduleNotificationController.swift
//  CilantroWYC-WatchCompanion WatchKit Extension
//
//  Created by Rohan Malik on 9/13/22.
//

import WatchKit
import SwiftUI
import UserNotifications

class ScheduleNotificationController: WKUserNotificationHostingController<ScheduleNotificationView> {

    var content = UNNotificationContent()
    
    override var body: ScheduleNotificationView {
        return ScheduleNotificationView(content: content)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func didReceive(_ notification: UNNotification) {
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        content = notification.request.content
    }
}
