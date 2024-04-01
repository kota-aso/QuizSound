//
//  ContentView.swift
//  QuizSound
//
//  Created by Kota Aso on 2024/04/01.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var player: AVAudioPlayer?
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                if let soundData = NSDataAsset(name: "questions") {
                    do {
                    player = try AVAudioPlayer(data: soundData.data)
                    player?.play()
                    } catch {
                    print("音楽実行エラー")
                    }
                }
                
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
                if let soundData = NSDataAsset(name: "thinking") {
                    do {
                        player = try AVAudioPlayer(data: soundData.data)
                        player?.play()
                    } catch {
                        print("音楽実行エラー")
                    }
                }
                
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
                    if let soundData = NSDataAsset(name: "correct") {
                        do {
                            player = try AVAudioPlayer(data: soundData.data)
                            player?.play()
                        } catch {
                            print("音楽実行エラー")
                        }
                    }
                    

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
                    if let soundData = NSDataAsset(name: "incorrect") {
                        do {
                            player = try AVAudioPlayer(data: soundData.data)
                            player?.play()
                        } catch {
                            print("音楽実行エラー")
                        }
                    }
                    

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
