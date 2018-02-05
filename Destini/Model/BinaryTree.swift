//
//  BinaryTree.swift
//  Destini
//
//  Created by Titas Datta on 05/02/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

public indirect enum BinaryTree<T> {
    case node(BinaryTree<T>, T, BinaryTree<T>)
    case empty
}
