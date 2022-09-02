//
//  NotificationConfiguration.swift
//  LocalNotificationSwiftUI
//
//  Created by Lucy on 02/09/22.
//

import Foundation
import LocalAuthentication
import UserNotifications

struct NotificationManager{
    
    
    func getPermission(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]){ success, error in
            if success {
                print("All granted!")
            }else{
                print(error!.localizedDescription)
            }
        }
    }
    
    func setNotification(){
        let content = UNMutableNotificationContent()
        content.title = "Feed the cat"
        content.subtitle = "It looks hungry"
        content.sound = UNNotificationSound.default
        
        //show this notification to five second from now
        let triger  = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        //choose a random identifier
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: triger)
        
        //add our notification request
        UNUserNotificationCenter.current().add(request)
    }
    
}
