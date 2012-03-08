package com.ezeql.primevc.examples.todoapp;



/**
 * ...
 * @author EzeQL
 */

class TodoListMediator extends primevc.mvc.Mediator<TodoFacade,TodoList>
{

	override public function startListening ()
    {
        if (isListening())
            return;
		
        super.startListening();
		
		gui.data = f.model.todoProxy.vo;
		
		//var data = new primevc.core.collections.ArrayList<String>();
		//
		//for (i in 0...10) 
		//{
			//data.add( Std.string(i));
		//}
		//gui.data = data;
	}
	
	
}