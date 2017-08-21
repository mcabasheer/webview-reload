//
//  ViewController.swift
//  WebViewReload
//
//  Created by Basheer Ahamed on 21/8/17.
//  Copyright © 2017 Basheer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var textfield : UITextField!
    @IBOutlet weak var webView : UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textfield.text = "https://stackoverflow.com/"
        webView.loadRequest(NSURLRequest(URL: NSURL.init(string: textfield.text!)!))
        
        }
    
    @IBAction func goClicked(sender: UIButton) {
        
        webView.loadRequest(NSURLRequest(URL: NSURL.init(string: textfield.text!)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UIWebView Delegate
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        
        
        if request.URL?.absoluteString != textfield.text {
            // Close your view and go back to previous screen
           
            return false
        }
        
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        
    }
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        
    }


}

