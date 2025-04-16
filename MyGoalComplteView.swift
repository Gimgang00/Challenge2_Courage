//
//  MyGoalComplteView.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct MyGoalComplteView: View {
    @State var isButtonClicked: Bool = false

    var body: some View {
        VStack{
            Spacer()
            Text("축하합니다!")
                .font(.PretendardBold24)
                .padding(1)
            //🤔lineSpacing을 못쓰는데.. .padding은 픽셀 단위로 떨어지는게 아닌거 같음... 흠
            Text("Swift UI 걸음마 떼기") // 👈Goal 들어가야함!!
                .font(.PretendardBold24)
                .foregroundStyle(
                    LinearGradient(gradient: Gradient(colors: [Color (hex: "FFA724"), Color(hex: "FFD138")]), startPoint: .leading, endPoint: .trailing)
                    )
                .padding(1)
            Text("모두 완료하셨네요!")
                .font(.PretendardBold24)
            
// 🚨여기에  Challenge 리스트 들어가야함...
            
            Spacer()
            Button {
                isButtonClicked = true
            } label: {
                Text("확인")
                    .frame (width:361, height: 64)
                    .font(.PretendardBold24)
                    .foregroundColor(.blackSecondary)
                    .background(Color.yellowPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 18.0))
                    .padding()
            }
            
        }
    }
}
#Preview {
    MyGoalComplteView()
}
