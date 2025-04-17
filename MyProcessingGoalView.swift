//
//  MyProcessingGoalView.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct MyProcessingGoalView: View {
    @State var isButtonClicked: Bool = false
    @State private var isChecked = false // 여기에 State 변수 추가
    @State private var isChecked2 = false // 여기에 State 변수 추가
    @State private var isChecked3 = false // 여기에 State 변수 추가

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
            
            HStack{
                Text("1")
                    .font(.PretendardSemiBold16)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width:30, height:30)
                    )
                    .padding(.leading, 28) //❓숫자 컴포넌트는 화면기준으로, 체크박스는 .frame 기준으로 패딩이 들어감... padding은 바로 앞 코드에 패딩을 적용시키는듯
                
                Text ("변수와 상수 배우기") // 👈challenge 변수 들어가야함
                    .font(.PretendardMedium21)
                    .padding(.leading, 18)
                
                Spacer()
                
                Button(action: {
                    print(isChecked)
                    isChecked = !isChecked
                }, label: {
                    if isChecked == false {
                        Image("checkBox_unChecked")
                            .resizable()
                            .frame(width: 30, height: 30)
                    } else {
                        Image("checkBox_checked")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                })//커스텀 체크 박스✅
                .padding(.trailing, 12)
            }
            .frame(width:361, height: 54)
            .background(Color.material02)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            //체크리스트1 코드 1️⃣
            
            HStack{
                Text("2")
                    .font(.PretendardSemiBold16)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width:30, height:30)
                    )
                    .padding(.leading, 28) //❓숫자 컴포넌트는 화면기준으로, 체크박스는 .frame 기준으로 패딩이 들어감... padding은 바로 앞 코드에 패딩을 적용시키는듯
                
                Text ("리오의 유튜브 다 보기") // 👈challenge 변수 들어가야함
                    .font(.PretendardMedium21)
                    .padding(.leading, 18)
                
                Spacer()
                
                Button(action: {
                    print(isChecked2)
                    isChecked2 = !isChecked2
                }, label: {
                    if isChecked2 == false {
                        Image("checkBox_unChecked")
                            .resizable()
                            .frame(width: 30, height: 30)
                    } else {
                        Image("checkBox_checked")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                })//커스텀 체크 박스✅
                .padding(.trailing, 12)
            }
            .frame(width:361, height: 54)
            .background(Color.material02)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            //체크리스트2 코드 2️⃣
            
            HStack{
                Text("3")
                    .font(.PretendardSemiBold16)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width:30, height:30)
                    )
                    .padding(.leading, 28) //❓숫자 컴포넌트는 화면기준으로, 체크박스는 .frame 기준으로 패딩이 들어감... padding은 바로 앞 코드에 패딩을 적용시키는듯
                
                Text ("계산기 만들어보기") // 👈challenge 변수 들어가야함
                    .font(.PretendardMedium21)
                    .padding(.leading, 18)
                
                Spacer()
                
                Button(action: {
                    print(isChecked3)
                    isChecked3 = !isChecked3
                }, label: {
                    if isChecked3 == false {
                        Image("checkBox_unChecked")
                            .resizable()
                            .frame(width: 30, height: 30)
                    } else {
                        Image("checkBox_checked")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                })//커스텀 체크 박스✅
                .padding(.trailing, 12)
            }
            .frame(width:361, height: 54)
            .background(Color.material02)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            //체크리스트3 코드 3️⃣
            }
        
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

    
#Preview {
    MyProcessingGoalView()
}
