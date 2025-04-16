//
//  SetMyChllange.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/16/25.
//

import SwiftUI

struct SetMyChllange: View {
    var body: some View {
        VStack {
            Spacer()
            TextField("목표를 위한 도전을 작성해보세요", text: .constant(""))
                .font(.PretendardBold24)
                .background(Color.material01)
                .multilineTextAlignment(.center)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding()
            Spacer()
                Text("다음")
                    .font(.PretendardBold24)
                    .foregroundColor(.blackPrimary)
                    .background(Color.yellowPrimary)
                        
        }
                    
    }
}
        
        
    


#Preview {
    SetMyChllange()
}
