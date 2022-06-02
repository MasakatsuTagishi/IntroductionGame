//
//  DescriptionViewController.swift
//  IntroductionGame
//
//  Created by 田岸将勝 on 2022/05/31.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet private weak var scrollView: UIScrollView! {
        didSet {
            scrollView.delegate = self
            scrollView.isPagingEnabled = true
            scrollView.showsHorizontalScrollIndicator = false
        }
    }

    @IBOutlet private weak var pageControl: UIPageControl! {
        didSet {
            pageControl.isUserInteractionEnabled = false
        }
    }

    @IBOutlet private weak var page1View: UIView! {
        didSet {
            page1View.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            page1View.layer.shadowColor = UIColor.gray.cgColor
            page1View.layer.shadowOpacity = 1.0
            page1View.layer.shadowRadius = 8
            page1View.layer.cornerRadius = 5
        }
    }

    @IBOutlet private weak var page2View: UIView! {
        didSet {
            page2View.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            page2View.layer.shadowColor = UIColor.gray.cgColor
            page2View.layer.shadowOpacity = 1.0
            page2View.layer.shadowRadius = 8
            page2View.layer.cornerRadius = 5
        }
    }

    @IBOutlet private weak var page3View: UIView! {
        didSet {
            page3View.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            page3View.layer.shadowColor = UIColor.gray.cgColor
            page3View.layer.shadowOpacity = 1.0
            page3View.layer.shadowRadius = 8
            page3View.layer.cornerRadius = 5
        }
    }

    override func loadView() {
        view = R.nib.descriptionViewController(owner: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func dismissButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}

// MARK: UIScrollViewDelegate
extension DescriptionViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
    }
}
