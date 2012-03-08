package com.ezeql.primevc.examples.todoapp;
import flash.text.TextFieldAutoSize;
import primevc.core.Bindable;
import primevc.gui.components.Button;
import primevc.gui.components.Label;
import primevc.gui.core.IUIDataElement;
import primevc.gui.core.UITextField;
import primevc.gui.core.UIWindow;
import primevc.gui.display.TextField;
import primevc.gui.components.InputField;


import primevc.gui.components.ListView;
import primevc.core.collections.ArrayList;
import primevc.gui.components.ListPanel;
import primevc.gui.components.ListHolder;
import primevc.gui.components.DataButton;
/**
 * ...
 * @author EzeQL
 */

class TodoGUI extends UIWindow
{
	public var title:UITextField;
	
	public var listView:TodoList;
	
	public var input:InputField<String>;
	
	public var btnAccept:Button;

	public var openTasks:Label;

	override private function createChildren():Void 
	{
		
		
		super.createChildren();
		title = new UITextField("title");
		attach(title);
		title.data.value = "TodoApp";
		
		input =  new InputField("input");
		input.updateVO = function() {  if ( input.vo.value != input.data.value) input.vo.value = input.data.value; };
		attach(input);
		
		btnAccept = new Button("btnAccept","Add Task");
		attach(btnAccept);

		listView = new TodoList("listview");
		attach(listView);
		
		openTasks = new Label("opentasks", new Bindable<String>("Open Tasks:" ));
		//openTasks.data.set("Open Tasks:");
		attach(openTasks);
		
	}

	
}