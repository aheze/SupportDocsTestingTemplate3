
![SupportDocs Logo](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/SupportDocsSmall.png)

### Generate help centers for your iOS apps, with Markdown!

# SupportDocs is currently under heavy development. Check back in a couple days!


## Categories
Group multiple documents in the same section. You make a category by specifying the JSON tag name(s), title to display, and color of the row.

It’s easier to understand with an example. We’ll use the [documents](https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/_data/supportdocs_datasource.json) inside the DataSource branch, which are these:

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Categories/colorCategories.png)

As you can see, each document has tags applied to them. You put this in the [front matter](https://jekyllrb.com/docs/front-matter/), underneath the `title:` like this:

```
---
title: Buy blue boba
tags: boba <!-- put tags here! -->
---

# Buy blue boba

Blue and yummy. Buy this at [google.com](https://google.com)
```
Once your documents have tags, you can start using categories inside your app. Here’s how to make SupportDocs display one category that contains all documents tagged with “boba”:

<table>
  <tr>
  </tr>
  <tr>
  <td>
    
  ```Swift
  /// SwiftUI
  
  let options = SupportOptions(
      categories: [
          .init(
              jsonTagNames: ["boba"],
              displayName: "Display Name Is Boba",
              displayColor: UIColor.blue
          )
      ]
  )
  ```
  </td>
  <td>
  <img src="https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/NavigationBar/navigationTitleColor.png">
  </td>
  </tr>
</table>

<details>
  <summary>Show full code (SwiftUI and UIKit)</summary>
<table>

  <tr>
  <td>
    SwiftUI
  </td>
  
  </tr>

  <tr>
  <td>

  ```Swift
  struct SwiftUIExampleView_WithCategories: View {
      let dataSource = URL(string: "https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/_data/supportdocs_datasource.json")!
    
      let options = SupportOptions(
          categories: [
              .init(
                  jsonTagNames: ["boba"],
                  displayName: "Display Name Is Boba",
                  displayColor: UIColor.blue
              )
          ]
      )
    
      @State var supportDocsPresented = false
    
      var body: some View {
          Button("Present SupportDocs from SwiftUI!") { supportDocsPresented = true }
          .sheet(isPresented: $supportDocsPresented, content: {
              SupportDocsView(dataSource: dataSource, options: options)
          })
      }
  }
  ```
  </td>
  </tr>

  <tr>
  <td>
    UIKit
  </td>
  </tr>

  <tr>
  <td>

  ```Swift
  class UIKitExampleController_WithCategories: UIViewController {
    
      /**
       Connect this inside the storyboard.
       
       This is just for demo purposes, so it's not connected yet.
       */
      @IBAction func presentButtonPressed(_ sender: Any) {
        
          let dataSource = URL(string: "https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/_data/supportdocs_datasource.json")!
        
          var options = SupportOptions()
          let bobaCategory = SupportOptions.Category(
              jsonTagNames: ["boba"],
              displayName: "Display Name Is Boba",
              displayColor: UIColor.blue
          )
        
          options.categories = [bobaCategory]
        
          let supportDocsViewController = SupportDocsViewController(dataSource: dataSource, options: options)
          self.present(supportDocsViewController, animated: true, completion: nil)
      }
  }
  ```
  </td>
  </tr>
</table>
</details>

