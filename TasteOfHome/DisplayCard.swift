//
//  DisplayCard.swift
//  TasteOfHome
//
//  Created by Fan Chen on 2/12/17.
//  Copyright © 2017 Fan Chen. All rights reserved.
//

import UIKit

class DisplayCard: UITableViewCell {
  
  // MARK: Public
  
  @IBOutlet weak var stackView: UIStackView!
  @IBOutlet weak var heroImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  
  
  public var heroImageURLString: String = "" {
    didSet {
      updateHeroImageView()
    }
  }
  
  func styleCell() {
    stackView.spacing = 5
    heroImageView.contentMode = .scaleAspectFit
    heroImageView.layer.borderWidth = 1
    heroImageView.layer.borderColor = UIColor.gray.cgColor
  }
  
  private func updateHeroImageView() {
    if let url = URL(string: heroImageURLString) {
      heroImageView.sd_setImage(with: url)
    }
  }
}
