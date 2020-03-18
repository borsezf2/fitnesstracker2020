Fitness Tracker

We will be using scopedModel as the state management tool

There are two main files in which we will write our functions,
you will never write any functions in the UI files.

all the functions like login, register, api-post/get, will be written in 
the file dedicated to them,

the files for writing the functions are (in folder scopedModel)
1) apiCalls.dart
2) methods.dart

Don't write anything in mainModel.dart

how to call the methods and functions from the UI events(ontap/onpressed):

whenever you want to access the methods you have to just wrap that widget in
scopedModel.

for example:

Widget ExampleWidget(){
	return Container(
	child:RaisedButton(
	onPressed:(){
	// call the function from one of any files in which we wrote them
	}
	)
	);

}

just wrap that 'return' with scopedModel Widget 

return ScopedModelDescendant<mainModel>(
        builder: (context, child, mainModel) {
		
		//your Widget's code
		
		}
		);

this ExampleWidget will be just change to:

Widget ExampleWidget(){

return ScopedModelDescendant<mainModel>(
        builder: (context, child, mainModel) {

	return Container(
	child:RaisedButton(
	onPressed:(){
	// call the function from one of any files in which we wrote them
	}
	)
	);

	
	}
	);
	
}


how to call the functions now:

use mainModel as an Object

Widget ExampleWidget(){

return ScopedModelDescendant<mainModel>(
        builder: (context, child, mainModel) {

	return Container(
	child:RaisedButton(
	onPressed:(){
		mainModel.Function();
	}
	)
	);

	
	}
	);
	
}


Don't forget to import these files .
