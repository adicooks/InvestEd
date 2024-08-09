//
//  InvestEdApp.swift
//  InvestEd
//
//  Created by Adi Khurana on 6/27/23.
//

import SwiftUI

@main
struct InvestEdApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
                .preferredColorScheme(.dark)
        }
    }
}
