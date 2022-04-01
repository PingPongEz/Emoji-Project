//
//  ViewController.swift
//  Emoji Project
//
//  Created by u on 31.03.2022.
//

import UIKit

class NewEmojiViewController: UITableViewController {
    
    var emojiCopy: Cell!
    
    @IBOutlet var emojiName: UITextField!
    @IBOutlet var descriptionTF: UITextField!
    @IBOutlet var emoji: UITextField!
    
    @IBOutlet var saveButtonStatus: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNewEmoji()
    }
    
    @IBAction func textFieldsEdited(_ sender: UITextField) {
        addNewEmoji()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        print("suck here")
        guard segue.identifier == "addToCells" else { return }
        let emoji = Cell(name: emojiName.text!,
                         emoji: emoji.text!,
                         description: descriptionTF.text!)
        emojiCopy = emoji
        
    }
    
    func addNewEmoji() {
        let name = emojiName.text ?? ""
        let description = descriptionTF.text ?? ""
        let emoji = emoji.text ?? ""
        
        saveButtonStatus.isEnabled = !name.isEmpty && !description.isEmpty && !emoji.isEmpty
    }
}

