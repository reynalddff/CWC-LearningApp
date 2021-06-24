//
//  LessonListView.swift
//  Learning App
//
//  Created by Reynald Daffa Pahlevi on 10/06/21.
//

import SwiftUI

struct ContentListView: View {
    @EnvironmentObject var model: ContentModel
    var body: some View {
        VStack{
            ScrollView{
                LazyVStack{
                    
                    if model.currentModule != nil {
                        ForEach(0..<model.currentModule!.content.lessons.count){ index in
                            NavigationLink(
                                destination: ContentDetailView()
                                    .onAppear(perform: {
                                        model.beginLesson(index)
                                    }),
                                label: {
                                    ContentViewRow(index: index)
                                })
                        }
                    }
                }
                .accentColor(.black)
                .padding()
                .navigationTitle("Learn \(model.currentModule?.category ?? "")")
            }
        }
    }
}

struct LessonListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView().environmentObject(ContentModel())
    }
}
