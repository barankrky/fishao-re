package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.*;
   import com.ax3.fishao.model.interfaces.IOverlayable;
   import com.greensock.TweenMax;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class BasePopupGroup extends Sprite implements IPopupGroup
   {
      
      private static const SHOW_ANIMATION_TIME_SEC:Number = 0.25;
      
      private static const CLOSE_ANIMATION_TIME_SEC:Number = 0.25;
      
      private var _layerIndex:int;
      
      private var _closeAnimationCompleteHandler:Function;
      
      public function BasePopupGroup(param1:int)
      {
         super();
         this._layerIndex = param1;
         this.redrawOverlay();
      }
      
      private function redrawOverlay() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < numChildren)
         {
            _loc1_ = getChildAt(_loc2_);
            if(!(_loc1_ is IBaseDialog))
            {
               this.drawOverlay(_loc1_ as Sprite);
            }
            _loc2_++;
         }
      }
      
      private function drawOverlay(param1:Sprite) : void
      {
         var overlay:Sprite = param1;
         with(overlay.graphics)
         {
            clear();
            beginFill(2360067,0.5);
            drawRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
            endFill();
         }
      }
      
      public function show(param1:IBaseDialog) : void
      {
         if(param1.isReady())
         {
            this.centerDialog(param1);
            param1.activate();
            DisplayObject(param1).visible = true;
            this.showAnimation(param1);
         }
         else
         {
            DisplayObject(param1).visible = false;
         }
         if(numChildren == 0)
         {
            if(param1 is IOverlayable)
            {
               addChild((param1 as IOverlayable).getOverlay(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT));
            }
            else
            {
               this.showOverlay();
            }
         }
         addChild(DisplayObject(param1));
      }
      
      public function showWithOverlay(param1:IBaseDialog) : void
      {
         if(param1 is IOverlayable)
         {
            addChild((param1 as IOverlayable).getOverlay(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT));
         }
         else
         {
            this.showOverlay();
         }
         this.show(param1);
      }
      
      private function centerDialog(param1:IBaseDialog) : void
      {
         param1.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      public function close(param1:IBaseDialog) : void
      {
         this.closeAnimation(param1);
         this.inspectOverlayVisibility();
      }
      
      protected function closeAnimation(param1:IBaseDialog) : void
      {
         param1.visible = true;
         TweenMax.to(param1,CLOSE_ANIMATION_TIME_SEC,{
            "alpha":0,
            "delay":0.25,
            "onComplete":this.onCloseAnimationComplete,
            "onCompleteParams":[param1]
         });
         param1.onCloseStart();
      }
      
      private function showOverlay() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.name = "overlay";
         this.drawOverlay(_loc1_);
         addChild(_loc1_);
      }
      
      public function update() : void
      {
         this.inspectOverlayVisibility();
      }
      
      private function inspectOverlayVisibility() : void
      {
         var _loc1_:DisplayObject = null;
         while(numChildren > 0 && !(getChildAt(numChildren - 1) is IBaseDialog))
         {
            _loc1_ = getChildAt(numChildren - 1);
            removeChild(_loc1_);
         }
      }
      
      protected function showAnimation(param1:IBaseDialog) : void
      {
         param1.visible = true;
         (param1 as DisplayObject).alpha = 0;
         TweenMax.to(param1,SHOW_ANIMATION_TIME_SEC,{
            "alpha":1,
            "delay":0.25,
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
            if(this._closeAnimationCompleteHandler != null)
            {
               this._closeAnimationCompleteHandler(this,dialog);
            }
         }
         try
         {
            dialog.deactivate();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
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
         this.inspectOverlayVisibility();
      }
      
      public function isAnyDialogVisible() : Boolean
      {
         return numChildren > 1;
      }
      
      public function screenSizeChanged() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is IOverlayable && _loc1_ is IBaseDialog)
            {
               (_loc1_ as IOverlayable).redrawOverlay(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
               this.centerDialog(IBaseDialog(_loc1_));
            }
            else if(_loc1_ is IBaseDialog)
            {
               this.centerDialog(IBaseDialog(_loc1_));
               this.redrawOverlay();
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
         var _loc1_:IBaseDialog = null;
         var _loc2_:int = numChildren;
         var _loc3_:* = int(_loc2_ - 1);
         while(_loc3_ >= 0)
         {
            _loc1_ = getChildAt(_loc3_) as IBaseDialog;
            if(_loc1_ != null && !_loc1_.isClosing)
            {
               return _loc1_;
            }
            _loc3_--;
         }
         return null;
      }
      
      public function set closeAnimationCompleteHandler(param1:Function) : void
      {
         this._closeAnimationCompleteHandler = param1;
      }
      
      public function closeAllExcept(param1:Array = null) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 == null)
         {
            param1 = [];
         }
         var _loc3_:* = int(numChildren - 1);
         while(_loc3_ >= 0)
         {
            if(_loc3_ < numChildren)
            {
               _loc2_ = getChildAt(_loc3_);
               if(_loc2_ is IBaseDialog && !this.isExcluded(_loc2_,param1))
               {
                  this.close(IBaseDialog(_loc2_));
               }
            }
            _loc3_--;
         }
      }
      
      private function isExcluded(param1:DisplayObject, param2:Array) : Boolean
      {
         var _loc3_:Class = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_ != null && param1 is _loc3_)
            {
               return true;
            }
         }
         return false;
      }
   }
}

