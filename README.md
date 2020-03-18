# gitFitnessTracker
For interns

Points to remember during development,

1) never use static numbers for height or width of any widget
	always use 
	MediaQuery.of(context).size.height or
	MediaQuery.of(context).size.width
	
2) make separate folders and file to make sure you code is clean

3) add a comment before every widget, writing description of that widget

4) Best way to implement a screen with multiple widget is use a Stack
	read this and implement according to it
	
	
					Scaffold
					child: Container 
					height: MediaQuery.of(context).size.height
					width : MediaQuery.of(context).size.width
					child: Stack
							fit: expanded
							children:
							[
								Alig(
								aligment: Alignment(0,-0.9)
								child: WidgetName1
								),
								Alig(
								aligment: Alignment(0,-0.9)
								child: WidgetName2
								),
								.
								.
								.
								.
								.
								
								
							]
							
							
	This approach will allow you to place your widget at any point on the screen
	and it keeps the app responsive
	
5) remember we'll be using scoped model

6) GitHub
	- everyone first fork the repo 
	- clone the repo into your own system locally (clone the repo under your account)
	  (clone the repo you forked, not the original repo)
	- code into your local machine and push the code regularly
	
7) At the end of every page build click a snapshot of it and add it to the project and push the code

8) As soon as the page is build please verify it's design 

9) maintain your exel accordingly and daily

10) ask for help if stuck
