//
//  ContentView.swift
//  WFC
//
//  Created by Eng. Norii on 5/3/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//
//􀇁􀆲􀇕

import SwiftUI

struct CityModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 30, weight: .bold, design: .default))
            .padding()
            //.padding(.leading)
            .multilineTextAlignment(.center)
            .scaledToFit()
            
        
    }
}

struct WSModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .opacity(0.7)
        .padding()
        .multilineTextAlignment(.center)
        .scaledToFit()
    }
}

struct DegreeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 75, weight: .thin, design: .default))
            .padding()
            .multilineTextAlignment(.center)
            .scaledToFit()
            
        
    }
}

struct DefModifier: ViewModifier{func body(content: Content) -> some View {
    content
    .foregroundColor(.white)
    .font(.system(size: 15, weight: .bold, design: .default))
    }}


struct ContentView: View {
    @State var City = "Mishrif"
    @State var WeatherState = "Mostly Clear"
    @State var Degree = "22°"
    @State var MainMaxDeg = "31"
    @State var MainMinDeg = "24"
    @State var MaxDeg = "29"
    @State var MinDeg = "24"
    
    
    var body: some View {
        ZStack{
            Image("Night").resizable().edgesIgnoringSafeArea(.all)
            
            VStack/*(spacing: -30)*/{
                Text(City).modifier(CityModifier())
                    .offset(x: 0,y: -200)
                Text(WeatherState).modifier(WSModifier())
                .offset(x: 0,y: -230)
                Text(Degree).modifier(DegreeModifier()).offset(x: 0,y: -250)
                
                HStack{
                    Text("Teusday").modifier(DefModifier())
                    Spacer()
                    Text("TODAY").foregroundColor(.white)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    Spacer()
                    Text(MainMaxDeg)
                        .foregroundColor(.white)
                    Spacer()
                    Text(MainMinDeg)
                        .foregroundColor(.white)

                }
                
                HStack(spacing:25){
                    Text("Now").modifier(DefModifier())
                    Text( "5AM").modifier(DefModifier())
                    Text("6AM")
                        .modifier(DefModifier())
                    Text( "7AM").modifier(DefModifier())
                    Text("8AM")
                        .modifier(DefModifier())
                    Text( "9AM").modifier(DefModifier())
                    Text("10AM")
                        .modifier(DefModifier())
                }
                
                HStack(spacing:40){
                    Image(systemName: "moon.stars.fill").foregroundColor(.white)
                    Image(systemName: "moon.stars.fill").foregroundColor(.white)
                    Image(systemName: "sunrise.fill").foregroundColor(.white)
                    Image(systemName: "cloud.sun.bolt.fill").foregroundColor(.white)
                    Image(systemName: "moon.stars.fill").foregroundColor(.white)
                    Image(systemName: "moon.stars.fill").foregroundColor(.white)
                    Image(systemName: "moon.stars.fill").foregroundColor(.white)
                }
                HStack(spacing:32){
                    Text(Degree).modifier(DefModifier())
                    Text(Degree).modifier(DefModifier())
                    Text(Degree).modifier(DefModifier())
                    Text(Degree).modifier(DefModifier())
                    Text(Degree).modifier(DefModifier())
                    Text(Degree).modifier(DefModifier())
                    Text(Degree).modifier(DefModifier())
                }
                
                WedWeth()
                WedWeth()
                WedWeth()
                WedWeth()
                WedWeth()
                
                
                
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WedWeth: View {
    var body: some View {
        HStack{
            Text("Wednesday").multilineTextAlignment(.leading).modifier(DefModifier())
            Image(systemName: "cloud.sun.rain.fill").foregroundColor(.white)
            Text("29").modifier(DefModifier())
            Text("24").modifier(DefModifier())
            /*Text(MaxDeg).modifier(DefModifier())
            Text(MinDeg).modifier(DefModifier())*/
            
        }
    }
}
