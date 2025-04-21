//
//  MyProcessingGoalView.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct MyProcessingGoalView: View {
    @State var isButtonClicked: Bool = false
    @State private var isChecked1 = false // 여기에 State 변수 추가
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
            
            //체크리스트1 코드 1️⃣
            ExtractedView(listNumber: 1, listTitle: "변수와 상수 배우기", isChecked1: $isChecked1)
            
            //체크리스트2 코드 2️⃣
            ExtractedView(listNumber: 2, listTitle: "리오의 유튜브 다 보기", isChecked2: $isChecked2)
            
            //체크리스트3 코드 3️⃣
            ExtractedView(listNumber: 3, listTitle: "계산기 만들어보기", isChecked3: $isChecked3)



            }
        
            Spacer()
            Button {
                    isButtonClicked = true
                } label: {
                    Text("목표 포기하기")
                        .frame (width:361, height: 64)
                        .font(.PretendardBold24)
                        .foregroundColor(.blackSecondary)
                        .background(Color.yellowPrimary)
                        .clipShape(RoundedRectangle(cornerRadius: 18.0))
                        .padding()
                }//버튼 포기 경고 모달 띄우기
                .navigationBarBackButtonHidden(true)
        }
    }

    
#Preview {
    MyProcessingGoalView()
}

struct ExtractedView: View {
    let listNumber: Int
    let listTitle: String
    @Binding var isChecked: Bool
    
    var body: some View {
        HStack{
            Text("\(listNumber)")
                .font(.PretendardSemiBold16)
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width:30, height:30)
                )
                .padding(.leading, 28)
            
            Text (listTitle) // 👈challenge 변수 들어가야함
                .font(.PretendardMedium21)
                .padding(.leading, 18)
            
            Spacer()
            
            Button(action: {
                print(isChecked1)
                isChecked1 = !isChecked1
            }, label: {
                if isChecked1 == false {
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
    }
}
