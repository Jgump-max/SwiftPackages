//
//  ViewController.swift
//  SwiftPackages
//
//  Created by Jgump on 2020/7/9.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scrollView:CustomScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView = CustomScrollView(rootView: self.view, axis: .horizontal, distribution: .fill, spacing: 10)
    }


}

