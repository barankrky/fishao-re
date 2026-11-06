package com.ax3.jss.model.states
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import flash.events.Event;
   
   public class _cda23e966765f14bf08807f7 extends Event
   {
      
      public static const UPDATE_STATE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挞揕挆挊掄捊捝掜掏掾排掴掬挶揦掰挸捛掓掋挽捺挘揜採捙捹挜捔挀","挡捵揹掓捨挻掊揮挏挗挤掬捎掗掝捏");
      
      public var newState:_6ad0e2821c6ebbf3ebab748d;
      
      public var oldState:_6ad0e2821c6ebbf3ebab748d;
      
      public function _cda23e966765f14bf08807f7(param1:_6ad0e2821c6ebbf3ebab748d, param2:_6ad0e2821c6ebbf3ebab748d, param3:Boolean = false, param4:Boolean = false)
      {
         super(UPDATE_STATE,param3,param4);
         this.newState = param1;
         this.oldState = param2;
      }
      
      override public function clone() : Event
      {
         return new _cda23e966765f14bf08807f7(this.newState,this.oldState,bubbles,cancelable);
      }
   }
}

