//
//  ContentView.swift
//  LocalNotificationSwiftUI
//
//  Created by Lucy on 02/09/22.
//

import SwiftUI

struct ContentView: View {
    
    var nm = NotificationManager()
    
    var body: some View {
        VStack{
            Button("Request Permission"){
                nm.getPermission()
            }
            Button("Schedule Notification"){
                nm.setNotification()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
