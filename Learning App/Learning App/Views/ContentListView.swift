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
                            ContentViewRow(index: index)
//                            ZStack(alignment:.leading){
//                                Rectangle()
//                                    .foregroundColor(.white)
//                                    .cornerRadius(10)
//                                    .shadow(radius: 5)
//                                    .frame(height: 66)
//
//                                HStack(spacing: 30){
//                                    // list of number lesson
//                                    Text(String((model.currentModule!.content.lessons[index].id)))
//                                        .font(.title3)
//                                        .fontWeight(.medium)
//                                        .multilineTextAlignment(.leading)
//
//
//                                    VStack(alignment: .leading, spacing: 4){
//                                        // Title lesson
//                                        Text(model.currentModule!.content.lessons[index].title)
//                                            .font(.headline)
//                                            .fontWeight(.bold)
//                                        Text("Video - \(model.currentModule!.content.lessons[index].duration)")
//                                            .font(.subheadline)
//                                            .fontWeight(.regular)
//                                    }
//                                }
//                                .padding()
//                            }
//                            .padding(.bottom, 8.0)
                        }
                    }
                }
                .padding()
                .navigationTitle("Learn Swift")
            }
        }
    }
}

struct LessonListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView().environmentObject(ContentModel())
    }
}
