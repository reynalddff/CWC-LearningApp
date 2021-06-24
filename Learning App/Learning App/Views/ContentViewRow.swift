//
//  LessonRowView.swift
//  Learning App
//
//  Created by Reynald Daffa Pahlevi on 11/06/21.
//

import SwiftUI

struct ContentViewRow: View {
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var body: some View {
        let lesson = model.currentModule!.content.lessons[index]
        ZStack(alignment:.leading){
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack(spacing: 30){
                // list of number lesson
                Text(String(index + 1))
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                
                
                VStack(alignment: .leading, spacing: 4){
                    // Title lesson
                    Text(lesson.title)
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Video - \(lesson.duration)")
                        .font(.subheadline)
                        .fontWeight(.regular)
                }
            }
            .padding()
        }
        .padding(.bottom, 4.0)
        
    }
}

//struct LessonRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentViewRow(index: 4).environmentObject(ContentModel())
//    }
//}
