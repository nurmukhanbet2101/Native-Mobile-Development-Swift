//
//  ContentView.swift
//  Unscramble
//
//  Created by Нурмуханбет Сертай on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    let mind = Mind()
    
    @State private var answer: String = "Alma"
    @State private var didNotConfusedWord: String = "Alma"
    @State private var confusedWord: String = ""
    @State private var score: Int = 0
    @State private var countOfQuestions: Int = 10
    @State private var numberOfQuestions: Int = 1
    @State private var isShowingResultSend: Bool = false
    @State private var isShowingResultSkip: Bool = false
    
    func sendAnswer() {
        if didNotConfusedWord.lowercased() == answer.lowercased() {
            updateProgress()
            score += 10
            if numberOfQuestions == countOfQuestions {
                isShowingResultSend = true
            }
        } else {
            isShowingResultSend = true
        }
    }
     
    func skipAnswer() {
        if numberOfQuestions != countOfQuestions {
            updateProgress()
        } else {
            isShowingResultSkip = true
        }
    }
    
    func updateProgress() {
        countOfQuestions = mind.getProgress().0
        numberOfQuestions = mind.getProgress().1
        didNotConfusedWord = mind.getConfusedWord()
        scrambleWord(didNotConfusedWors: didNotConfusedWord)
    }
    
    func scrambleWord(didNotConfusedWors: String) -> String {
        confusedWord = String(Array(didNotConfusedWors).shuffled()).lowercased()
        return confusedWord
    }
    
    func restart() {
        numberOfQuestions = 1
        score = 0
        didNotConfusedWord = "Alma"
        isShowingResultSend = false
        isShowingResultSkip = false
        mind.lickNumbers()
    }
    
    
    
    var body: some View {
       NavigationView() {
            ZStack {
                VStack {
                    Rectangle()
                        .foregroundColor(.indigo)
                        .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                        .overlay() {
                            Text("Unscramble")
                                .font(.system(size: 25))
                                .foregroundColor(.white)}
                    HStack {
                        Text("\(numberOfQuestions) of \(countOfQuestions) words")
                            .padding()
                            .font(.system(size: 20))
                        Spacer()
                        Text("Score: \(score)")
                            .padding()
                            .font(.system(size: 20))
                        }
                    Text("\(confusedWord)")
                        .font(.system(size: 50))
                        .padding()
                        .fontWeight(.light)
                    Text("Unscramble the word using all the letters.")
                        .padding()
                    TextField("The tip", text: $answer)
                        .padding()
                        .background(Color.black.opacity(0.05))
                        .frame(width:300, height: 50)
                        .cornerRadius(10)
                    HStack {
                        Button {
                            skipAnswer()
                        } label: {
                            Rectangle()
                                .frame(width: 160, height: 40)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                                .border(Color.indigo)
                                .overlay() {
                                    Text("Skip")
                                        .padding(20)
                                        .foregroundColor(.indigo) }
                        }
                        .padding()
                        .padding()
                        .sheet(isPresented: $isShowingResultSkip) {
                            ResultView
                                .presentationDetents([.fraction(0.2)])
                        }
                        Spacer()
                        Button {
                            sendAnswer()
                        } label: {
                            Rectangle()
                                .frame(width: 160, height: 40)
                                .foregroundColor(.indigo)
                                .cornerRadius(5)
                                .border(Color.indigo)
                                .overlay() {
                                    Text("Submit")
                                        .padding(20)
                                        .foregroundColor(.white) }
                        }
                        .padding()
                        .sheet(isPresented: $isShowingResultSend) {
                            if numberOfQuestions == countOfQuestions && answer == didNotConfusedWord {
                                ResultView
                                    .presentationDetents([.fraction(0.2)])
                            } else {
                                ErrorView
                                    .presentationDetents([.fraction(0.2)])
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
    
    var ErrorView: some View {
        Text("Error")
    }
    var ResultView: some View {
        ZStack {
            VStack {
                Text("Your result is: \(score)")
                Button {
                    restart()
                } label: {
                     Text("Restart")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
