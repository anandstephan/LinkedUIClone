//
//  HomeScreenView.swift
//  LinkedUI
//
//  Created by Anand Stephan on 10/03/24.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack{
            ProfileAndPostView()
            PostView()
        }
            
    }
}

#Preview {
    HomeScreenView()
}
