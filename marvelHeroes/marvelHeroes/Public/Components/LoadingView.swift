//
//  LoadingView.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import UIKit
import NVActivityIndicatorView

class LoadingView: UIView {
    
    static private let shared = LoadingView()
    
    //MARK: Object Life Cycle
    
    convenience init() {
        self.init(frame: UIScreen.main.bounds)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: Public Functions
    
    static func show(view: UIView) {
        shared.addSelfOnView(view: view)
    }
    
    static func dismiss() {
        UIView.animate(withDuration: 0.5, animations: {
            shared.alpha = 0
        }) { (_) in
            shared.removeFromSuperview()
        }
    }
    
    //MARK: Private Functions
    
    func setup() {
        backgroundColor = UIColor.black.withAlphaComponent(0)
        addActivityView()
    }
    
    private func addSelfOnView(view: UIView) {
        view.addSubview(self)
        view.bringSubviewToFront(self)
        alpha = 1
        UIView.animate(withDuration: 0.5) {
            self.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        }
    }
    
    private func addActivityView() {
        let activity = NVActivityIndicatorView(frame: frame, type: .lineScale, color: .black)
        activity.startAnimating()
        addSubview(activity)
        
        activity.translatesAutoresizingMaskIntoConstraints = false
        activity.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        activity.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        activity.heightAnchor.constraint(equalToConstant: 50).isActive = true
        activity.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
