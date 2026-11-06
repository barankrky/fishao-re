package com.ax3.fishao.view
{
   import com.ax3.display.ui.UIUtil;
   import com.ax3.fishao.control.managers.FontManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.FishaoBasePopup;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class FishaoLocalPreloader extends FishaoBasePopup
   {
      
      private static var _showNow:Boolean;
      
      private static var _preloder:FishaoLocalPreloader;
      
      private static var _openedPreloaderCount:int = 0;
      
      private static var _openedPreloaderCountWithKey:int = 0;
      
      private static var _preloaderKeys:Dictionary = new Dictionary();
      
      private var _rotateLine:Sprite = new Sprite();
      
      public function FishaoLocalPreloader(param1:String)
      {
         if(param1 == "")
         {
            param1 = I18n.get("localPreloaderLoadingLabel");
         }
         var _loc2_:TextField = UIUtil.createTextField(param1,0,height,FontManager.FORMAT_LOCAL_PRELODER,FontManager.PARAMS_LOCAL_PRELODER);
         addChild(_loc2_);
         _loc2_.y -= 30;
         super();
      }
      
      public static function isActive() : Boolean
      {
         return _openedPreloaderCount > 0 || _openedPreloaderCountWithKey > 0;
      }
      
      public static function destroyPreloader(param1:String) : void
      {
         if(param1 != null)
         {
            if(_preloaderKeys[param1] != null)
            {
               _preloaderKeys[param1] = Number(_preloaderKeys[param1]) - 1;
               --_openedPreloaderCountWithKey;
               if(_preloaderKeys[param1] == 0)
               {
                  _preloaderKeys[param1] = null;
                  delete _preloaderKeys[param1];
               }
            }
         }
         else if(_openedPreloaderCount > 0)
         {
            --_openedPreloaderCount;
         }
         if(_openedPreloaderCount <= 0 && _openedPreloaderCountWithKey <= 0)
         {
            if(_preloder)
            {
               _preloder.close();
            }
            _preloder = null;
         }
      }
      
      public static function createPreloader(param1:String, param2:String = null) : void
      {
         if(param2 != null)
         {
            if(_preloaderKeys[param2] == null)
            {
               _preloaderKeys[param2] = 0;
            }
            _preloaderKeys[param2] = Number(_preloaderKeys[param2]) + 1;
            ++_openedPreloaderCountWithKey;
         }
         else
         {
            ++_openedPreloaderCount;
         }
         if(!_showNow)
         {
            _preloder = new FishaoLocalPreloader(param1);
            _preloder.show();
         }
      }
      
      override public function show() : void
      {
         _showNow = true;
         this._rotateLine.addEventListener(Event.ENTER_FRAME,this.rotateChange);
         PopupManager.getInstance().showTop(this);
      }
      
      private function rotateChange(param1:Event) : void
      {
         param1.currentTarget.rotationZ += 5;
      }
      
      override public function close() : void
      {
         _showNow = false;
         this._rotateLine.removeEventListener(Event.ENTER_FRAME,this.rotateChange);
         super.close();
      }
   }
}

