struct Question {
    var qn: String
    var options: [String]
    var image: String
    var answer: String
}

let Quiz = [
    Question(qn: "Where does the Paw Patrol live?", options:["Rescue Bay", "Foggy Bottoms", "Adventure Bay", "Meriden"], image: "q1", answer: "Adventure Bay"),
    Question(qn: "What's the name of the Mayor?", options:[ "Mayor Goodway",  "Mayor Alex", "Mayor Jeff", "Mayor Mickey"], image: "q2", answer: "Mayor Goodway"),
    Question(qn: "What kind of pet does Mayor Goodway have?", options: ["Dog", "Chicken" , "Horse", "Cat"], image: "q3", answer: "Chicken"),
    Question(qn: "Which pup hates the water?", options: ["Zoomer", "Skye", "Rubble", "Rocky"], image: "q4", answer: "Rocky")
]
