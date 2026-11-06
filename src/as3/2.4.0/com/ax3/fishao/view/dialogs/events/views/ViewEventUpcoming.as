package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.utils.DateUtils;
   import flash.text.TextField;
   
   public class ViewEventUpcoming extends ViewEventBase
   {
      
      private var _labelType:TextField;
      
      private var _labelStartTime:TextField;
      
      private var _labelDuration:TextField;
      
      public function ViewEventUpcoming(param1:IController)
      {
         _source = new gViewEventUpcoming();
         super(param1,_source);
         this.init();
      }
      
      public function set eventName(param1:String) : void
      {
         this._labelType.text = UtilsString.limitCharCount(param1,30,"...");
      }
      
      public function set eventStartTime(param1:int) : void
      {
         var _loc2_:String = DateUtils.convertTimestampToDateString(param1);
         var _loc3_:String = DateUtils.convertTimestampToTimeString(param1);
         var _loc4_:String = I18n.formatToAmPmIfNeed(_loc3_);
         this._labelStartTime.text = _loc2_ + " " + _loc4_;
      }
      
      public function set eventDuration(param1:int) : void
      {
         this._labelDuration.text = I18n.formatTimeWithHoursAndMinutes(param1);
      }
      
      private function init() : void
      {
         this._labelType = Debug.assertProperty(_source,"labelType");
         this._labelStartTime = Debug.assertProperty(_source,"labelStartTime");
         this._labelDuration = Debug.assertProperty(_source,"labelDuration");
         _fishImageBaseUrl = "fishes/fish_inventory76x76_";
         _fishBitmap.width = 45;
         _fishBitmap.height = 35;
         _fishBitmap.x = 3;
         _fishBitmap.y = 0;
      }
   }
}

