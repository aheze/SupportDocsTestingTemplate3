//
//  SupportDocsViewController.swift
//  SupportDocsSwiftUI
//
//  Created by Zheng on 10/18/20.
//

import UIKit
import SwiftUI

/**
 UIKit wrapper for `SupportDocsView`.
 */
public class SupportDocsViewController: UIViewController {
    
    /**
     Allow instantiating `SupportDocsView` in your app.
     */
    public init(options: SupportOptions) {
        self.options = options
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public var options: SupportOptions
    
    public override func loadView() {
        
        /**
         Instantiate the base `view`.
         */
        view = UIView()

        /**
         Create a `SupportDocsView`.
         */
        var supportDocsView = SupportDocsView(
            options: options
        )
        
        /**
         Set the dismiss button handler.
         */
        supportDocsView.donePressed = { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }
        
        /**
         Host `supportDocsView` in a view controller.
         */
        let hostedSupportDocs = UIHostingController(rootView: supportDocsView)
        
        /**
         Embed `hostedSupportDocs`.
         */
        self.addChild(hostedSupportDocs)
        view.addSubview(hostedSupportDocs.view)
        hostedSupportDocs.view.frame = view.bounds
        hostedSupportDocs.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        hostedSupportDocs.didMove(toParent: self)
    }
}
