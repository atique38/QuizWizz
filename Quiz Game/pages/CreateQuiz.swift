//
//  CreateQuiz.swift
//  Quiz Game
//
//  Created by kuetcse on 20/9/23.
//

import SwiftUI

struct CreateQuiz: View {
    @State var ques:String=""
    var body: some View {
        VStack{
            HStack{
                Text("Question:")
                    .padding()
                    .font(.title2)
                    .bold()
                Spacer()
            }
            
            TextField("Write question",text: $ques, axis: .vertical)
            .padding()
            .frame(width: 370)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .font(.title2)
            .lineLimit(3)
                
                
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("Background"))
    }
}

struct CreateQuiz_Previews: PreviewProvider {
    static var previews: some View {
        CreateQuiz()
    }
}
