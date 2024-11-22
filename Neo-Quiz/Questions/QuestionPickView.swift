//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickView: View {
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium)
            
            NavigationLink {
                QuestionView(type: .oneP)
            } label: {
                Image("1p")
            }

            
            NavigationLink {
                QuestionView(type: .withC)
            } label: {
                Image("wc")
            }
            
            NavigationLink {
                QuestionView(type: .withF)
            } label: {
                Image("wf")
            }
            
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentView(showLoading: false, selectedTab: .quiz)
}
