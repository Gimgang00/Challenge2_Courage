//
//  SetMyChllange.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct SetMyChallange: View {
    @State private var challengeToAdd: String = ""
    @State private var buttonClicked: Bool = false
    @State private var navigateToRoot = false
    //네비게이션 스택에 새 뷰 추가 (RootView처럼 눈속임)
    let goalAdded: String
    @Binding var challengeAdded: String
    
    var body: some View {
        VStack {
            NavigationStack {
                Spacer()
                TextField("목표를 위한 도전을 작성해보세요", text: $challengeToAdd)
                    .onSubmit {if !challengeToAdd.isEmpty {
                        challengeAdded = challengeToAdd
                        challengeToAdd = ""
                    }
                    }
                    .frame(height: 84)
                    .font(.PretendardBold24)
                    .background(Color.material01)
                    .multilineTextAlignment(.center)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
                Spacer()
                
                
                NavigationLink(destination: MyProcessingGoalView(goalAdded:goalAdded, challengeAdded: challengeAdded)) { //👈 받은 goalAdded를 그대로 다음 뷰로 전달
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
                    MyProcessingGoalView(goalAdded:goalAdded, challengeAdded: challengeAdded)
                        .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}





#Preview {
    SetMyChallange(goalAdded:("목표임시"), challengeAdded: .constant("챌린지임시"))
}
