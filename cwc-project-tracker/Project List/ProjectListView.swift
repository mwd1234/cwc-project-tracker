//
//  ContentView.swift
//  cwc-project-tracker
//
//  Created by Matthew Dembinski on 2/22/24.
//

import SwiftUI
import SwiftData

struct ProjectListView: View {
    @State private var newProject: Project?
    @Query private var projects: [Project]

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
                        
                        
                        ForEach(projects) { p in
                            ProjectCardView(project: p)
                        }
                        
                        
                    }
                }
                
                Button (action: {
                    self.newProject = Project() 
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
        .sheet(item: $newProject) { project in
            AddProjectView(project: project)
                .presentationDetents([.fraction(0.2)])
        }
    }
}

#Preview {
    ProjectListView()
}
