//
//  ProjectUpdateView.swift
//  cwc-project-tracker
//
//  Created by Matthew Dembinski on 2/28/24.
//

import SwiftUI

struct ProjectUpdateView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black)
                .shadow(radius: 5, x: 0, y: 4)
            
            VStack (alignment: .leading, spacing: 10) {
                HStack {
                    Text("Thursday, September 12, 2023")
                        .padding(.leading)
                    Spacer()
                    Text("9 Hours")
                        .padding(.trailing)
                }
                .padding(.vertical, 5)
                .background(.orchid)
                
                Text("Project headline")
                    .font(.smallHeadline)
                    .padding(.horizontal)
                Text("Project summary")
                    .padding(.horizontal)
            }
            .foregroundStyle(.white)
            .font(.regularText)

        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ProjectUpdateView()
}
