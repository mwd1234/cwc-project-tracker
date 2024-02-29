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
        
        ZStack {
            LinearGradient(colors: [Color("Navy"), Color("Sky Blue")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            LinearGradient(colors: [Color("Washed Blue").opacity(0), Color("Sky Blue")], startPoint: .top, endPoint: .bottom)
                .frame(width: 1)
                .padding(.leading, -150)
                .ignoresSafeArea()
            
            VStack {
                
                VStack (alignment: .leading, spacing: 13) {
                    
                    Text(project.name)
                        .font(.screenHeading)
                        .foregroundStyle(.white)
                    
                    HStack (alignment: .center, spacing: 13) {
                        Spacer()
                        
                        StatBubbleView(title: "Hours", stat: "290", startColor: Color("Navy"), endColor: Color("Sky Blue"))
                        StatBubbleView(title: "Sessions", stat: "34", startColor: Color("Turtle Green"), endColor: Color("Lime"))
                        StatBubbleView(title: "Updates", stat: "32", startColor: Color("Maroon"), endColor: Color("Fuschia"))
                        StatBubbleView(title: "Wins", stat: "9", startColor: Color("Maroon"), endColor: Color("Olive"))
                        
                        Spacer()
                    }
                    
                    Text("My current focus is...")
                        .font(.featuredText)
                    
                    HStack {
                        Image(systemName: "checkmark.sqare")
                        Text("Design the new website")
                            .font(.featuredText)
                    }
                    .padding(.leading)
                }
                .foregroundColor(.white)
                .padding()
                .background {
                    Color.black
                        .opacity(0.7)
                        .clipShape(.rect(bottomLeadingRadius: 15, bottomTrailingRadius: 15))
                        .ignoresSafeArea()
                }
                
                ScrollView (showsIndicators: false){
                    
                    VStack (spacing: 27) {
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                    }
                    .padding()
                }
                
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Button(action: {
                        //TODO: Add project update
                    }, label: {
                        ZStack {
                            Circle()
                                .foregroundStyle(.black)
                                .frame(width: 65)
                            Image("cross")
                        }
                    })
                    Spacer()
                    Button("Back") {
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .foregroundStyle(.white)
                    .tint(.gray)
                }
                .padding()
                .background {
                    Color.navy
                        .opacity(0.7)
                        .clipShape(.rect(topLeadingRadius: 15, topTrailingRadius: 15))
                        .ignoresSafeArea()
                }
            }


        }
        .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    ProjectDetailView(project: Project())
}
