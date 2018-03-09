//
//  OffGameRouter.swift
//  TicTacToe
//
//  Created by Rodrigo Borquez Diaz on 09/03/18.
//  Copyright © 2018 Uber. All rights reserved.
//

import RIBs

protocol OffGameInteractable: Interactable {
    weak var router: OffGameRouting? { get set }
    weak var listener: OffGameListener? { get set }
}

protocol OffGameViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class OffGameRouter: ViewableRouter<OffGameInteractable, OffGameViewControllable>, OffGameRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: OffGameInteractable, viewController: OffGameViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
