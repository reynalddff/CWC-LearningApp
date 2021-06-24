//
//  ContentDetailView.swift
//  Learning App
//
//  Created by Reynald Daffa Pahlevi on 17/06/21.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    @EnvironmentObject var model: ContentModel
    var body: some View {
        let lesson = model.currentLesson
        let url = URL(string: Constant.videoHostURL + (lesson?.video ?? ""))
        
        VStack{
            // only show video if we get a valid url
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(10)
            }
            
            // Description
            CodeTextView()
        
            // Next lesson button
            if model.hasNextLesson() {
                let nextLessonTitle = model.currentModule!.content.lessons[model.currentLessonIndex+1].title
                Button(action: {
                    // advanced the lesson
                    model.nextLesson()
                }, label: {
                    ZStack {
                        RectangleCard(color: .green)
                            .frame(height: 48)
                        Text("Next Lesson: \(nextLessonTitle)")
                            .foregroundColor(.white)
                            .bold()
                    }
                })
            } else {
                // Show the completed button instead
                Button(action: {
                    // Take the user back to the homeview
                    model.currentContentSelected = nil
                }, label: {
                    ZStack {
                        RectangleCard(color: .green)
                            .frame(height: 48)
                        
                        Text("Completed the lesson")
                            .foregroundColor(.white)
                            .bold()
                    }
                })
            }
        }
        .navigationBarTitle(lesson?.title ?? "")
        .padding(.all)
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView().environmentObject(ContentModel())
    }
}
