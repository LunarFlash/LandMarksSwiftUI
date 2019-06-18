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
    // PassthroughSubject is a simple publisher from the Combine framework that immediately passes any values to its subscribers. SwiftUI subscribes to your object through this publisher, and updates any views that need refreshing when the data changes.
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showForitesOnly = false {
        didSet { didChange.send(self) }
    }
    var landmarks = landmarkData {
        didSet { didChange.send(self) }
    }
}
