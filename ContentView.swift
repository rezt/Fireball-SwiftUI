//
//  ContentView.swift
//  Fireball-SwiftUI
//
//  Created by Piotr Ćwiertnia on 31/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var calcModel = CalcModel()
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            VStack {
                Text("FIREBALL")
                    .font(Font.custom("CormorantGaramond-MediumItalic", size: 70))
                    .italic()
                Spacer()
                Text(calcModel.getResult())
                    .font(Font.custom("CormorantGaramond-MediumItalic", size: 70))
                    .foregroundColor(.red)
                Spacer()
                HStack {
                    DiceView(calcModel.getRoll(forDice: 1))
                    DiceView(calcModel.getRoll(forDice: 2))
                    DiceView(calcModel.getRoll(forDice: 3))
                    DiceView(calcModel.getRoll(forDice: 4))
                }
                HStack {
                    DiceView(calcModel.getRoll(forDice: 5))
                    DiceView(calcModel.getRoll(forDice: 6))
                    DiceView(calcModel.getRoll(forDice: 7))
                    DiceView(calcModel.getRoll(forDice: 8))
                }
                Spacer()
                Button(action: {
                    calcModel.roll()
                }, label: {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 200, height: 100, alignment: .center)
                        .foregroundColor(.white)
                        .overlay(
                            Text("CAST")
                                .font(.system(size: 50))
                                .fontWeight(.heavy)
                                .foregroundColor(.red)
                        )
                })
            }
        }
    }
}

struct DiceView: View {
    
    let number: String
    
    init(_ result: Int) {
        switch result {
        case 1:
            number = "dice1"
        case 2:
            number = "dice2"
        case 3:
            number = "dice3"
        case 4:
            number = "dice4"
        case 5:
            number = "dice5"
        case 6:
            number = "dice6"
        default:
            number = "dice1"
        }
    }
    
    var body: some View {
        Image(number)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:75)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


