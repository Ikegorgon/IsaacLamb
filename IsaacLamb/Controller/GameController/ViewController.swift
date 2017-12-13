//
//  ViewController.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/14/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class ViewController: UIPageViewController, UIPageViewControllerDataSource {

    lazy var viewControllerList: [UIViewController] = {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: "FirstVC")
        let vc2 = sb.instantiateViewController(withIdentifier: "SecondVC")
        let vc3 = sb.instantiateViewController(withIdentifier: "ThirdVC")
        let vc4 = sb.instantiateViewController(withIdentifier: "FourthVC")
        let vc5 = sb.instantiateViewController(withIdentifier: "FifthVC")
        let vc6 = sb.instantiateViewController(withIdentifier: "SixthVC")
        let vc7 = sb.instantiateViewController(withIdentifier: "SeventhVC")
        let vc8 = sb.instantiateViewController(withIdentifier: "EighthVC")
        
        return [vc1, vc2, vc3, vc4, vc5, vc6, vc7, vc8]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        if let firstViewController = viewControllerList.first {
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        let previousIndex = vcIndex - 1
        guard previousIndex >= 0 else {return nil}
        guard viewControllerList.count > previousIndex else {return nil}
        
        return viewControllerList[previousIndex]
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        let nextIndex = vcIndex + 1
        guard viewControllerList.count != nextIndex else {return nil}
        guard viewControllerList.count > nextIndex else {return nil}
        
        return viewControllerList[nextIndex]
    }
}
