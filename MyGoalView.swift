//
//  Untitled.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/13/25.
//

import SwiftUI

struct MyGoalView: View {
    @State var isButtonClicked: Bool = false
    
    var body: some View {
        Text("나의 목표")
            .font(.PretendardBold34)
//            .font(.system(size: 34))
//            .fontWeight(.bold)
//갓갓홍이 쳐 준 코드 주석
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            .padding(.top, 4)
        VStack(spacing: 0) {
            Spacer()
            Text("현재 진행중인 목표가 없어요\n목표와 도전을 설정해보세요!")
                .font(.PretendardBold24)
//                .font(.system(size: 24))
//                .fontWeight(.semibold)
                .foregroundColor(Color.blackPrimary)
                .lineSpacing(7)
            Button {
                isButtonClicked = true
            } label: {
                Text("목표 만들기")
                    .font(.PretendardBold24)
//                    .font(.system(size: 24))
//                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.vertical, 14)
                    .background(Color.yellowPrimary)
                    .foregroundStyle(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .padding(.top, 24)
            .sheet(isPresented: $isButtonClicked, content: {
                SetMyGoal()
            })
        }
        .frame(width: 361, height: 364)
        .background(Color.material01)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .offset(y: 145)
        Spacer()
    }
}

#Preview {
    MyGoalView()
}
