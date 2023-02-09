//
//  ContentView.swift
//  DrivingTest
//
//  Created by Apprenant 07 on 24/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
// ****** Bloc 1 *******************************
            VStack(alignment: .leading) {
                ZStack{
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width: 400, height: 550, alignment: .bottomLeading)
                        .foregroundColor(.black)
                        .opacity(0.95)
                        .position(x: 185, y: 120)
                        .edgesIgnoringSafeArea(.all)
//****** Title *********************************
                    VStack(alignment: .leading){
                        HStack{
                            Text("Driving")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                            Text("Test")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        }
                        Text("Easy to learn and practice for your test")
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .bold()
                        Rectangle()
                            .frame(width: 370, height: 220)
                            .foregroundColor(.black)
                            .shadow(color: .black, radius:5, x:0, y: 10)
                            .opacity(0.2)
                        Spacer()
                    }
                
// ****** Vehicle choice *************************
                        ZStack{
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.white)
                                .frame(width: 370, height: 65)
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.blue)
                                .frame(width: 120, height: 55)
                                .opacity(0.6)
                            HStack{
                                Text("Motorcycle")
                                    .padding([.leading], 25)
                                Spacer()
                                Text("Car")
                                    .foregroundColor(.white)
                                Spacer()
                                Text("Commercial")
                                    .padding([.trailing], 25)
                            }
                        }
//                        .position(x: 185,y: 350)
//                        .padding([.top], 230)

                }
// ****** Bloc 2 ******************************
                Text("Choose your test")
                    .font(.title)
                    .bold()
                
                HStack{
                    ZStack{
                        LinearGradient(
                            gradient : Gradient(colors:[.gray , .black
                                ]),
                            startPoint: .leading,
                            endPoint: .trailing)
                            .cornerRadius(20)
                            .frame(width: 110, height: 110)
                        VStack{
                            Image(systemName: "book.fill")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .padding([.bottom], 5)
                            Text("General")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    ZStack{
                        LinearGradient(
                            gradient : Gradient(colors:[
                                .gray , .black
                                ]),
                            startPoint: .leading,
                            endPoint: .trailing)
                            .cornerRadius(20)
                            .frame(width: 110, height: 110)
                        VStack{
                            Image(systemName: "chart.bar")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .padding([.bottom], 5)
                            Text("Easy")
                            .foregroundColor(.white)
                            
                        }
                    }
                }
                Text("Your passing probability")
                    .font(.title)
                    .bold()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 60)
                        .foregroundColor(.gray)
                    RoundedRectangle(cornerRadius: 20)
                        .trim(from: 0.3, to: 0.7)
                        .frame(height: 60)
                        .foregroundColor(.accentColor)
                    Text("36%")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                    Text("Your passing probably is based on your performance on the app")
                        .padding([.leading], 35)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
            }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
