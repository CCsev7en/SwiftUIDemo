
//
//  DetailView.swift
//  SwiftUIDemo
//
//  Created by Chen Chen on 11/4/20.
//  Copyright © 2020 chen chen. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body : some View{
        VStack{
            Image("background").resizable().aspectRatio(1.35, contentMode: .fill).frame(width:UIScreen.main.bounds.width,height: 500).offset(y: -200).padding(.bottom, -200)
            
            GeometryReader{geo in
                
                VStack(alignment: .leading){
                    
                   detailTop()
                   detailMiddle()
                   detailBottom()
                    
                }
                
            }.background(Color.white)
            .clipShape(Rounded())
            .padding(.top, -75)
            
        }
    }
}

struct detailTop : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 10){
            
            HStack{
                
                VStack(alignment: .leading){
                    
                    Text("Mountain").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                    
                }
                
                Spacer()
                
                Text("$299").foregroundColor(Color("bg")).font(.largeTitle)
            }
            
        }.padding()
    }
}


struct detailMiddle : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            

            HStack(spacing: 5){
                
                Image("map").renderingMode(.original)
                Text("Yosemite, CA").foregroundColor(Color("bg"))
                
            }
            
            HStack(spacing : 8){
                
                ForEach(0..<5){_ in
                    
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                }
            }
            
            Text("Group size").fontWeight(.heavy)
            
            Text("Number Of People In Your Group").foregroundColor(.gray)
            
            HStack(spacing: 6){
                
                ForEach(0..<5){i in
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("\(i + 1)").foregroundColor(.white).padding(20)
                        
                    }.background(Color("bg"))
                    .cornerRadius(8)
                }
            }
            
            
        }.padding(.horizontal,15)
    }
}

struct detailBottom : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 10){
            
            Text("Description").fontWeight(.heavy)
            Text("Mountain Camping Experiences and Meanings Key elements of camping experience include nature, social interaction, and comfort/convenience. The most common associated meanings are restoration, family functioning").foregroundColor(.gray)
            
            HStack(spacing: 8){
                
                Button(action: {
                    
                }) {
                    
                    Image("Save").renderingMode(.original)
                }
                
                Button(action: {
                    
                }) {
                    
                    HStack(spacing: 6){
                        
                        Text("Book Your Experience")
                        Image("arrow").renderingMode(.original)
                        
                    }.foregroundColor(.white)
                    .padding()
                    
                }.background(Color("bg"))
                .cornerRadius(8)
                
            }.padding(.top, 6)
            
        }.padding()
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}
