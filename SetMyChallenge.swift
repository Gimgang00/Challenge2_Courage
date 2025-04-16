//
//  SetMyChllange.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct SetMyChallange: View {
    @State var isButtonClicked: Bool = false
    @State private var challenge: String = ""
    
    
    var body: some View {
        VStack {
            Spacer()
            TextField("목표를 위한 도전을 작성해보세요", text: $challenge)
                .frame(height: 84)
                .font(.PretendardBold24)
                .background(Color.material01)
                .multilineTextAlignment(.center)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding()
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
                    .sheet(isPresented: $isButtonClicked, content: {
                        SetMyChallange()})
            }
        }
                    
    }
}
        
        
    


#Preview {
    SetMyChallange()
}
