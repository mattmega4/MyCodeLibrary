//
//  TextField Code.swift
//  MyCodeLibrary
//
//  Created by Matthew Singleton on 2/12/17.
//  Copyright © 2017 Matthew Singleton. All rights reserved.
//

import Foundation
import UIKit


// MARK: Hiding and Showing Keyboard

func hidingandShowingKeyboard() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(NameOfViewController.dismissKeyboard))
    view.addGestureRecognizer(tap)
    tap.cancelsTouchesInView = false
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
}




func keyboardWillShow(notification:NSNotification) {
  var userInfo = notification.userInfo!
  var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
  keyboardFrame = self.view.convert(keyboardFrame, from: nil)
  var contentInset: UIEdgeInsets = self.scrollView.contentInset
  contentInset.bottom = keyboardFrame.size.height + 30 // whatever
  self.scrollView.contentInset = contentInset
  // Hide and disable Any Buttons Or Objects I might tap on when trying to dismiss keyboard
}


func keyboardWillHide(notification:NSNotification) {
  let contentInset:UIEdgeInsets = UIEdgeInsets.zero
  self.scrollView.contentInset = contentInset
  // Un Hide and Re enable those objects
}


func dismissKeyboard() {
  view.endEditing(true)
}


func textFieldShouldClear(_ textField: UITextField) -> Bool {
  self.view.endEditing(true)
  return true
}


func textFieldShouldReturn(_ textField: UITextField) -> Bool {
  self.view.endEditing(true)
  textField.resignFirstResponder()
  return false
}


// MARK: Text Field Targe

//fields.addTarget(self, action: #selector(...), for: .editingChanged)


// MARK: Turn Off AutoCorrect

//TextField.autocorrectionType = .no

