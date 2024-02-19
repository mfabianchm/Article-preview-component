//
//  ContentView.swift
//  Article-preview-component
//
//  Created by Marcos Chong on 19/02/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack {
          MainCard()
        }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color("light-grayish-blue")
                .ignoresSafeArea()
        }
    }
}

struct MainCard: View {
    @State var loginTapped: Bool = false
    var body: some View {
        VStack {
            Image("drawers")
                .resizable()
                .scaledToFit()
            VStack {
                Text("Shift the overall look and feel by adding these wonderful touches to furniture in your home")
                    .padding(.bottom)
                    .foregroundColor(Color("very-dark-grayish-blue"))
                    .font(.custom("Manrope-Bold", size: 20))
                Text("Ever been in a room and felt like something was missing? Perhaps it felt slightly bare and uninviting. I,ve got some simple tips to help you make any room feel complete.")
                    .padding(.bottom)
                    .foregroundColor(Color("desaturated-dark-blue"))
                    .font(.custom("Manrope-Medium", size: 16))
                if !loginTapped {
                    userView(loginTapped: $loginTapped)
                }
            }
            .padding(25)
            if (loginTapped) {
                shareView(loginTapped: $loginTapped)
            }
            
        }
        .background(.white)
        .cornerRadius(10)
    }
}

struct userView: View {
    
    @Binding  var loginTapped: Bool
    
    var body: some View {
        HStack{
            Image("avatar-michelle")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text("Michelle Appleton")
                    .foregroundColor(Color("very-dark-grayish-blue"))
                    .font(.custom("Manrope-Bold", size: 16))
                Text("28 Jun 2020")
                    .foregroundColor(Color("grayish-blue"))
                    .font(.custom("Manrope-Medium", size: 16))
            }
            Spacer()
            Button(action: {
               loginTapped = true
            }, label: {
                Image("icon-share")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(8)
                    .background(Color("light-grayish-blue"))
                    .clipShape(Circle())
            })
        }
    }
}

struct shareView: View {
    
    @Binding  var loginTapped: Bool
    
    var body: some View {
        HStack{
           Text("SHARE")
                .foregroundColor(Color("light-grayish-blue"))
                .font(.custom("Manrope-Medium", size: 16))
                .tracking(8)
            Image("icon-facebook")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
            Image("icon-twitter")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
            Image("icon-pinterest")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
            Spacer()
            Button(action: {
               loginTapped = false
            }, label: {
                Image("icon-share")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .colorMultiply(.white)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(8)
                    .background(Color("desaturated-dark-blue"))
                    .clipShape(Circle())
            })
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color("very-dark-grayish-blue"))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
