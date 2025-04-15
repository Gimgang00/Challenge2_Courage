//
//  ContentView.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("나의 목표", systemImage: "house") {
                MyGoalView()//Mygoal view로
            }
            Tab("나의 목표", systemImage: "house") {
                MyGoalView()//나의달성한목표 view 추가후 이동
            }
        }
        .tint(Color.red)
    }
}

#Preview {
    ContentView()
}
