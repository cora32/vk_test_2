//
//  ViewController.swift
//  vk_test_2
//
//  Created by ILN on 08/05/2019.
//  Copyright © 2019 ILN. All rights reserved.
//

import UIKit
import VK_ios_sdk

class ViewController: UIViewController {
    var sdkInstance: VKSdk!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        sdkInstance = VKSdk.initialize(withAppId: "6500292")
    }
    
    @IBAction func tUp(_ sender: Any) {
        label.text = "test"
        let instance = CustomObject()
        instance.someMethod()
        print(instance.someProperty)
        
        print("Version: " + sdkInstance.apiVersion)
        sdkInstance.register(self as! VKSdkDelegate)
        sdkInstance.uiDelegate = self as! VKSdkUIDelegate
        
        VKSdk.authorize(["friends", "offline", "email"]);
    }

}

extension ViewController: VKSdkDelegate, VKSdkUIDelegate {
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        print("vkSdkShouldPresent! ")
        
        if (self.presentedViewController != nil) {
            self.dismiss(animated: true, completion: {
                print("hide current modal controller if presents")
                self.present(controller, animated: true, completion: {
                    print("SFSafariViewController opened to login through a browser")
                })
            })
        } else {
//            self.present(controller, animated: true, completion: {
//                print("SFSafariViewController opened to login through a browser")
//            })
        }
        controller.view.removeFromSuperview()
    }
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print("vkSdkAccessAuthorizationFinished! " + result.token.accessToken)
        
        label.text = result.token.accessToken
    }
    
    func vkSdkAccessAuthorizationFinishedWithResult(result:VKAuthorizationResult?) -> Void {
        print("token2: \(String(describing: result?.token))")
    }
    
    func vkSdkAccessTokenUpdated(newToken: VKAccessToken, oldToken: VKAccessToken) {
        print("vkSdkAccessTokenUpdated: \(String(describing: newToken.accessToken))  \(String(describing: oldToken.accessToken))")
    }
    
    func vkSdkUserAuthorizationFailed() {
        print("vkSdkUserAuthorizationFailed!")
    }
    
    func vkSdkNeedCaptchaEnter(_ 	captchaError: VKError) {
        print("vkSdkNeedCaptchaEnter!")
        
    }
    func vkSdkTokenHasExpired(expiredToken: VKAccessToken) {
        print("vkSdkTokenHasExpired!")
        
    }
    func vkSdkUserDeniedAccess(authorizationError: VKError) {
        print("vkSdkUserDeniedAccess!")
    }
    func vkSdkShouldPresentViewController(controller: UIViewController) {
        print("vkSdkShouldPresentViewController!")
    }
    func vkSdkReceivedNewToken(newToken: VKAccessToken) {
        print("vkSdkReceivedNewToken! " + newToken.accessToken)
}
    func vkSdkIsBasicAuthorization() {
        
    }
}

