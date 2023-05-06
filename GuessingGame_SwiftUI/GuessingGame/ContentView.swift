//
//  ContentView.swift
//  GuessingGameApp
//
//  Created by saudAlhafith on 29/08/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var random:Int = Int.random(in: 1...5)
    @State var val:Int = 0
    @State var result:String = "Can You Guess The Number.!"
    
    var body: some View {
        VStack {
            Text(result)
            TextField("", value: $val, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
            Button("Guess.!", action: {
                if val == random{
                    result = "\(val) is correct"
                    Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: { _ in
                        result = "Can You Guess The Number.!"
                        random = Int.random(in: 1...5)
                    })
                }
            })
        }.frame(width: 300)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
