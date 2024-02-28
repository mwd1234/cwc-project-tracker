//
//  NewProjectView.swift
//  cwc-project-tracker
//
//  Created by Matthew Dembinski on 2/28/24.
//

import SwiftUI
import SwiftData

struct AddProjectView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    var project: Project
    @State var projectName: String = ""
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            VStack (alignment: .leading) {
                Text("New Project")
                    .font(.bigHeadline)
                    .foregroundStyle(.white)
                HStack {
                    TextField("Project name", text: $projectName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Save") {
                        project.name = projectName
                        context.insert(project)
                        dismiss() 
                    }
                    .buttonStyle(.borderedProminent)
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
}

//#Preview {
//    AddProjectView()
//}
