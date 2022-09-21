//
//  ContentView.swift
//  CW7-B
//
//  Created by Bo3lwah on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    

@State var isselected = false
 @State   var t599 = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                Image(systemName: isselected ? "minus" : "plus")
                    .font(.largeTitle)
                    .onTapGesture {
                        withAnimation() {
                        isselected.toggle()
                        }
                    }

                Text("اختر تخصصك")
                    .font(.largeTitle)
                    
            
            }
            .padding()
            VStack  {
                
            Text("هندسة الكمبيوتر")
             .font(.title)
             .foregroundColor(.white)
             .frame(width: 350, height: 65)
             .background(Color.blue)
             .cornerRadius(15)
             .onTapGesture {
                 
                 
             
                 t599 = "هندسة الكمبيوتر"
             
               
             }
               
                
            Text("علوم كمبيوتر")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 65)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .onTapGesture {
                        t599 = "علوم كمبيوتر"
                      
                    }
            Text("تخصص اخر")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 65)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .onTapGesture {
                        t599 = "تخصص اخر"
                      
                    }
            }
            .opacity(isselected ?  1:0)
            Spacer()
            Text("التخصص: \(t599)")
                .font(.title)
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
