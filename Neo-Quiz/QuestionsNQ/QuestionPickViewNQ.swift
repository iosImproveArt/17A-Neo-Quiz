//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewNQ: View {
    
    var ehngfjmr = "rfc3"
    var hbnegvcfjmk = 35
    func ghtrfjk() -> String {
        return "uhnefrijmko"
    }
    func rj4nufm() {
        print("gnmfr")
    }
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium)
            
            NavigationLink {
                QuestionViewNQ(type: .oneP)
            } label: {
                Image("1p")
            }

            
            NavigationLink {
                QuestionViewNQ(type: .withC)
            } label: {
                Image("wc")
            }
            
            NavigationLink {
                QuestionViewNQ(type: .withF)
            } label: {
                Image("wf")
            }
            
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewNQ(showLoading: false, selectedTab: .quiz)
}
