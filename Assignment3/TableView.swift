//
//  TableView.swift
//  Assignment3
//
//  Created by George Pantazis on 23/04/2016.
//  Copyright © 2016 PAN Software. All rights reserved.
//

import UIKit

class TableView: UIViewController, UITableViewDataSource
{

   
   let myAnimal = Animal()
   
   var AnimalArray = ["Rover", "Mittens", "Ein", "Sadie"]
   
   func numberOfSectionsInTableView(tableView: UITableView) -> Int
   {
      return 1
   }
   
   func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
      return AnimalArray.count
   }
   
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
   {
      
      let cell = UITableViewCell()
      
      cell.textLabel?.text = AnimalArray[indexPath.row]
      
      return cell
   }
   
   override func viewDidLoad()
   {
      
      super.viewDidLoad()
  
      var count = 0
      var animalName: String
      
      for _ in AnimalArray
      {
         animalName = myAnimal.prettyAnimalName(AnimalArray[count])
         AnimalArray[count] = animalName
         count += 1
      }
      
      let mySubAnimal = AnimalSubClass()
      
      animalName = mySubAnimal.prettyAnimalName("Dog")
      
      AnimalArray.insert(animalName, atIndex: count)
    }

}
