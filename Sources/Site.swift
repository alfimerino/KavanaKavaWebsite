import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() {
        let site = ExampleSite()

        do {
            try site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Hello World"
    var baseTitle = " – My Awesome Site"
    var url = URL("https://www.example.com")
    var builtInIconsEnabled = true

    var author = "John Appleseed"

    var homePage = Home()
    var theme = MyTheme()
    var gallery = Gallery()
    var contactUs = ContactUs()
    var menu = Menu()
    
    var pages: [any StaticPage] {
        homePage
        gallery
        contactUs
        menu
    }
}




