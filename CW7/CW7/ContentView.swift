//
//  ContentView.swift
//  CW7
//
//  Created by Bo3lwah on 21/09/2022.
//

import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    
    let name: String
    let cast: [String]
}

struct ContentView: View {
    let movies = [
        Movie(name: "Spiderman", cast: ["TomHolland","Zendaya","Tobey","Andrew"  ]),
        Movie(name: "Tintin", cast: ["Andy", "Peter","JamiBell","NickFrost"]),
        Movie(name:"HarryPoter", cast:["DanielRadcliffe","Rupert Grint","Emma Watson","Tom Felton"])
    ]
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach (movies) { movie in
                    NavigationLink(destination: DetailView(movie: movie))  {
                        
                        ExtractedView(movie: movie)
                        
                    }
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        DetailView(movie: Movie(name: "Spiderman", cast: ["Spiderman"]))
    }
}

struct ExtractedView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            HStack {
                Image(movie.name)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                Text(movie.name)
                    .font(.title)
                    .padding()
            }
            
            
        }
    }
}

struct DetailView: View {
    let movie: Movie
    
    var body: some View {
        ZStack {
            Color.black
            Image(movie.name)
                .resizable()
                .blur(radius: 10)
                .opacity(0.5)
            VStack {
                HStack {
                    Image(movie.name)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    Text(movie.name)
                        .font(.title)
                        .padding()
                }
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(movie.cast,id:\.self) { movie in
                            
                            VStack {
                                Image(movie)
                                Text(movie)
                            }
                        
                        }
                    }
                }
              
            }
        }.ignoresSafeArea()
    }
}
