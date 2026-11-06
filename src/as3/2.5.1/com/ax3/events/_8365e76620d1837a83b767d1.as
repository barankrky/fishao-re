package com.ax3.events
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.events.Event;
   
   public class _8365e76620d1837a83b767d1 extends Event
   {
      
      public static const RESIZE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劼剩劚剋势劜办剳勈加劅刜剝删劎劋剰劋剄刣剮勤刅勻劁力刟勱","刴効刡劉劂办刟到劌刕刐制剉剫勀刳");
      
      public var width:int;
      
      public var height:int;
      
      public function _8365e76620d1837a83b767d1(param1:int, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(RESIZE,param3,param4);
         this.width = param1;
         this.height = param2;
      }
   }
}

