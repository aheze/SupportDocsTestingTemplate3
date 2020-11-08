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
      <a id="datasource_url" href="{{ datasource_url }}">{{ datasource_url }}</a>
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
              dataSource: URL(string: "{{ datasource_url }}")!
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
          options.urls.dataSource = URL(string: "{{ datasource_url }}")!
        
          let supportDocsViewController = SupportDocsViewController(options: options)
          self.present(supportDocsViewController, animated: true, completion: nil)
      }
  }
  ```
  </td>
  </tr>
</table>

## Table of Contents
{{ table_of_contents }}

*Note: Your changes make take up to 5 minutes to update.*

## Warning
Do **not** update this file (`README.md`) directly. Your changes will be overriden the next time you push (the GitHub action will re-generate this file). Instead, update the file in `_scripts/README.md`. 
