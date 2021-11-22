//
//  ViewController.swift
//  ContentHugging
//
//  Created by Camila Ribeiro Rodrigues on 22/11/21.
//

import UIKit

class ViewController: UIViewController {

	private let lbl1: UILabel = {
		let label = UILabel()
		label.text = "Camila Camila Camila Camila"
		label.numberOfLines = 0
		label.font = .systemFont(ofSize: 50)
		label.backgroundColor = .systemPink
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textAlignment = .center
		return label
	}()
	
	private let lbl2: UILabel = {
		let label = UILabel()
		label.text = "Rodrigues"
		label.numberOfLines = 0
		label.backgroundColor = .systemCyan
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = .systemFont(ofSize: 50)
		label.textAlignment = .center
		return label
	}()
	override func viewDidLoad() {
		super.viewDidLoad()
		view.addSubview(lbl1)
		view.addSubview(lbl2)
		
		NSLayoutConstraint.activate([
			lbl1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			lbl1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			lbl1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			lbl2.topAnchor.constraint(equalTo: lbl1.bottomAnchor),
			lbl2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			lbl2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			lbl2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
		])
		
		lbl1.setContentHuggingPriority(.defaultLow, for: .vertical)
		lbl2.setContentHuggingPriority(.defaultHigh, for: .vertical)
	}
	

}

