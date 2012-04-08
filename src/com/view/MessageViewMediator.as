package com.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class MessageViewMediator extends Mediator
	{
		[Inject] public var view:MessageView;
		
		override public function onRegister():void
		{
			trace("I'm registered");
			addContextListener(HelloWorldMessageEvent.MESSAGE_DISPATCHED, handleMessage)
		}
		
		private function handleMessage(event:HelloWorldMessageEvent):void
		{
				view.text = event.message;
		}
	}
}