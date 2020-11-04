//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Chen Chen on 11/3/20.
//  Copyright © 2020 chen chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            
            Home().tabItem {
                
                Image("home").font(.title)
            }
            
            Text("Activity").tabItem {
                
                Image("activity").font(.title)
            }
            
            Text("Search").tabItem {
                
                Image("search").font(.title)
            }
            
            Text("Setting").tabItem {
                
                Image("setting").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    var body : some View{
        
        VStack(alignment: .leading,spacing: 12){
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Image("menu").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image("profile_icon").renderingMode(.original)
                }
            }
            
            Text("Explore").fontWeight(.heavy).font(.largeTitle).padding(.top,15)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Text("Experiences").fontWeight(.heavy).foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("Restaurants").foregroundColor(.gray)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("Hotels").foregroundColor(.gray)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("Tickets").foregroundColor(.gray)
                }
            }.padding([.top],30)
            .padding(.bottom, 15)
        
            CategoryView()
            
            ActivityView().padding(.top, 10)
            
        }.padding()
    }
}

struct CategoryView : View {
    
    @State var show = false
    
    var body : some View{
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            
            HStack(spacing: 20){
                
                VStack(alignment: .leading,spacing: 12){
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("Card1").renderingMode(.original)
                    }
                    
                    Text("Stream Fishing").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        
                        Image("map").renderingMode(.original)
                        Text("Walnut Creek, CA").foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: .leading,spacing: 12){
                    
                    Button(action: {
                        
                        self.show.toggle()
                        
                    }) {
                        
                        Image("Card2").renderingMode(.original)
                    }
                    
                    Text("Mountain Camping").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        
                        Image("map").renderingMode(.original)
                        Text("Yosemite, CA").foregroundColor(.gray)
                    }
                }
            }
            
        }.sheet(isPresented: $show) {
            
            DetailView()
        }
    }
}


struct ActivityView : View {
    
    var body : some View{
        
        VStack{
            
            HStack{
                
                Text("Equipment rental").fontWeight(.heavy)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("View all").foregroundColor(.gray)
                }
                
            }.padding([.top], 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 35){
                    
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard1").renderingMode(.original)
                            Text("Hiking").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard2").renderingMode(.original)
                            Text("Sky Diving").foregroundColor(.gray)
                        }
                    }
                        
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard3").renderingMode(.original)
                            Text("Skiing").foregroundColor(.gray)
                        }
                    }
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard4").renderingMode(.original)
                            Text("SkateBoarding").foregroundColor(.gray)
                        }
                    }
                }
            }.padding(.leading, 20)
            .padding([.top,.bottom], 15)
        }
    }
}


