//
//  ViewController.swift
//  IsaacLamb
//
//  Created by Lamb, Isaac on 11/14/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class AbstractionPageController: UIPageViewController, UIPageViewControllerDataSource {
    
    lazy var viewControllerList: [UIViewController] = {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: "Binary")
        let vc2 = sb.instantiateViewController(withIdentifier: "Byte")
        let vc3 = sb.instantiateViewController(withIdentifier: "Gate")
        let vc4 = sb.instantiateViewController(withIdentifier: "Java")
        let vc5 = sb.instantiateViewController(withIdentifier: "Block")
        
        return [vc1, vc2, vc3, vc4, vc5]
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

