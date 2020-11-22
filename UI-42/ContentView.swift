//
//  ContentView.swift
//  UI-42
//
//  Created by にゃんにゃん丸 on 2020/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack(spacing:30){
                    ForEach(1..<9){i in
                        Card(img: "p\(i)")
                        
                    }
                    
                    
                }
                
                
            })
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card : View {
    var img = ""
    var body: some View{
        
        VStack{
            
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
        }
        .frame(width: 250, height: 250)
        .cornerRadius(20)
        
        
    }
}
