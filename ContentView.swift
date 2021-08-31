//
//  ContentView.swift
//  Fireball-SwiftUI
//
//  Created by Piotr Ćwiertnia on 31/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    var rolls: [Int] = [1,2,3,4,5,6,1,2]
    
    
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
                Text("48")
                    .font(Font.custom("CormorantGaramond-MediumItalic", size: 70))
                    .foregroundColor(.red)
                HStack {
                    DiceView(rolls[0])
                    DiceView(rolls[1])
                    DiceView(rolls[2])
                    DiceView(rolls[3])
                }
                HStack {
                    DiceView(rolls[4])
                    DiceView(rolls[5])
                    DiceView(rolls[6])
                    DiceView(rolls[7])
                }
                Spacer()
                Button(action: {
                    
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


