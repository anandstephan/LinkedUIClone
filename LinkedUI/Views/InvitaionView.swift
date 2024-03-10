//
//  InvitaionView.swift
//  LinkedUI
//
//  Created by Anand Stephan on 09/03/24.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Steve", position: "SDE at Amazon", mutual: 12, image: "01")

struct InvitaionView: View {
    var Data:NetworkModel
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 5){
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,alignment: .leading)
            VStack(alignment:.leading){
                Text(Data.name)
                    .font(.body)
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("⚭ \(Data.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue)
            }
            
        }.frame(width: .infinity, height: .infinity)
                .padding(.horizontal)
    }
}

#Preview {
    InvitaionView(Data:sampleData)
}
