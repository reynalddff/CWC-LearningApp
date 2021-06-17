//
//  ContentView.swift
//  Learning App
//
//  Created by Reynald Daffa Pahlevi on 09/06/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model:ContentModel
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Text("What do you want to today?")
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                
                ScrollView{
                    LazyVStack(spacing: 20) {
                        ForEach(model.modules) { module in
                            // Learning Card
                            NavigationLink(
                                destination: ContentListView()
                                    .onAppear(perform: {
                                        model.beginModule(module.id)
                                    }),
                                label: {
                                    HomeViewRow(image: module.content.image, title: "Learn \(module.category)",
                                                description: module.content.description, count: "\(module.content.lessons.count) Lessons",
                                                time: module.content.time)
                                        .foregroundColor(.black)
                                })
                            
                            // Test Card
                            HomeViewRow(image: module.test.image, title: "Test \(module.category)",
                                        description: module.test.description, count: "\(module.test.questions.count) Questions",
                                        time: module.test.time)
                        }
                    }
                    .padding()
                }
                
            }
            .navigationTitle("Get Started")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(ContentModel())
    }
}
