//
//  Challenge2_CourageApp.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/13/25.
//

import SwiftUI

@main
struct Challenge2_CourageApp: App {
    var body: some Scene {
        WindowGroup {
            MyGoalView()
        }
    }
}

// MARK: - 데이터 모델 정의
struct Goal: Hashable {
    var goal: String
    var challenge: String
    var isDone: Bool //목표 성취 여부 변수!
}


#Preview {
    ContentView()
}
