//
//  Container.swift
//  PageVcWithOneVc
//
//  Created by mac on 16/02/2022.
//

import UIKit

class Container: UIPageViewController , UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    var arr = [UIViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        dataSource = self
        
        let obj1 = storyboard?.instantiateViewController(withIdentifier: "page1") as! ViewController
        obj1.hed = "Headrer 1"
        obj1.disc = "Discription 1"
        let obj2 = storyboard?.instantiateViewController(withIdentifier: "page1") as! ViewController
        obj2.hed = "Headrer 2"
        obj2.disc = "Discription 2"
        let obj3 = storyboard?.instantiateViewController(withIdentifier: "page1") as! ViewController
        obj3.hed = "Headrer 3"
        obj3.disc = "Discription 3"
        let obj4 = storyboard?.instantiateViewController(withIdentifier: "page1") as! ViewController
        obj4.hed = "Header 4"
        obj4.disc = "Discription 4"
        
        arr.append(obj1)
        arr.append(obj2)
        arr.append(obj3)
        arr.append(obj4)
        
        if let firstVc = arr.first{
            setViewControllers([firstVc], direction: .forward, animated: true, completion: nil)
            
        }


    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let current = arr.firstIndex(of: viewController) else{
            return nil
        }
        let previous = current - 1
        guard previous >= 0 else{
            return nil
        }
        return arr[previous]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let current = arr.firstIndex(of: viewController) else{
            return nil
        }
        let next = current + 1
        guard next < arr.count else{
            return nil
        }
        return arr[next]
    }
    

 

}
