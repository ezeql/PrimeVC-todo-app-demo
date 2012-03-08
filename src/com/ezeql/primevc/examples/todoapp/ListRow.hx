package com.ezeql.primevc.examples.todoapp;
import primevc.core.Bindable;
import primevc.gui.components.Button;
import primevc.gui.components.Label;
import primevc.gui.core.UIDataContainer;


/**
 * ...
 * @author EzeQL
 */
private typedef DataType	= Bindable<String>;
class ListRow extends UIDataContainer <DataType> 
{
	private var lblTask:Label;
	private var btnDelete:Button;

	public function new(id:String,task:String)
	{
		super(id, new DataType(task));
		
	}
	
	override function createChildren()
	{
		lblTask = new Label("label" + this.id, new Bindable<String>(data.value) );
		attach(lblTask);
		
		btnDelete = new Button("b" + this.id, "delete");
		attach(btnDelete);
	}
	
	
}