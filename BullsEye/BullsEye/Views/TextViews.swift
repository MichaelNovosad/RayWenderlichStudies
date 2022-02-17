//
//  TextViews.siwft.swift
//  BullsEye
//
//  Created by Michael Novosad on 16.06.2021.
//

import SwiftUI

struct InstructionText: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}


struct BigNumberText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.black)
            .font(.largeTitle)
            .kerning(-1.0)
            .foregroundColor(Color("TextColor"))
    }
}


struct SliderLabelText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }    
}

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButton: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            withAnimation {
            alertIsVisible = true
            }
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            })
        .foregroundColor(Color.white)
        .cornerRadius(Constants.General.roundRectCornerRadius)
        .overlay(RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                    .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth))
    }
}

struct LabelText: View {
    
    var title: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text(title.uppercased())
                .font(.caption)
                .bold()
                .foregroundColor(Color("TextColor"))
                .kerning(1.5)
        }
    }
}

struct BodyText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .lineSpacing(12.0)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("TextColor"))
    }
}
struct ScoreText: View {
    
    var score: Int
    
    var body: some View {
        Text(String(score))
            .bold()
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
    }
}

struct DateText: View {
    
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .bold()
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
}

struct ButtonText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .bold()
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .cornerRadius(12.0)
    }
}

struct BigBoldText: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
        
    }
    
    
}
struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "100")
            LabelText(title: "Score and round")
            RoundRectTextView(text: "000")
            BodyText(text: "You scored 200 Points\n 🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 459)
            DateText(date: Date())
            BigBoldText(text: "Leaderboard")
        }
        .padding()
    }
}
