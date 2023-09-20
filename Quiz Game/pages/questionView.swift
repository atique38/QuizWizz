//
//  questionView.swift
//  Quiz Game
//
//  Created by kuetcse on 12/9/23.
//

import SwiftUI

struct questionView: View {
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Trivia Game")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("AccentColor"))
                Spacer()
                Text("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
                    
                
            }
            ProgressBar(progress: 40)
            
            VStack(alignment:.leading,spacing: 20){
                Text("ueyhrfnerjfu4ybnfjnvurnvjfnvruniurnvjnvijrnvirjnvirnvin")
                    .font(.system(size:20))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: "habijabi", isCorrect: true))
                AnswerRow(answer: Answer(text: "jata", isCorrect: false))
                    
            }
            
            
            
            Button("Next"){
                
            }
            .foregroundColor(.white)
            .padding()
            .background(Color("AccentColor"))
            .cornerRadius(10)
            .bold()
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("Background"))
        .navigationBarHidden(true)
        
    }
}

struct questionView_Previews: PreviewProvider {
    static var previews: some View {
        questionView()
    }
}
