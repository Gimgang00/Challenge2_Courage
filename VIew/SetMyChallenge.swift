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
    @Binding var challengeAdded: [String]
    
    var body: some View {
        VStack {
            NavigationStack {
                
                Spacer()
                
                VStack(spacing:16 ) {
                    ForEach(Array(challengeAdded.enumerated()), id: \.offset) { index, challenge in ListAddedView(listNumber: index + 1, listTitle: challenge)
                    }
                }
                
                TextField("목표를 위한 도전을 작성해보세요", text: $challengeToAdd)
                    .onSubmit {
                        if !challengeToAdd.isEmpty {
                            challengeAdded.append(challengeToAdd)
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

struct ListAddedView: View {
    let listNumber: Int
    let listTitle: String
    //체크버튼 이미지 출력에 사용할 변수
    
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
            
            Text (listTitle)
                .font(.PretendardMedium21)
                .padding(.leading, 18)
            
            Spacer()
        }
        .frame(width:361, height: 54)
        .background(Color.material02)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}





#Preview {
    SetMyChallange(goalAdded:("목표임시"), challengeAdded: .constant(["챌린지1", "챌린지2", "챌린지3"]))
}
