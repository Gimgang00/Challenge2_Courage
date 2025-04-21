//
//  MyGoalCompletedView.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct MyGoalCompletedView: View {
    var body: some View {
        VStack {
            
        }
        HStack {
            Text ("달성한 목표")
                .font(.PretendardBold34)
                .foregroundColor(.blackPrimary)
            Text ("5개") // 👈달성한 목표 갯수 변수 넣어야함!!!!!
                .foregroundColor(.yellowSecondary)
                .font(.PretendardSemiBold21)
            Spacer ()
        }
        .padding(.leading)
        .padding(.top)
        Text ("달성한 목표 리스트 and 드롭박스 넣어야함!!") //View로 넣는건..? 반복할 수 있는 문법이 있을거 같은데 어떻게 적용하지?
            .padding(4)
        Spacer()
    }
}

#Preview {
    MyGoalCompletedView()
}
