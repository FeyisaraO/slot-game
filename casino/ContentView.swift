//
//  ContentView.swift
//  casino
//
//  Created by Feyisara Odukoya on 20/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var image1 = 1
    @State var image2 = 1
    @State var image3 = 1
    @State var credits = 1000
    

    
    var body: some View {

        VStack(alignment: .center){
            Text("SPIN THE OBJECTS!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.89, saturation: 0.335, brightness: 0.724))
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("if they all match you get 15 points and if they dont you loose 5:(")
                .font(.body)
                .foregroundColor(Color(hue: 0.821, saturation: 0.248, brightness: 0.263))
                .multilineTextAlignment(.center)
            Spacer()
            Text("Credits: \(credits)")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.852, saturation: 0.012, brightness: 0.97))
            Spacer()
            HStack{
                Image("fruit\(image1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(image2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(image3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }

            Spacer()
            Button {
                
                //Randomize
                image1 = Int.random(in: 1...3)
                image2 = Int.random(in: 1...3)
                image3 = Int.random(in: 1...3)
                
                //If
                if image1 == image2 && image2 == image3{
                    credits += 20
                }else{
                    credits -= 5
                }

                
                
            } label: {
                Text("SPIN")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.836, saturation: 0.184, brightness: 0.418))
            }

            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.899, saturation: 0.35, brightness: 0.988)/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
