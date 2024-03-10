//
//  ProfileAndPostView.swift
//  LinkedUI
//
//  Created by Anand Stephan on 10/03/24.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment:.leading){
            Searchbar()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Start a Post")
                
            }
            .padding(.horizontal)
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("photo")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Event")
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ProfileAndPostView()
}
