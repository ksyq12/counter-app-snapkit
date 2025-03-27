//
//  ViewController.swift
//  CounterAppSnapkitCodebase
//
//  Created by shinyoungkim on 3/26/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private var number: Int = 0
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 45)
        label.textAlignment = .center
        return label
    }()
    
    let plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("증가", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("감소", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()
    
    let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("RESET", for: .normal)
        button.backgroundColor = .gray
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        numberLabel.text = "\(number)"
        
        plusButton.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        
        [numberLabel, plusButton, minusButton, resetButton]
            .forEach { view.addSubview($0) }
        
        numberLabel.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.center.equalToSuperview()
        }
        
        plusButton.snp.makeConstraints {
            $0.centerY.equalTo(numberLabel.snp.centerY)
            $0.width.equalTo(60)
            $0.height.equalTo(30)
            $0.leading.equalTo(numberLabel.snp.trailing).offset(32)
        }
        
        minusButton.snp.makeConstraints {
            $0.centerY.equalTo(numberLabel.snp.centerY)
            $0.width.equalTo(60)
            $0.height.equalTo(30)
            $0.trailing.equalTo(numberLabel.snp.leading).offset(-32)
        }
        
        resetButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.top.equalTo(numberLabel.snp.bottom).offset(100)
        }
    }
    
    @objc func plusButtonTapped() {
        
    }
    
    @objc func minusButtonTapped() {
        
    }
    
    @objc func resetButtonTapped() {
        
    }

}

