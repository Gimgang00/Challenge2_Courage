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
    var goal: String //작성한 목표
    var challenge: String //작성한 도전
    var challengingCount: Int // 작성한 도전 갯수
    var challengedCount: Int // 완료한 도전 갯수
    var isDone: Bool //목표 성취 여부 변수
    
}


#Preview {
    ContentView()
}
