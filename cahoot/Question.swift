struct Question {
    var qn: String
    var options: [String]
    var image: String
    var answer: Int
}

let Quiz = [
    Question(qn: "Where does the Paw Patrol live?", options:["Rescue Bay", "Foggy Bottoms", "Adventure Bay", "Meriden"], image: "q1", answer: 2),
    Question(qn: "What's the name of the Mayor?", options:[ "Mayor Goodway",  "Mayor Alex", "Mayor Jeff", "Mayor Mickey"], image: "q2", answer: 0),
    Question(qn: "What kind of pet does Mayor Goodway have?", options: ["Dog", "Chicken" , "Horse", "Cat"], image: "q3", answer: 1),
    Question(qn: "Which pup hates the water?", options: ["Zoomer", "Skye", "Rubble", "Rocky"], image: "q4", answer: 3), 
    Question(qn: "Which one is the fire pup?",
             options: ["Marshall", "Zuma", "Rocky", "Chase"], image: "q5", answer: 1)
]
