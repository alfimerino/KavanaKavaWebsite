import Foundation
import Ignite

struct ContactUs: StaticPage {
    var title = "Contact Us"

    func body(context: PublishingContext) -> [BlockElement] {
        NavigationBar(logo: Image("/images/KavanaLogo.png", description: "Kavana Kava Logo").lazy().resizable().frame(height: 80)) {
            Link("Home", target: "/")
            Link("Menu", target: Menu())
            Link("Gallery", target: "/Gallery")
//            Link("Blog", target: "/")
            Link("Order To Go", target: "https://www.ubereats.com/store/kavana-kava-bar/46r2WGNWTKCZL8iQza_XXw")
            Link("Contact Us", target: ContactUs())
        }
        .backgroundColor(.black)
        .navigationBarStyle(.dark)
        Group {
            Image("/images/Contact1.jpg", description: "Contact Us Page")
                .resizable()
            Group {
                Text("Hours")
                    .font(.title2)
                    .foregroundStyle(.mediumPurple)
                    .backgroundColor(.black)
                    .innerShadow(.black, radius: 20)
                    .padding(.leading, 20)
                    .horizontalAlignment(.leading)
                List {
                    "Thursday   8 AM–2 AM"
                    "Friday     8 AM–2 AM"
                    "Saturday   8 AM–2 AM"
                    "Sunday     8 AM–2 AM"
                    "Monday     8 AM–2 AM"
                    "Tuesday    8 AM–2:30 AM"
                    "Wednesday  8 AM–2 AM"
                }.horizontalAlignment(.leading)
                    .foregroundStyle(.mediumPurple)
                    .backgroundColor(.black)
                    .innerShadow(.black, radius: 20)
            }
            .padding(.vertical, 30)
            
            Divider()
            Text("Our Location")
                .horizontalAlignment(.center)
                .font(.title2)
                .foregroundStyle(.mediumPurple)
                .backgroundColor(.black)
                .innerShadow(.black, radius: 20)
            Text("""
                 Kavana Kava Bar
                 3890 SW 64th Ave Suite #102, Davie, FL 33314
                 """).foregroundStyle(.mediumPurple)
                .backgroundColor(.black)
                .innerShadow(.black, radius: 20)
                .horizontalAlignment(.center)
            Embed(title: "Kavana Kava in Davie", url: URL("https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14335.054902041114!2d-80.231813!3d26.0739771!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9a912f71e91a9%3A0x82dbe65c28aa2d6e!2sKavana%20Kava%20Bar!5e0!3m2!1sen!2sus!4v1712845342517!5m2!1sen!2sus"))
                .aspectRatio(.r16x9)
        }.backgroundColor(.black)
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
