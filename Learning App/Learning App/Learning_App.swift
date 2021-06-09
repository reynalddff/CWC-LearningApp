//
//  Learning_AppApp.swift
//  Learning App
//
//  Created by Reynald Daffa Pahlevi on 09/06/21.
//

import SwiftUI

@main
struct Learning_App: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(ContentModel())
        }
    }
}
