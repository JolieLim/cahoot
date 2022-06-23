import Foundation
import SwiftUI
struct Question {
    var qn: String
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    var image: String
    var answer: String
}
struct ContentView: View {
    let Quiz = [
        Question(qn: "Where does the Paw Patrol live?", option1: "Rescue Bay", option2: "Foggy Bottoms", option3: "Adventure Bay", option4: "Meriden", image: "q1", answer: "Adventure Bay"),
        Question(qn: "What's the name of the Mayor?", option1: "Mayor Goodway", option2: "Mayor Alex", option3: "Mayor Jeff", option4: "Mayor Mickey", image: "q2", answer: "Mayor Goodway"),
        Question(qn: "What kind of pet does Mayor Goodway have?", option1: "Dog", option2: "Chicken" , option3: "Horse", option4: "Cat", image: "q3", answer: "Chicken"),
        Question(qn: "Which pup hates the water?", option1: "Zoomer", option2: "Skye", option3: "Rubble", option4: "Rocky", image: "q4", answer: "Rocky")
    ]
    
    @State var questionIndex = 0
    @State var correctans = false
    @State var wrongans = false
    @State var qnCorrec = 0
    @State var isSheet = false
    @State var timeRemaining = 60
       let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack{
            Color.purple
                .edgesIgnoringSafeArea(.all)
            VStack{
                
             
                
                Text("\(timeRemaining)")
                            .onReceive(timer) { _ in
                                if timeRemaining > 0 {
                                    timeRemaining -= 1
                                }
                                
                                if timeRemaining == 0 {
                                    isSheet = true
                                }
                                
                            }
                
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
                            if Quiz[questionIndex].option1 == Quiz[questionIndex].answer{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("\(Quiz[questionIndex].option1)")
                                .font(.system(size: 17))
                                .frame(width: 120)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                
                        }
                        Button {
                            if Quiz[questionIndex].option2 == Quiz[questionIndex].answer{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("\(Quiz[questionIndex].option2)")
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
                            if Quiz[questionIndex].option3 == Quiz[questionIndex].answer{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("\(Quiz[questionIndex].option3)")
                                .font(.system(size: 17))
                                .frame(width: 120)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }

                        Button {
                            if Quiz[questionIndex].option4 == Quiz[questionIndex].answer{
                                correctans = true
                                qnCorrec+=1
                            }
                            else{
                                wrongans = true
                            }
                        } label: {
                            Text("\(Quiz[questionIndex].option4)")
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
        .alert("You're right! The answer is \(Quiz[questionIndex].answer).", isPresented: $correctans){
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
        .alert("You're wrong! The answer is \(Quiz[questionIndex].answer).", isPresented: $wrongans){
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
            SummaryView(qnCorrect: qnCorrec,curtime: timeRemaining)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
