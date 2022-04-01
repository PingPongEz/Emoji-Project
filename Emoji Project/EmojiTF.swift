//
//  EmojiTF.swift
//  Emoji Project
//
//  Created by u on 01.04.2022.
//

import UIKit

class EmojiTF: UITextField {

    override var textInputContextIdentifier: String? {""}
    
    override var textInputMode: UITextInputMode? {
        for mode in UITextInputMode.activeInputModes {
            if mode.primaryLanguage == "emoji" {
                return mode
            }
        }
        return nil
    }

}
