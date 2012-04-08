package com.view
{
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class HelloButtonMediator extends Mediator
	{
		
		[Inject] public var view:HelloButton;
		
		override public function onRegister():void
		{
			trace("i'm button");
			addViewListener(MouseEvent.CLICK, handleMouseClick)
		}
		
		private function handleMouseClick(event:MouseEvent):void
		{
			dispatch(new HelloWorldMessageEvent(HelloWorldMessageEvent.MESSAGE_DISPATCHED, "Hello World"));
		}
	}
}