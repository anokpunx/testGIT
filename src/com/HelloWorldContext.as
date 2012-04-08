package com
{
	import com.view.HelloButton;
	import com.view.HelloButtonMediator;
	import com.view.MessageView;
	import com.view.MessageViewMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	public class HelloWorldContext extends Context
	{
		override public function startup():void
		{
			// bootstrap
			mediatorMap.mapView(MessageView, MessageViewMediator);
			mediatorMap.mapView(HelloButton, HelloButtonMediator);
		}
	}
}