//
//  ContentView.swift
//  cwc-project-tracker
//
//  Created by Matthew Dembinski on 2/22/24.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Deep Purple"), Color("Blush Pink")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                Text("Projects")
                    .font(.screenHeading)
                    .foregroundColor(Color.white)
                ScrollView (showsIndicators: false) {
                    VStack (spacing: 26) {
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                    }
                }
                
                Button (action: {
                    
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: 65)
                            .foregroundColor(.black)
                        Image("cross")
                    }
                })
            }
            .padding()
        }

    }
}

#Preview {
    ProjectListView()
}
