# BEMSimpleLineGraph - Überfeature Branch
<p align="center"><img src="http://s29.postimg.org/57dn7ve3r/BEMSimple_Line_Graph_Main.png"/></p>	

<p align="center">
<b>BEMSimpleLineGraph</b> makes it easy to create and customize line graphs for iOS.
</p>

## Überfeature Branch Warning
You are currently viewing the überfeature branch of this GitHub repository. 

The überfeature branch is built using Xcode 6.0 beta, iOS 8 beta, and OS X Yosemite beta. The goal of this branch is to begin implementing new APIs and beta features from iOS 8 and OS X 10.10. Additionally, this branch is used to implement large breaking & major changes.

This branch contains *super-duper* bleeding edge commits / features. Content in this branch may be unstable, bug-ridden, non-working, and undocumented. The sole purpose of this branch is to test and create new features that may or may not be included in the feature branch.

This branch is solely for experimentation and should **never** be used in a production app of any kind. If you are preparing your app(s) for iOS 8 or OS X 10.10, please note that this branch is also built using iOS 8 and OS X 10.10. **For stable production ready code**, please refer to the [master branch](https://github.com/Boris-Em/BEMSimpleLineGraph/tree/master). **For upcoming features and beta / alpha code**, please refer to the [feature branch](https://github.com/Boris-Em/BEMSimpleLineGraph/tree/feature).

## Table of Contents

* [**Project Details**](#project-details)  
    * [Requirements](#requirements)
    * [License](#license)
    * [Sample App](#sample-app)
* [**Features**](#features)
* [**Setup**](#setup)
    * [Installation](#installation)
    * [Setup](#setup)
* [**Documentation**](#documentation)
    * For full documentation, see the [wiki](https://github.com/Boris-Em/BEMSimpleLineGraph/wiki)
    * [Required Delegate / Data Source Methods](#required-delegate--data-source-methods)
    * [Reloading the Data Source](#reloading-the-data-source) 
    * [Bezier Curves](#bezier-curves)
    * [Interactive Graph](#interactive-graph)
    * [Properties](#properties)

## Project Details
Learn more about the BEMSimpleLineGraph project requirements, licensing, and contributions.

### Requirements
- Requires iOS 8.0 beta, seed 2 or later. The sample project is optimized for iOS 8.
- Requires Automatic Reference Counting (ARC).
- Optimized for ARM64 Architecture

Requires Xcode 6.0 beta, seed 2 for use in any iOS or OS X Project. Requires a minimum of iOS 8.0 beta, seed 2 as the deployment target. 

| Current Build Target 	| Earliest Supported Build Target 	| Earliest Compatible Build Target 	|
|:--------------------:	|:-------------------------------:	|:--------------------------------:	|
|       iOS 8.0 seed 2        	|            iOS 8.0 seed 2             	|             iOS 8.0 seed 1              	|
|       OS X 10.10 seed 2        	|            OS X 10.10 seed 2              	|            OS X 10.10 seed 1              	|
|     Xcode 6.0 seed 2      	|          Xcode 6.0 seed 2            	|           Xcode 6.0 seed 1            	|
|      LLVM 5.0        	|             LLVM 5.0            	|             LLVM 5.0             	|

> REQUIREMENTS NOTE  
*Supported* means that the library has been tested with this version. *Compatible* means that the library should work on this OS version (i.e. it doesn't rely on any unavailable SDK features) but is no longer being tested for compatibility and may require tweaking or bug fixes to run correctly.


### License
See the [License](https://github.com/Boris-Em/BEMSimpleLineGraph/blob/master/LICENSE). You are free to make changes and use this in either personal or commercial projects. Attribution is not required, but it is appreciated. A little Thanks! (or something to that affect) would be much appreciated. If you use BEMSimpleLineGraph in your app, let us know.

### Sample App
The iOS Sample App included with this project demonstrates how to correctly setup and use BEMSimpleLineGraph. You can refer to the sample app for an understanding of how to use and setup BEMSimpleLineGraph.

## Features
BEMSimpleLineGraph is a charting library that makes it easy to create beautiful line graphs for iOS. Here are the main guidelines that define the project:  
- Easy to set-up and use  
- Lightweight  
- Highly customizable  
- Interactive  
- Focused on one type of graph (line graphs)  

Still unsure about this line graphing project? Here's a few more specifics:  
 - X-axis and Y-axis labels  
 - Bézier curves or straight lines  
 - Beautiful (entrance) animations  
 - Advanced statistical calculations  
 - Live graph snapshots  
 - Touch (pan gesture) reporting  
 - Popover data point labels  
 - Reference lines  
 - Fully customizable  

## Setup
BEMSimpleLineGraph can be added to any project (big or small) in a matter of minutes (maybe even seconds if you're super speedy). Cocoapods is fully supported, and so are all the latest technologies (eg. ARC, Storyboards, Interface Builder Attributes, Modules, and more).

### Installation
The easiest way to install BEMSimpleLineGraph is to use <a href="http://cocoapods.org/" target="_blank">CocoaPods</a>. To do so, simply add the following line to your `Podfile`:
	<pre><code>pod BEMSimpleLineGraph</code></pre>
	
The other way to install BEMSimpleLineGraph, is to drag and drop the *Classes* folder into your Xcode project. When you do so, check the "*Copy items into destination group's folder*" box.

### Setup
Setting up BEMSimpleLineGraph in your project is simple. If you're familiar with UITableView, then BEMSimpleLineGraph should be a breeze. Follow the steps below to get everything up and running.

 1. Import `"BEMSimpleLineGraphView.h"` to the header of your view controller:

         #import "BEMSimpleLineGraphView.h"

 2. Implement the `BEMSimpleLineGraphDelegate` and `BEMSimpleLineGraphDataSource` in the same view controller:

         @interface YourViewController : UIViewController <BEMSimpleLineGraphDataSource, BEMSimpleLineGraphDelegate>

 3.  BEMSimpleLineGraphView can be initialized in one of two ways. You can either add it directly to your interface (storyboard file) OR through code. Both ways provide the same initialization, just different ways to do the same thing. Use the method that makes sense for your app or project.

     **Interface Initialization**  
     1 - Add a UIView to your UIViewController  
     2 - Change the class type of the UIView to `BEMSimpleLineGraphView`  
     3 - Link the view to your code using an `IBOutlet`. You can set the property to `weak` and `nonatomic`.  
     4 - Select the `BEMSimpleLineGraphView` in your interface. Connect the **dataSource** property and then the **delegate** property to your ViewController.  
     5 - Select the `BEMSimpleLineGraphView` and open the Attributes Inspector. Most of the line graph's customizable properties can easily be set from the Attributes Inspector. The Sample App demonstrates this capability.

     **Code Initialization**  
     Just add the following code to your implementation (usually the `viewDidLoad` method).

         BEMSimpleLineGraphView *myGraph = [[BEMSimpleLineGraphView alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
         myGraph.dataSource = self;
         myGraph.delegate = self;
         [self.view addSubview:myGraph];

 4. Implement the two required data source methods: `numberOfPointsInLineGraph:` and `lineGraph:valueForPointAtIndex:`. See documentation below for more information

## Documentation
All methods, properties, types, and delegate methods available on the BEMSimpleLineGraph class are documented below. Documentation is available directly within Xcode (just Option-Click any method for Quick Help).

### Required Delegate / Data Source Methods

**Number of Points in Graph**  
Returns the number of points in the line graph. The line graph gets the value returned by this method from its data source and caches it.

    - (NSInteger)numberOfPointsInLineGraph:(BEMSimpleLineGraphView *)graph {
    		return X; // Number of points in the graph.
    }

**Value for Point at Index**  
Informs the position of each point on the Y-Axis at a given index. This method is called for every point specifed in the `numberOfPointsInLineGraph:` method. The parameter `index` is the position from left to right of the point on the X-Axis:

	- (CGFloat)lineGraph:(BEMSimpleLineGraphView *)graph valueForPointAtIndex:(NSInteger)index {
    		return …; // The value of the point on the Y-Axis for the index.
	}

### Reloading the Data Source
Similar to a UITableView's `reloadData` method, BEMSimpleLineGraph has a `reloadGraph` method. Call this method to reload all the data that is used to construct the graph, including points, axis, index arrays, colors, alphas, and so on. Calling this method will cause the line graph to call `layoutSubviews` on itself. The line graph will also call all of its data source and delegate methods again (to get the updated data).

    - (void)anyMethodInYourOwnController {
        // Change graph properties
        // Update data source / arrays
        
        // Reload the graph
        [self.myGraph reloadGraph];
    }

### Interactive Graph
BEMSimpleLineGraph can react to the user touching the graph by two different ways: **Popup Reporting** and **Touch Reporting**.

<p align="center"><img src="http://s21.postimg.org/3lkbvgp53/GIF_Touch_Report.gif"/></p>
<p align="center"> On this example, both Popup Reporting and Touch Reporting are activated. </p>

### Bezier Curves
<img align="left" width="237" height="141" src="http://s4.postimg.org/ucf4zsyd9/BEMSimple_Line_Graph_Bezier_Curve.png">

BEMSimpleLineGraph can be drawn with curved lines instead of directly connecting the dots with straight lines.  
To do so, set the property `enableBezierCurve` to YES. 

	self.myGraph.enableBezierCurve = YES;
   
### Properties
BEMSimpleLineGraphs can be customized by using various properties. A multitude of properties let you control the animation, colors, and alpha of the graph. Many of these properties can be set from Interface Build and the Attributes Inspector, others must be set in code.