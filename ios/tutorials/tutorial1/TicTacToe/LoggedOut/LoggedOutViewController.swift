//
//  LoggedOutViewController.swift
//  TicTacToe
//
//  Created by Rodrigo Borquez Diaz on 09/03/18.
//  Copyright © 2018 Uber. All rights reserved.
//

import RIBs
import RxSwift
import UIKit
import SnapKit

protocol LoggedOutPresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
    func login(withPlayer1Name player1Name: String?, player2Name: String?)
    
}

final class LoggedOutViewController: UIViewController, LoggedOutPresentable, LoggedOutViewControllable {
    @IBOutlet weak var player1Field: UITextField!
    @IBOutlet weak var player2Field: UITextField!
    
    weak var listener: LoggedOutPresentableListener?
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        didTapLoginButton()
    }
    
    
    
    @objc private func didTapLoginButton() {
        listener?.login(withPlayer1Name: player1Field?.text, player2Name: player2Field?.text)
    }
}
