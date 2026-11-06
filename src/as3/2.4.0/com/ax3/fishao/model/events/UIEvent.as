package com.ax3.fishao.model.events
{
   import flash.events.Event;
   
   public class UIEvent extends Event
   {
      
      public static const RESIZE:String = "resize";
      
      public static const SELECT:String = "select";
      
      public static const SHOW_POPUP:String = "showPopup";
      
      public static const HIDE_POPUP:String = "hidePopup";
      
      private var _data:Object;
      
      public function UIEvent(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._data = param2;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      override public function clone() : Event
      {
         return new UIEvent(type,this.data,bubbles,cancelable);
      }
   }
}

