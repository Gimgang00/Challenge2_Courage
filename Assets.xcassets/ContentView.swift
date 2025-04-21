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
            Tab("나의 목표",
                image: "icon_MyGoal"){
                MyGoalView()//Mygoal view로 이동
            }
            Tab("달성한 목표",
                image:"SealCheckIcon_Inactive") {
                MyGoalComplete()//나의달성한목표 view 추가후 이동
            }
        }
        .tint(Color.yellowSecondary)
    }
}

#Preview {
    ContentView()
}
