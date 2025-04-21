//
//  SetMyGoal.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/13/25.
//

import SwiftUI

//struct SetMyGoal: View {
//    //목표를 저장할 변수
//    @State private var goal: String = ""
//    @State var isButtonClicked: Bool = false
//    
//    
//    var body: some View {
//        
//        NavigationStack {
//            VStack  {
//                Spacer()
//                ZStack {
//                    TextField("나의 목표를 작성해봐요", text: $goal)
//                        .frame(height: 84)
//                    //                        .padding()
//                    //                        .frame(width: 361, height: 84)
//                    //왜 width는 적용이 안되지..?
//                    //TextField에 SF Symbol 넣는 방법은??? (text 타입이라..)
//                        .font(.PretendardBold24)
//                        .foregroundColor(.blackSecondary)
//                        .padding(.horizontal, 40.0)
//                        .background(Color.material01)
//                        .multilineTextAlignment(.center)
//                    //textfield의 Text 중앙정렬
//                    Image(systemName: "pencil")
//                        .offset(x: 130)
//                        .foregroundColor(.blackSecondary)
//                    //ZStack으로 SF Symbol을 앞 Depth에 배치 (TextFeild에는 Text만 가능)
//                }
//                .clipShape(RoundedRectangle(cornerRadius: 25.0))
//                .padding()
//                //.clipShape~padding => TextFiel의 가로 길이 조절하는 코드
//                Spacer()
//                //            NavigationLink(destination: SetMyChallange(goalText: goal), isActive: $isButtonClicked) {
//                Button {
//                } label: {
//                    Text("다음")
//                        .frame (width:361, height: 64)
//                        .font(.PretendardBold24)
//                        .foregroundColor(.blackSecondary)
//                        .background(Color.yellowPrimary)
//                        .clipShape(RoundedRectangle(cornerRadius: 18.0))
//                        .padding()
//                }
//            }
//        }
//    }
//}

struct SetMyGoal: View {
    //목표를 저장할 변수
    @State private var goalToAdd = ""
    @Binding var goalAdded: String
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                ZStack {
                    TextField( "나의 목표를 작성해봥", text: $goalToAdd)
                        .onSubmit {
                            if !goalToAdd.isEmpty {
//                                goalToAdd = ""
                                goalAdded = goalToAdd
                                goalToAdd = ""
                            }
                        }
                        .frame(height: 84)
                        .font(.PretendardBold24)
                        .foregroundColor(.blackSecondary)
                        .padding(.horizontal, 40.0)
                        .background(Color.material01)
                        .multilineTextAlignment(.center) //텍스트필드 텍스트 중앙정렬
                    
                    Image(systemName: "pencil")
                        .offset(x: 130)
                        .foregroundColor(.blackSecondary)
                }
                .clipShape(RoundedRectangle(cornerRadius: 25.0)) //텍스트필트 텍스트 라운딩
                .padding()
                
                Spacer()
                
                NavigationLink(destination: SetMyChallange(goalAdded: goalAdded)) {
                    Text("다음")
                        .frame(width: 361, height: 64)
                        .font(.PretendardBold24)
                        .foregroundColor(.blackSecondary)
                        .background(Color.yellowPrimary)
                        .clipShape(RoundedRectangle(cornerRadius: 18.0))
                        .padding()
                }
            }
        }
    }
}


#Preview {
    SetMyGoal(goalAdded: .constant("목표를 추가해보세요"))
}

