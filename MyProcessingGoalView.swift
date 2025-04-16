//
//  MyProcessingGoalView.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct MyProcessingGoalView: View {
    @State var isButtonClicked: Bool = false
    @State private var isChallengeCheck1 = false // 여기에 State 변수 추가
    var checkBox_unChecked: String = "CheckBox_unChecked"
    var checkBox_Checked: String = "CheckBox_Checked"
    
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
            .padding(.leading)
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
            .padding(.leading)
            .padding(.top, 79)

                Text ("체크 리스트 넣어야해😭")
                //                                CustomCheckboxView (
                //                                    isChecked: $isChallengeCheck1,
                //                                    title: "도전 항목",
                //                                    CheckBox_Checked: "checkbox_unchecked",  // Assets에 추가한 이미지 이름
                //                                    CheckBox_Checked: "checkbox_checked"       // Assets에 추가한 이미지 이름
                //                                )
                //👈앞단에 변수? 선언하기
            
            Spacer()
            Button {
                    isButtonClicked = true
                } label: {
                    Text("다음")
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
    MyProcessingGoalView()
}
