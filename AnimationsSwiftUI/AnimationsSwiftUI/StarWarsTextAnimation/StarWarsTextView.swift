import SwiftUI

struct StarWarsTextView: View{
    @State private var animationStart = false
    private let startAnimationDuration = 11.0
    
    var body: some View{

        ZStack(alignment: .center){
            Image("StarWarsSpace")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Episode IV: A New Hope from 1977 - the one where we learn a blaster at your side is no match for a hokey religion…")
                    .fontWeight(.bold)
                
                Text("it is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire. During the battle, Rebel spies managed to steal secret plans to the Empire’s ultimate weapon, the DEATH STAR, an armored space station with enough power to destroy an entire planet. ")
                    .fontWeight(.bold)
                
                Text("Pursued by the Empire’s sinister agents, Princess Leia races home aboard her starship, custodian of the stolen plans that can save her people and restore freedom to the galaxy….")
                    .fontWeight(.bold)
                
                Text("Trivia: Film director Brian De Palma convinced George Lucas to shorten the original text he had drafted.")
                    .fontWeight(.bold)
                
                Text("Trivia 2: When Star Wars was first released in 1977 the crawl did not feature the text A New Hope that came later after the film was a success.")
                    .fontWeight(.bold)
                    
            }
            .font(.title)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.yellow)
            .lineSpacing(10)
            .padding()
            .rotation3DEffect(.degrees(50), axis: (x: 1, y: 0, z: 0))
            .frame(width: 400, height: animationStart ? 0 : 1000)
            .onAppear(){
                self.animationStart.toggle()
            }
            .animation(Animation.linear(duration: startAnimationDuration))
        }
    }
}

struct StarWarsTextView_Previews: PreviewProvider {
    static var previews: some View {
        StarWarsTextView()
    }
}
