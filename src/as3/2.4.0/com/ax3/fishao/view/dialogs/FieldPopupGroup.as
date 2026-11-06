package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.Config;
   import com.greensock.TweenMax;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class FieldPopupGroup extends Sprite implements IPopupGroup
   {
      
      private var _layerIndex:int;
      
      public function FieldPopupGroup(param1:int)
      {
         super();
         this._layerIndex = param1;
      }
      
      public function show(param1:IBaseDialog) : void
      {
         param1.activate();
         param1.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this.centerDialog(param1);
         addChild(DisplayObject(param1));
         this.showAnimation(param1);
      }
      
      private function centerDialog(param1:IBaseDialog) : void
      {
         param1.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      private function centerBitmap(param1:IScreenCenter) : void
      {
         param1.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      public function close(param1:IBaseDialog) : void
      {
         param1.deactivate();
         this.closeAnimation(param1);
      }
      
      protected function closeAnimation(param1:IBaseDialog) : void
      {
         param1.visible = true;
         TweenMax.to(param1,1,{
            "alpha":0,
            "onComplete":this.onCloseAnimationComplete,
            "onCompleteParams":[param1]
         });
         param1.onCloseStart();
      }
      
      protected function showAnimation(param1:IBaseDialog) : void
      {
         param1.visible = true;
         (param1 as DisplayObject).alpha = 0;
         TweenMax.to(param1,1,{
            "alpha":1.25,
            "onComplete":this.onShowAnimationComplete,
            "onCompleteParams":[param1]
         });
         param1.onShowStart();
      }
      
      protected function onShowAnimationComplete(param1:IBaseDialog) : void
      {
         var dialog:IBaseDialog = param1;
         try
         {
            dialog.onShowComplete();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
         }
      }
      
      protected function onCloseAnimationComplete(param1:IBaseDialog) : void
      {
         var dialog:IBaseDialog = param1;
         if(contains(DisplayObject(dialog)))
         {
            removeChild(DisplayObject(dialog));
         }
         try
         {
            dialog.onCloseComplete();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
         }
      }
      
      public function screenSizeChanged() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is IBaseDialog)
            {
               this.centerDialog(IBaseDialog(_loc1_));
            }
            else if(_loc1_ is IScreenCenter)
            {
               this.centerBitmap(_loc1_ as IScreenCenter);
            }
            _loc3_++;
         }
      }
      
      public function layerIndex() : int
      {
         return this._layerIndex;
      }
      
      public function getFrontDialog() : IBaseDialog
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is IBaseDialog)
            {
               return IBaseDialog(_loc1_);
            }
            _loc3_++;
         }
         return null;
      }
      
      public function closeAllExcept() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is IBaseDialog)
            {
               this.close(IBaseDialog(_loc1_));
            }
            _loc3_++;
         }
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         if(param1 is IScreenCenter)
         {
            IScreenCenter(param1).centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         }
         return super.addChildAt(param1,param2);
      }
   }
}

