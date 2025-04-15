//
//  SetMyGoal.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/13/25.
//

import SwiftUI

struct SetMyGoal: View {
    var body: some View {
//        @State private var Goal: string = ""
        //목표를 저장할 변수
        
        VStack  {
            Spacer()
            Text("나의 목표")
            TextField("나의 목표를 작성해봐요", text: .constant(""))
                .frame(width: 361, height: 84)
                //왜 width는 적용이 안되지..?
            //TextField에 SF Symbol 넣는 방법은??? (text 타입이라..)
                .font(.PretendardBold24)
                .foregroundColor(.blackSecondary)
                .padding(.horizontal, 40.0)
                .background(Color.material01)
                .multilineTextAlignment(.center)
                //textfield의 Text 중앙정렬
            Spacer()
            Button{
            } label: {
                Text("다음")
                    .font(.PretendardBold24)
                    .foregroundColor(.blackSecondary)
                    .background(Color.yellowPrimary)
            }
        }
    }
}



#Preview {
    SetMyGoal()
}
