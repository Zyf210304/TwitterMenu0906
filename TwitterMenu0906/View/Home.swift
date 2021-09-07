//
//  Home.swift
//  TwitterMenu0906
//
//  Created by 张亚飞 on 2021/9/7.
//

import SwiftUI

struct Home: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        VStack {
            
            VStack(spacing: 0) {
                HStack {
                    
                    Button {
                        
                        withAnimation{showMenu.toggle()}
                    } label: {
                        
                        Image("Pic")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    //naviagtion link
                    NavigationLink {
                        
                        Text("TimeLine View")
                            .navigationTitle("Timeline")
                    } label: {
                        
                        Image(systemName: "sparkles")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }

                    
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                .overlay(
                    Image(systemName: "applelogo")
                        .font(.title2)
                        .foregroundColor(.green)
                        .frame(width: 25, height: 25)
                )
                Divider()
            }
            
            Spacer()
        }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
         
        ContentView()
    }
}
