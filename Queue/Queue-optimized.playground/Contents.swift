//: Playground - noun: a place where people can play

import UIKit

//This is a more efficient queue, becuse we reserve extra space at the front of the 
//array (and at the back)
//e.g. [xxx,xxx, "Jurgen", "R2D2", xxx, xxx]
//Then we trim empty spots in array like this ["Jurgen", "R2D2", xxx, xxx]
//Dequeing becomes O(1) (on average)