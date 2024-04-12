import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"
    
    func body(context: PublishingContext) -> [BlockElement] {
        NavigationBar(logo: Image("/images/KavanaLogo.png", description: "Kavana Kava Logo").lazy().resizable().frame(height: 80)) {
            Link("Home", target: "/")
            Link("Menu", target: Menu())
            Link("Gallery", target: Gallery())
            //            Link("Blog", target: "/")
            Link("Order To Go", target: "https://www.ubereats.com/store/kavana-kava-bar/46r2WGNWTKCZL8iQza_XXw")
            Link("Contact Us", target: ContactUs())
        }
        .backgroundColor(.black)
        .navigationBarStyle(.dark)
        //MARK: Carousel
        Carousel {
            Slide(background: "/images/shell.jpg"){
                Text("We provide meticulously crafted elixirs of Kava and Exotic Teas.")
                    .font(.lead)
                Text {
                    Link("See Kavana Menu", target: Menu())
                        .linkStyle(.button)
                }
            }
            .backgroundOpacity(0.5)
            
            Slide(background: "/images/teas.jpg"){
                Text("Kavana To Go.")
                    .font(.lead)
                Text {
                    Link("Order from Uber Eats", target: "https://www.ubereats.com/store/kavana-kava-bar/46r2WGNWTKCZL8iQza_XXw")
                        .linkStyle(.button)
                }
            }
            .backgroundOpacity(0.5)
            
            Slide(background: "/images/friends.jpg") {
                Text("Visit us for some good times.")
                    .font(.lead)
                Text {
                    Link("Directions", target: "https://maps.app.goo.gl/bA6MmXi7F2eMbmw29")
                        .linkStyle(.button)
                }
            }
            .backgroundOpacity(0.5)
        }
        Section {
            Group {
                Text("About Kavana Kava")
                    .font(.title2)
                    .foregroundStyle(.mediumPurple)
                    .backgroundColor(.black)
                    .horizontalAlignment(.center)
                
                Text("Nestled in the heart of the community, Kavana Kava offers more than just a place to unwind—it's a sanctuary for holistic relaxation and mindful socializing. At Kavana Kava, patrons are welcomed into a tranquil environment where the stresses of the day fade away amidst the soothing ambiance and earthy aromas. With a commitment to quality and sustainability, Kavana Kava prides itself on serving only the finest varieties of Kava, sourced ethically and prepared with expertise. Whether seeking a moment of tranquility alone or connecting with friends over a shared experience, Kavana Kava promises an unforgettable journey into the world of natural relaxation and well-being.").foregroundStyle(.white)
            }
            Image("/images/bartenders.png", description: "A laundry basket.")
                .resizable()
                .frame(height: 300)

        }
        .horizontalAlignment(.center)
//        .frame(width: 700)
        .backgroundColor(.black)
        .padding(.vertical, 50)

        Text(markdown: """
            Copyright © 2024 Kavana Kava Bar,<br />
            (954) 999-5641
            """)
        .foregroundStyle(.mediumPurple)
        .backgroundColor(.black)
        .padding(.vertical, 50)
        .horizontalAlignment(.center)
    }
}

struct Marica: StaticPage {
    var title = "Home"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Text("Marika")
    }
}
