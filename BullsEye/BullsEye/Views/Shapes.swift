//
//  Shapes.swift
//  BullsEye
//
//  Created by Michael Novosad on 16.06.2021.
//

import SwiftUI

struct Shapes: View {
    
    @State private var wideShapes = false
    
    
    var body: some View {
        VStack {
            if !wideShapes {
        Circle()
            .strokeBorder(Color.blue, lineWidth: 20.0)
            .frame(width: 200, height: 100)
            .transition(.scale)
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: CGFloat(wideShapes ? 200 : 100), height: 100)
            Ellipse()
                .fill(Color.blue)
                .frame(width: CGFloat(wideShapes ? 200 : 100), height: 100)
            Capsule()
                .fill(Color.blue)
                .frame(width: CGFloat(wideShapes ? 200 : 100), height: 100)
            Button(action: {
                withAnimation {
                wideShapes.toggle()
                }
            }, label: {
                Text("Animate!")
                
            })
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
