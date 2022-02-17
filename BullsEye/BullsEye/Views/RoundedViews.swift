//
//  RoundedViews.swift
//  BullsEye
//
//  Created by Michael Novosad on 16.06.2021.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle().strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0))
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(Circle().fill(Color("ButtonFilledBackgroundColor")))
    }
}



struct RoundRectTextView: View {

    var text: String
    
    var body: some View {
        HStack {
            Text(text.uppercased())
                .font(.title3)
                .bold()
                .foregroundColor(Color("TextColor"))
                .kerning(-0.2)
                .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
                .overlay(RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                            .stroke(lineWidth: Constants.General.strokeWidth)
                            .foregroundColor(Color("ButtonStrokeColor")))
        }
    }
}

struct RoundedTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle().strokeBorder(Color("LeaderboardRowColor"), lineWidth: 2.0))
    }
}





struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedTextView(text: "Text")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
