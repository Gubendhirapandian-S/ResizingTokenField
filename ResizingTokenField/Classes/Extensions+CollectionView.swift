//
//  Extensions+CollectionView.swift
//  ResizingTokenField
//
//  Created by Gubendhirapandian on 1/28/21.
//

import Foundation

extension UICollectionView {

	var lastSection: Int { return numberOfSections - 1 }

	var lastIndexPath: IndexPath? {
		guard lastSection >= 0 else { return nil }
		let lastItem = numberOfItems(inSection: lastSection) - 1
		guard lastItem >= 0 else { return nil }
		return IndexPath(item: lastItem, section: lastSection)
	}

	func scrollToBottom(animated: Bool, at scrollPosition: UICollectionView.ScrollPosition = .centeredVertically) {
		guard let lastIndexPath = lastIndexPath else { return }
		scrollToItem(at: lastIndexPath, at: scrollPosition, animated: animated)
	}

	func scrollToTop(animated: Bool, scrollPosition: UICollectionView.ScrollPosition = .centeredVertically) {
		scrollToItem(at: IndexPath(item: 0, section: 0), at: scrollPosition, animated: animated)
	}
}
