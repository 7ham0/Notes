//
//  TableViewController.swift
//  Notes
//
//  Created by Giorgi Shamugia on 2/2/20.
//  Copyright © 2020 Apple Developer. All rights reserved.
//

import UIKit

class noteTableViewCell: UITableViewCell {

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var noteNameLabel: UILabel!
    @IBOutlet weak var noteDescriptionLabel: UILabel!
    @IBOutlet weak var noteImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Styles
        shadowView.layer.shadowColor =  UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha: 1.0).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0.75, height: 0.75)
        shadowView.layer.shadowRadius = 1.5
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.cornerRadius = 10
        
        noteImageView.layer.cornerRadius = 3
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell(note: Note) {
        
        self.noteNameLabel.text = note.noteName?.uppercased()
        self.noteDescriptionLabel.text = note.noteDescription
        self.noteImageView.image = UIImage(data: note.noteImage! as Data)
        
    }

}
