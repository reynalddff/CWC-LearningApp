//
//  HomeViewRow.swift
//  Learning App
//
//  Created by Reynald Daffa Pahlevi on 10/06/21.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                                        
            HStack(spacing: 12){
                //Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                //Text
                VStack(alignment: .leading, spacing: 10){
                    Text("\(title)")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(description)
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20)
                    
                    HStack{
                        //Number of lesson / question
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text(String(count))
                            .font(Font.system(size: 10))
                        
                        // Hours doing this lesonn
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text(time)
                            .font(Font.system(size: 10))
                    }
                }
                .padding(.leading)

            }
            .padding(.horizontal, 20)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn Swift", description: "Some Description", count: "10 Lessons", time: "3 Hours")
    }
}
