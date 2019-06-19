//
//  UserData.swift
//  Landmarks
//
//  Created by Yi Wang on 6/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    /* PassthroughSubject is a simple publisher from the Combine framework that immediately passes any values to its subscribers. SwiftUI subscribes to your object through this publisher, and updates any views that need refreshing when the data changes. The job of a passthrough subject is simple: whenever we want to tell the world that our object has changed, we ask the passthrough subject to do it for us. It’s called “pass through” because the value we hand it literally gets passed on to whatever views are watching for changes. PassthroughSubject is technically called a publisher, because it publishes announcements of changes to the world.
     */
    
    // Whatever type you use with @ObjectBinding should conform to the BindableObject protocol, which has only one requirement: your type must implement some sort of didChange property that notifies the view when its data has changed.
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showForitesOnly = false {
        didSet { didChange.send(self) }
    }
    var landmarks = landmarkData {
        didSet { didChange.send(self) }
    }
}
