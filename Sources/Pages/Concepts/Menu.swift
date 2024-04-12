import Foundation
import Ignite

struct Menu: StaticPage {
    var title = "Menu"

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
        Section {
            Image("/images/KavanaMenu.jpg", description: "KK Shell")
                .resizable()
        }
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
