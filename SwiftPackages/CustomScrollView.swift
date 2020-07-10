//
//  CustomScrollView.swift
//  SwiftPackages
//
//  Created by Jgump on 2020/7/9.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit
@available(iOS 13.5, *)
public class CustomScrollView: UIScrollView {
  public  var stackView:UIStackView!
    
  override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
   required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public convenience init(rootView:UIView,axis:NSLayoutConstraint.Axis,alignment: UIStackView.Alignment,distribution:UIStackView.Distribution,spacing:CGFloat){
        self.init()
        stackView = UIStackView()
        stackView_code(rootView: rootView, axis: axis, alignment: alignment, distribution: distribution, spacing: spacing)
        
    }
    
    
    private  func stackView_code(rootView:UIView,axis:NSLayoutConstraint.Axis,alignment:UIStackView.Alignment,distribution:UIStackView.Distribution,spacing:CGFloat){
        rootView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.frameLayoutGuide.topAnchor.constraint(equalTo: rootView.topAnchor),
            self.frameLayoutGuide.leadingAnchor.constraint(equalTo: rootView.leadingAnchor),
            self.frameLayoutGuide.trailingAnchor.constraint(equalTo: rootView.trailingAnchor),
            self.frameLayoutGuide.bottomAnchor.constraint(equalTo: rootView.bottomAnchor)
        ])
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = alignment
        stackView.axis = axis
        stackView.distribution = distribution
        stackView.spacing = spacing
        
        
        
        switch axis {
        case .horizontal:
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                stackView.topAnchor.constraint(equalTo: rootView.topAnchor),
                stackView.bottomAnchor.constraint(equalTo: rootView.bottomAnchor)
            ])
        case .vertical:
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: rootView.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: rootView.trailingAnchor),
                stackView.topAnchor.constraint(equalTo: self.topAnchor),
                stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        default:
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: self.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        }
        
        self.contentSize = CGSize(width: stackView.frame.width, height: stackView.frame.height)
    }
    
   

}
