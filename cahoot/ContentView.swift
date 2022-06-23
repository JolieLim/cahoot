import Foundation
import SwiftUI

struct ContentView: View {
    @State var questionIndex = 0
    @State var correctans = false
    @State var wrongans = false
    @State var qnCorrec = 0
    @State var isSheet = false
    var body: some View {
        ZStack{
            Color.purple
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                ProgressView(value: Double(questionIndex+1), total: Double(Quiz.count))
                    .padding()
                
                Text("\(Quiz[questionIndex].qn)")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.white)
                Image("\(Quiz[questionIndex].image)")
                    .resizable()
                    .scaledToFit()
                HStack{
                    VStack{
                        Button {
                            if Quiz[questionIndex].answer == 0{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("▲\(Quiz[questionIndex].options[0])")
                                .font(.system(size: 17))
                                .frame(width: 120)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                
                        }
                        Button {
                            if Quiz[questionIndex].answer == 1{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("■\(Quiz[questionIndex].options[1])")
                                .font(.system(size: 17))
                                .frame(width: 120)
                                .padding()
                                .background(Color.yellow)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }

                    }
                    VStack{
                        Button {
                            if Quiz[questionIndex].answer == 2{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("◆\(Quiz[questionIndex].options[2])")
                                .font(.system(size: 17))
                                .frame(width: 120)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }

                        Button {
                            if Quiz[questionIndex].answer == 3{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("●\(Quiz[questionIndex].options[3])")
                                .font(.system(size: 17))
                                .frame(width: 120)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }

                    }
                }
            }
        }
        .alert("You're right! The answer is \(Quiz[questionIndex].options[Quiz[questionIndex].answer]).", isPresented: $correctans){
                    Button (role: .cancel){
                        if(questionIndex != 3){
                            questionIndex+=1
                        }
                        else{
                            isSheet = true
                        }
                    }label: {
                        Text("OK")
                    }
        }
        .alert("You're wrong! The answer is \(Quiz[questionIndex].options[Quiz[questionIndex].answer]).", isPresented: $wrongans){
                    Button (role: .cancel){
                        if(questionIndex != 3){
                            questionIndex+=1
                        }
                        else{
                            isSheet = true
                        }
                    }label: {
                        Text("OK")
                    }
        }
        .sheet(isPresented: $isSheet) {
            SummaryView(qnCorrect: qnCorrec)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
