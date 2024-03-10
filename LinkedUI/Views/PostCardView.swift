//
//  PostCardView.swift
//  LinkedUI
//
//  Created by Anand Stephan on 10/03/24.
//

import SwiftUI


struct SocialView {
    var ids: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
]


let samplePostData = PostData(id: 1, Image: "02", title: "Anand Stephan", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data:PostData
    var body: some View {
        VStack(alignment:.leading){
            Rectangle()
                           .fill(.gray.opacity(0.4))
                           .frame(width: .infinity, height: 10)
                           .ignoresSafeArea(.all)
            HStack{
                Image(data.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment:.leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) Followers")
                        .font(.subheadline)
                        .foregroundColor(.gray.opacity(0.9))
                    Text("8m")
                       .font(.caption)
                       .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Text("Looking for a new course on iOS with swift UI, you are already at great place.")
                .padding(.horizontal)
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
            HStack{
                
            }
            
        }
    }
}

#Preview {
    PostCardView(data:samplePostData)
}
