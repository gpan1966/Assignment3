//
//  AnimalSubClass.swift
//  Assignment3
//
//  Created by George Pantazis on 23/04/2016.
//  Copyright © 2016 PAN Software. All rights reserved.
//

class AnimalSubClass: Animal
{
   
   override func prettyAnimalName(name: String) -> String
   {
      return("New Class: \(name)")
   }
   
}