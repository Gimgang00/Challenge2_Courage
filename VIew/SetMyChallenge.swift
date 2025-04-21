//
//  SetMyChllange.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct SetMyChallange: View {
    @State private var challenge: String = ""
    @State private var buttonClicked: Bool = false
    @State private var navigateToRoot = false //네비게이션 스택에 새 뷰 추가 (RootView처럼 눈속임)
    let goalAdded: String
    
    var body: some View {
        VStack {
            NavigationStack {
                Spacer()
                TextField("목표를 위한 도전을 작성해보세요", text: $challenge)
                    .frame(height: 84)
                    .font(.PretendardBold24)
                    .background(Color.material01)
                    .multilineTextAlignment(.center)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
                Spacer()
                
                
                NavigationLink(destination: MyProcessingGoalView(goalAdded:goalAdded)) { //👈기간 설정 페이지 만들고 destination 뷰 변경하기
                    Button {
                        navigateToRoot = true
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
                .navigationBarBackButtonHidden(true)
                .navigationDestination(isPresented: $navigateToRoot) {
                    MyProcessingGoalView(goalAdded:goalAdded)
                        .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}





#Preview {
    SetMyChallange(goalAdded:("목표임시"))
}
