//
//  signIn.swift
//  Quiz Game
//
//  Created by kuetcse on 10/9/23.
//

import SwiftUI

struct signIn: View {
    @State var email:String=""
    @State var password:String=""
    @State var userName:String=""
    @State var userExist=0
    @State var invalidPass=0
    
    var body: some View {
        VStack{
            VStack{
                Text("Sign In")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(Color("AccentColor"))
                    
                
                TextField("Email",text: $email)
                    .padding()
                    .frame(width: 350,height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(userExist))
                    
                    
                
                SecureField("Password",text: $password)
                    .padding()
                    .frame(width: 350,height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(invalidPass))
                
                Button("Sign In"){
                    
                }
                .foregroundColor(.white)
                .frame(width: 350,height: 50)
                .background(Color("AccentColor"))
                .cornerRadius(10)
                .padding()
                .bold()
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color("Background"))
    }
}

struct signIn_Previews: PreviewProvider {
    static var previews: some View {
        signIn()
    }
}
