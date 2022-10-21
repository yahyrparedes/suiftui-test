//
//  ContentView.swift
//  Kwema
//
//  Created by Yahyr Paredes on 21/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                VStack {
                    VStack(spacing: 0){
                        Spacer().frame(height: 5)
                        Image("logo_on")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 35, alignment: .center)
                        
                        Text("You are covered!")
                            .font(.body)
                            .foregroundColor(.black)
                        Spacer().frame(height: 10)
                    }
                    .font(.largeTitle)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                    .frame(width: 250)
                    .background(RoundedCorners(color:  .green, tl: 22, tr: 22, bl: 0, br: 0))
                    
                    VStack(alignment: .leading, spacing:5 ) {
                        Spacer().frame(height: 10)
                        HStack {
                            Image(systemName: "wrench.adjustable")
                                .foregroundColor(.green)
                            Text("Bluetooth").foregroundColor(.gray)
                                .font(.title2)
                        }
                        HStack {
                            Image(systemName: "location")
                                .foregroundColor(.green)
                            Text("GPS").foregroundColor(.gray)
                                .font(.title2)
                        }
                        HStack {
                            Image(systemName: "network")
                                .foregroundColor(.green)
                            Text("Mobile Data").foregroundColor(.gray)
                                .font(.title2)
                        }
                    }
                    .font(.title)
                    .padding(EdgeInsets(top:  0, leading: 10, bottom: 10, trailing: 10))
                    .frame(width: 250)
                    .background(RoundedCorners(color: .white, tl: 0, tr: 0, bl: 22, br: 22))
                    .foregroundColor(.white)
                }
                VStack {
                    VStack(spacing: 0){
                        Spacer().frame(height: 5)
                        Image("logo_off")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 35, alignment: .center)
                        
                        Text("You are not covered!")
                            .font(.body)
                            .foregroundColor(.white)
                        Spacer().frame(height: 10)
                    }
                    .font(.largeTitle)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                    .frame(width: 250)
                    .background(RoundedCorners(color:  .red, tl: 22, tr: 22, bl: 0, br: 0))
                    
                    VStack(alignment: .leading, spacing:5 ) {
                        Spacer().frame(height: 10)
                        HStack {
                            Image(systemName: "wrench.adjustable")
                                .foregroundColor(.red)
                            Text("Bluetooth").foregroundColor(.gray)
                                .font(.title2)
                        }
                        HStack {
                            Image(systemName: "location")
                                .foregroundColor(.red)
                            Text("GPS").foregroundColor(.gray)
                                .font(.title2)
                        }
                        HStack {
                            Image(systemName: "network")
                                .foregroundColor(.red)
                            Text("Mobile Data").foregroundColor(.gray)
                                .font(.title2)
                        }
                    }
                    .font(.title)
                    .padding(EdgeInsets(top:  0, leading: 10, bottom: 10, trailing: 10))
                    .frame(width: 250)
                    .background(RoundedCorners(color: .white, tl: 0, tr: 0, bl: 22, br: 22))
                    .foregroundColor(.white)
                }
            }
        }
         
    }
}
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
  
