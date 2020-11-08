# SupportDocs: DataSource
This is where SupportDocs gets its data!

<table>
  <tr>
    <td>
      <strong>Your data source JSON url is:
    </td>
  </tr>
  <tr>
    <td>
      <a id="datasource_url" href="https://raw.githubusercontent.com/aheze/SupportDocsTestingTemplate3/DataSource/_data/supportdocs_datasource.json">https://raw.githubusercontent.com/aheze/SupportDocsTestingTemplate3/DataSource/_data/supportdocs_datasource.json</a>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td>
      How to use (SwiftUI)
    </td>
  </tr>
  <tr>
  <td>
     
  ```Swift
  struct SwiftUIExampleView_MinimalCode: View {
    
      let options = SupportOptions(
          urls: .init(
              dataSource: URL(string: "https://raw.githubusercontent.com/aheze/SupportDocsTestingTemplate3/DataSource/_data/supportdocs_datasource.json")!
          )
      )
    
      @State var supportDocsPresented = false
    
      var body: some View {
          VStack {
              Button("Present SupportDocs from SwiftUI!") { supportDocsPresented = true }
              .sheet(isPresented: $supportDocsPresented, content: {
                  SupportDocsView(options: options, isPresented: $supportDocsPresented)
              })
          }
      }
  }
  ```
  </td>
  </tr>
  
  <tr>
    <td>
      How to use (UIKit)
    </td>
  </tr>
  <tr>
  <td>
     
  ```Swift
  class UIKitExampleController_MinimalCode: UIViewController {
    
      /**
       Connect this inside the storyboard.
     
       This is just for demo purposes, so it's not connected yet.
       */
      @IBAction func presentButtonPressed(_ sender: Any) {
        
          var options = SupportOptions()
          options.urls.dataSource = URL(string: "https://raw.githubusercontent.com/aheze/SupportDocsTestingTemplate3/DataSource/_data/supportdocs_datasource.json")!
        
          let supportDocsViewController = SupportDocsViewController(options: options)
          self.present(supportDocsViewController, animated: true, completion: nil)
      }
  }
  ```
  </td>
  </tr>
</table>

## Table of Contents
- [How to eat grilled cheese](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-FastFood/HowToEatGrilledCheese) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [How to make spaghetti](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-FastFood/HowToMakeSpaghetti) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [How to eat burritos](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-FastFood/HowToEatBurritos) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [How to eat tacos](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-FastFood/HowToEatTacos) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [How to eat nachos](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-FastFood/HowToEatNachos) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [How to Prepare Ramen](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-FastFood/HowToPrepareRamen) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [How to Cook Pizza](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-FastFood/HowToCookPizza) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Plum smoothie](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Smoothies/Plum) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Peach smoothie](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Smoothies/Peach) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Blueberry Smoothie](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Smoothies/Blueberry) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Red berry smoothie](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Smoothies/RedBerries) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Apple smoothie](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Smoothies/Apple) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Buy cream boba](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Boba/BuyCreamBoba) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Buy blue boba](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Boba/BuyBlueBoba) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)- [Buy orange boba](https://aheze.github.io/SupportDocsTestingTemplate3/Sample-Boba/BuyOrangeBoba) ([edit](https://github.com/aheze/SupportDocsTestingTemplate3/edit/DataSource/_scripts/README.md)

## Notes
Do **not** update this file (`README.md`) directly. Instead, update the file in `_scripts/README.md`.