//
//  ViewController.swift
//  22_04_24_DispatchQueueDemo
//
//  Created by Vishal Jagtap on 20/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        serialDispatchQueue()
    }
    
    func serialDispatchQueue(){
       let serialDispatchQueue1 = DispatchQueue(label: "Serial Queue")
        serialDispatchQueue1.sync {
            print("iOS Batch Conduction by Aishwarya Madam\(Thread.current) -- \(Thread.isMainThread) --\(Thread.Type.self)")
        }
        
        serialDispatchQueue1.async {
            print("Sushil is conducting enquiry \(Thread.current.description) -- \(Thread.isMainThread) -- \(Thread.current.threadPriority)")
        }
        
        serialDispatchQueue1.async {
            for i in 1...1000{
                print("\(i) -- \(Thread.current.description) -- \(Thread.isMainThread)")
            }
            print("Java Batch conduction by Snehal Madam \(Thread.current.description) -- \(Thread.isMainThread)")
        }
        
        serialDispatchQueue1.sync {
            for i in 1...100{
                print("Pallavi Madam is attending enquiry -- \(Thread.current.description) -- \(Thread.isMainThread)")
            }
            
            print("Pallavi Madam is taking printouts -- \(Thread.current.description) -- \(Thread.isMainThread)")
        }
        
        for i in 1...10000{
            print("Web Batch conducted by Akanksha Madam \(Thread.current.description) -- \(Thread.isMainThread)")
        }
    }
    
    @IBAction func btnClick(_ sender: Any) {
        print("Click")
    }
}
