package com.view
{
	import flash.events.Event;
	
	public class HelloWorldMessageEvent extends Event
	{
		static const MESSAGE_DISPATCHED:String = "messageDispatched";
		private var _message:String;
		
		public function get message():String
		{
			return _message;
		}
		
		public function HelloWorldMessageEvent(type:String, message:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_message = message;
		}
		
		override public function clone():Event
		{
			return new HelloWorldMessageEvent(type, message, bubbles, cancelable);
		}
		
		
	}
}



