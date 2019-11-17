//
//  ViewController.swift
//  TestSQLite
//
//  Created by Javier A. Junca Barreto on 26/10/19.
//  Copyright © 2019 SICyA Software SAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fnS3 = fnSICyA()
        fnS3.initDBSQLite(strFileName: "TestDB")
        
        let dataSQLite = fnS3.executeQueryResultDBSQLite(pQuery: "select * from Usuarios")
        
        print("Resultado: ", dataSQLite.count)
    }
}
