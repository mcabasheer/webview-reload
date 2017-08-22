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
        
        textfield.text = "https://www.google.com.sg/"
        webView.loadRequest(URLRequest(url: URL.init(string: textfield.text!)!))
        
        }
    
    @IBAction func goClicked(_ sender: UIButton) {
        
        webView.loadRequest(URLRequest(url: URL.init(string: textfield.text!)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UIWebView Delegate
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        if request.url?.host != "www.google.com.sg" {
            // Close your view and go back to previous screen
           self.navigationController?.popViewController(animated: true)
            return false
        }
        
        return true
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
    }


}

