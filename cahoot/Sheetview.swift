import SwiftUI

struct SummaryView: View {
    @State var image = ""
    @State var text = ""
    var qnCorrect: Int
    var body: some View {
        ZStack{
            Color.black
            VStack{
                if qnCorrect == 0{
                Image("0:4")
                    .resizable()
                    .scaledToFit()
                    Text("Aww man go google a link to watch paw patrol free online (pirating ahem)")
                        .foregroundColor(.white)
                        .padding()
                }
                else if qnCorrect == 1{
                Image("1:4")
                    .resizable()
                    .scaledToFit()
                    Text("Aww man go google a link to watch paw patrol free online (pirating ahem)")
                        .foregroundColor(.white)
                        .padding()
                }
                else if qnCorrect == 2{
                Image("2:4")
                    .resizable()
                    .scaledToFit()
                    Text("You passed, congratulations - but you still kinda suck :/")
                        .foregroundColor(.white)
                        .padding()

                }
                else if qnCorrect == 3{
                Image("3:4")
                    .resizable()
                    .scaledToFit()
                    Text("THE FATAL FLAW IN YOUR SEEMINGLY COMPLETE KNOWLEDGE HAS SURFACED GO TO THE WIKI AND PATCH IT UP - YOU WERE SO CLOSE TO PERFECTION SIGH")
                        .foregroundColor(.white)
                        .padding()

                }
                else if qnCorrect == 4{
                Image("4:4")
                    .resizable()
                    .scaledToFit()
                    Text("Your childhood has been certified to be amazing, perfect and marvellous")
                        .foregroundColor(.white)
                        .padding()

                }
            }
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(qnCorrect: 0)
    }
}
