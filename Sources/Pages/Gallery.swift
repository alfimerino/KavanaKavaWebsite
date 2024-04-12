import Foundation
import Ignite

struct Gallery: StaticPage {
    var title = "Gallery"

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
        Image("/images/GalleryBanner.jpg", description: "Contact Us Page")
            .resizable()
//        Embed(title: "Gallery", url: URL("https://bb57cc864c69434b88390efdad6bd6c0.elf.site"))
//            .aspectRatio(.square)
//            .backgroundColor(.black)
        Section {
            Include("igKavana.html").backgroundColor(.black)
        }.horizontalAlignment(.center)
        
        //MARK: Footer -
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
