//
//  MyProcessingGoalView.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct MyProcessingGoalView: View {
    var body: some View {
        VStack{
            HStack {
                Text ("나의 목표")
                    .font(.PretendardBold34)
                    .foregroundColor(.blackPrimary)
                Text ("3일 남음")
                    .foregroundColor(.yellowSecondary)
                    .font(.PretendardSemiBold21)
                Spacer ()
            }
            .padding(.top, 4)
            Text ("Swift UI 걸음마 떼기") //👈여기에 goal 변수넣기
                .font(.PretendardBold24)
                .foregroundColor(.blackPrimary)
                .frame(width:361, height:84)
                .background(Color.material01)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(.top, 40)
            
                HStack {
                    Text ("진행중인 도전")
                        .font(.PretendardBold24)
                        .foregroundColor(.blackPrimary)
                    Text ("1/3") //👈여기에 ChallengeStep 변수 넣어야댐 (하 어케?)
                        .foregroundColor(.yellowSecondary)
                        .font(.PretendardSemiBold21)
                    Spacer()
                }
                .padding(.top, 79)
            HStack {
                Text ("100")
                Toggle("Close windows when quitting an app", isOn: $challengeCheck1) //👈앞단에 변수? 선언하기
                    .toggleStyle(.checkbox)
            }
            
            
            Spacer()
        }
        .padding(.leading)
    }
}

#Preview {
    MyProcessingGoalView()
}
