//
//  EventDetailTableViewCell.swift
//  FishBowl
//
//  Created by Viviane Chan on 2016-08-08.
//  Copyright © 2016 LightHouse Labs. All rights reserved.
//

import UIKit
import Material


public class EventDetailTableViewCell: UITableViewCell {
    public lazy var defaultImageView: UIImageView = UIImageView()
    public lazy var defaultLabel: UILabel = UILabel()
    public lazy var defaultDescription: UILabel = UILabel()
    public lazy var defaultParticipants: UILabel = UILabel()
    
    
    /*
     @name   required initWithCoder
     */
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /*
     @name   init
     */
    public override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareDefaultImageView()
        prepareDefaultLabel()
        prepareDefaultDescription()
        prepareDefaultParticipants()
        
    }
    
    /*
     @name   layoutSubviews
     */
    public override func layoutSubviews() {
        super.layoutSubviews()
        layoutDefaultImageView()
        layoutDefaultLabel()
        layoutDefaultDescription()
        layoutDefaultParticipants()
    }
    
    /*
     @name   prepareDefaultImageView
     */
    public func prepareDefaultImageView() {
        defaultImageView.backgroundColor = UIColor.clearColor()
        defaultImageView.clipsToBounds = true
        contentView.addSubview(defaultImageView)
    }
    
    /*
     @name   prepareDefaultLabel
     */
    public func prepareDefaultLabel() {
        defaultLabel.font = UIFont.systemFontOfSize(12.0)
        defaultLabel.text = "Devhub"
        defaultLabel.textColor = MaterialColor.grey.lighten2
        defaultLabel.textAlignment = .Left
        addSubview(defaultLabel)
    }
    
    
    /*
     @name   prepareDefaultDescription
     */
    public func prepareDefaultDescription() {
        defaultDescription.font = UIFont.systemFontOfSize(12.0)
        defaultDescription.text = "Lighthouse Labs Demo Day"
        defaultDescription.textColor = UIColor.blackColor()
        defaultDescription.textAlignment = .Left
        addSubview(defaultDescription)
    }
    
    /*
     @name   prepareDefaultParticipants
     */
    public func prepareDefaultParticipants() {
        defaultParticipants.font = UIFont.systemFontOfSize(12.0)
        defaultParticipants.text = "26 developers"
        defaultParticipants.textColor = MaterialColor.grey.lighten2
        defaultParticipants.textAlignment = .Left
        addSubview(defaultParticipants)
    }
    
    /*
     @name   layoutDefaultImageView
     */
    public func layoutDefaultImageView() {
        let x = CGFloat(20.0)
        let y = CGFloat(DefaultOptions.ImageView.Padding.Vertical)
        let w = CGFloat(contentView.bounds.size.height - (DefaultOptions.ImageView.Padding.Vertical * 2))
        let h = w
        defaultImageView.frame = CGRect(x: x, y: y, width: w, height: h)
        
        // FIX ME: Make dynamic
        defaultImageView.layer.cornerRadius = w / 2
    }
    
    public func layoutDefaultLabel() {
        let x = CGRectGetMaxX(defaultImageView.frame) + DefaultOptions.Label.Padding.Horizontal
        let y = (contentView.bounds.size.height / 6) - (15.0)
        let w = CGFloat(200.0)
        let h = CGFloat(30.0)
        defaultLabel.frame = CGRect(x: x, y: y, width: w, height: h)
    }
    
    
    public func layoutDefaultDescription() {
        let x = CGRectGetMaxX(defaultImageView.frame) + DefaultOptions.Label.Padding.Horizontal
        let y = (contentView.bounds.size.height / 2) - (15.0)
        let w = CGFloat(200.0)
        let h = CGFloat(30.0)
        defaultDescription.frame = CGRect(x: x, y: y, width: w, height: h)
    }
    
    public func layoutDefaultParticipants() {
        let x = CGRectGetMaxX(defaultImageView.frame) + DefaultOptions.Label.Padding.Horizontal
        let y = (contentView.bounds.size.height / 6 * 5) - (15.0)
        let w = CGFloat(200.0)
        let h = CGFloat(30.0)
        defaultParticipants.frame = CGRect(x: x, y: y, width: w, height: h)
    }
    
}
