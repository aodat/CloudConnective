//
//  SegemantBuilder.swift
//  CloudConnective
//
//  Created by Abdalla Odat on 7/23/17.
//  Copyright © 2017 Abdalla Odat. All rights reserved.
//

import UIKit
import Segmentio


class SegmantBuilder {
    
    static func buildSegmentioView(segmentioView: Segmentio) {
        segmentioView.setup(
            content: segmentioContent(),
            style: SegmentioStyle.onlyLabel,
            options: segmentioOptions(segmentioStyle: SegmentioStyle.onlyLabel)
        )
    }
    
    private static func segmentioOptions(segmentioStyle: SegmentioStyle) -> SegmentioOptions {
        return SegmentioOptions(
            backgroundColor: UIColor.white,
            maxVisibleItems: 7,
            scrollEnabled: false,
            indicatorOptions: nil,
            horizontalSeparatorOptions: segmentioHorizontalSeparatorOptions(),
            verticalSeparatorOptions: nil,
            imageContentMode: UIViewContentMode.center,
            labelTextAlignment: .center,
            labelTextNumberOfLines: 1,
            segmentStates: segmentioStates(),
            animationDuration: 0.3
        )
    }
    
    private static func segmentioStates() -> SegmentioStates {
        var font = UIFont(name: "Avenir Heavy", size: 11.0)
        font = UIFont.boldSystemFont(ofSize: 11.0)
        
        return SegmentioStates(
            defaultState: segmentioState(
                backgroundColor: UIColor.white,
                titleFont: font!,
                titleTextColor: UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0)
            ),
            selectedState: segmentioState(
                backgroundColor: UIColor.white,
                titleFont: font!,
                titleTextColor: UIColor(red:0.12, green:0.65, blue:0.99, alpha:1.0)
            ),
            
            highlightedState: segmentioState(
                backgroundColor: UIColor.white,
                titleFont: font!,
                titleTextColor:  UIColor(red:0.12, green:0.65, blue:0.99, alpha:1.0)
            )
        )
    }
    
    private static func segmentioState(backgroundColor: UIColor, titleFont: UIFont, titleTextColor: UIColor) -> SegmentioState {
        return SegmentioState(
            backgroundColor: backgroundColor,
            titleFont: titleFont,
            titleTextColor: titleTextColor
        )
    }
    
    private static func segmentioContent() -> [SegmentioItem] {
        return [
            SegmentioItem(title: "SSH Console", image: UIImage(named: "")),
            SegmentioItem(title: "CLI Express", image: UIImage(named: "")),
            SegmentioItem(title: "Tools",       image: UIImage(named: "")),
            SegmentioItem(title: "Carrier Case",image: UIImage(named: "")),
            SegmentioItem(title: "TAC Case",    image: UIImage(named: "")),
            SegmentioItem(title: "IM Pager",    image: UIImage(named: "")),
            SegmentioItem(title: "Code Upgrade",image: UIImage(named: ""))
        ]
    }
    
    private static func segmentioHorizontalSeparatorOptions() -> SegmentioHorizontalSeparatorOptions {
        return SegmentioHorizontalSeparatorOptions(
            type: .topAndBottom,
            height: 1,
            color: UIColor.white
        )
    }

}
