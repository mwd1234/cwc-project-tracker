//
//  ProjectDetailView.swift
//  cwc-project-tracker
//
//  Created by Matthew Dembinski on 2/28/24.
//

import SwiftUI

struct ProjectDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    var project: Project
    
    var body: some View {
        VStack {
            Text(project.name)
                .navigationBarBackButtonHidden(true)
            Button("Back") {
                dismiss()
            }
        }

        
    }
}

#Preview {
    ProjectDetailView(project: Project())
}
