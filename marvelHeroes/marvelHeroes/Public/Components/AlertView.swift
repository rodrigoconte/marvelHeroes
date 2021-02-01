//
//  AlertView.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import UIKit
import Lottie

protocol AlertViewDelegate: AnyObject {
    func alertView(_ alertView: AlertView, didTouchButton button: UIButton)
}

class AlertView: UIView {
    
    weak var delegate: AlertViewDelegate?
    
    //MARK: UI Variables
    
    private var animationView: AnimationView {
        let animationView = AnimationView()
        let animation = Animation.named("deadpool")
        animationView.animation = animation
        animationView.play(fromProgress: 0, toProgress: 1, loopMode: LottieLoopMode.loop)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return animationView
    }
    
    lazy private var messageLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    lazy private var button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(didTouchButton), for: .touchUpInside)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    lazy private var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [animationView, messageLabel, button])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 5
        return stackView
    }()
    
    //MARK: Variables
    
    var message: String {
        get {
            messageLabel.text ?? ""
        }
        set {
            messageLabel.text = newValue
        }
    }
    
    var buttonTitle: String {
        get {
            button.titleLabel?.text ?? ""
        }
        set {
            button.setTitle(newValue, for: .normal)
        }
    }
    
    //MARK: Object Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: Private Functions
    
    private func setup() {
        backgroundColor = .white
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    @objc private func didTouchButton() {
        delegate?.alertView(self, didTouchButton: button)
    }
}
