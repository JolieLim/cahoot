//
//  CircularProgressView.swift
//  cahoot
//
//  Created by T Krobot on 23/6/22.
//

import SwiftUI

struct CircularProgressView: View {
    
    var progress: CGFloat
    var correc: Int
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(.red)
                .padding()
            Circle()
                .trim(from: 0, to:progress)
                .stroke(style: .init(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(.red)
                .rotationEffect(Angle(degrees: 270))
                .padding()
            Text("You got \(correc)/\(Quiz.count) correct!")
        }
            if progress == 0{
                Text("Aww man go google a link to watch paw patrol free online (pirating ahem)")
                    .foregroundColor(.black)
                    .padding()
            }
            else if progress == 1/4{
                Text("Aww man go google a link to watch paw patrol free online (pirating ahem)")
                    .foregroundColor(.black)
                    .padding()
            }
            else if progress == 0.5{
                Text("You passed, congratulations - but you still kinda suck :/")
                    .foregroundColor(.black)
                    .padding()
            }
            else if progress == 3/4{
                Text("THE FATAL FLAW IN YOUR SEEMINGLY COMPLETE KNOWLEDGE HAS SURFACED GO TO THE WIKI AND PATCH IT UP - YOU WERE SO CLOSE TO PERFECTION SIGH")
                    .foregroundColor(.black)
                    .padding()
            }
            else{
                Text("Your childhood has been certified to be amazing, perfect and marvellous")
                    .foregroundColor(.black)
                    .padding()

            }
        }
    }

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(progress: 1/4,correc: 1)
    }
}
