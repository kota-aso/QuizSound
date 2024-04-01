//
//  ContentView.swift
//  QuizSound
//
//  Created by Kota Aso on 2024/04/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Button {
            } label: {
                Text("クイズ出題")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Spacer()
            Button {
            } label: {
                Text("シンキングタイム\n(10秒)")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(maxWidth: .infinity)
            }
            Spacer()
            HStack {
                Button {
                } label: {
                Image(systemName: "circle")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                }
                Button {
                } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                }
            }
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
