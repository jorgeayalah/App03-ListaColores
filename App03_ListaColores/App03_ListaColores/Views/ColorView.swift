//
//  ColorView.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala on 11/29/21.
//

import SwiftUI

struct ColorView: View {
    var colour: Colour
    var pallete: String
    
    var body: some View {
        
        ZStack{
            colour.colour
            VStack(spacing: 20){
                Text(colour.name)
                    .foregroundColor(colour.dark ? .white : .black)
                Text(pallete)
                    .foregroundColor(colour.dark ? .white : .black)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle("Color", displayMode: .inline)
        .navigationBarColor(UIColor(.black), UIColor.white)
        .toolbar(content:  {
            ToolbarItem(placement: .principal, content:{
                Text(colour.name)
                    .foregroundColor(.white)
            })
        })
        
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(colour: Colour.ChileanFire, pallete: "American")
    }
}
