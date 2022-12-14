//
//  AdvertisingWebViewDelegate.swift
//  
//
//  Created by Senior Developer on 07.12.2022.
//
import WebKit
import Foundation

final public class AdvertisingWebViewDelegate: NSObject, WKNavigationDelegate, WKUIDelegate {
    
    public var didFinish: ClosureEmpty?
    public var didCommit: ClosureEmpty?
    
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        didFinish?()
    }
    
    public func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        didCommit?()
    }
    
    public func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        guard let response = (navigationResponse.response as? HTTPURLResponse) else { return decisionHandler(.allow) }
        guard response.statusCode == 404 else { return decisionHandler(.allow) }
        decisionHandler(.allow)
    }
}
