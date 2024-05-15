//
//  SlidingView.swift
//  gym-app
//
//  Created by Erika Ramirez on 5/15/24.
//

import SwiftUI

struct SlidingView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(1..<10) { index in
                    Button(action: {
                        print("Button \(index) tapped")
                    }) {
                        Text("Button \(index)")
                            .foregroundColor(.blue)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.3)))
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    SlidingView()
}
