struct Question {
    var qn: String
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    var image: String
    var answer: String
}

let Quiz = [
    Question(qn: "Where does the Paw Patrol live?", option1: "Rescue Bay", option2: "Foggy Bottoms", option3: "Adventure Bay", option4: "Meriden", image: "q1", answer: "Adventure Bay"),
    Question(qn: "What's the name of the Mayor?", option1: "Mayor Goodway", option2: "Mayor Alex", option3: "Mayor Jeff", option4: "Mayor Mickey", image: "q2", answer: "Mayor Goodway"),
    Question(qn: "What kind of pet does Mayor Goodway have?", option1: "Dog", option2: "Chicken" , option3: "Horse", option4: "Cat", image: "q3", answer: "Chicken"),
    Question(qn: "Which pup hates the water?", option1: "Zoomer", option2: "Skye", option3: "Rubble", option4: "Rocky", image: "q4", answer: "Rocky")
]
