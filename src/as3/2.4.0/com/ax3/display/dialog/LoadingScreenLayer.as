package com.ax3.display.dialog
{
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.net.LoadingIndicator;
   import com.ax3.net.RequestIndicator;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.inkora.tween.TweenCube;
   import flash.display.Sprite;
   
   public class LoadingScreenLayer extends Sprite implements IUpdate
   {
      
      private var _loadingScreen:LoadingScreen;
      
      private var _indicatorList:Vector.<LoadingIndicator> = new Vector.<LoadingIndicator>();
      
      private var _currentIndicator:LoadingIndicator;
      
      private var _loadingScreenType:String;
      
      public function LoadingScreenLayer()
      {
         super();
         name = "LoadingScreenLayer";
         this._loadingScreen = new LoadingScreen();
         addChild(this._loadingScreen);
      }
      
      public function set type(param1:String) : void
      {
         this._loadingScreenType = param1;
      }
      
      public function screenSizeChanged() : void
      {
         this._loadingScreen.fitToScreen();
      }
      
      public function set percent(param1:Number) : void
      {
         this._loadingScreen.percent = param1;
      }
      
      public function hide() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,0.25 * alpha,{"alpha":0},{"onComplete":this.onHideComplete});
      }
      
      private function onHideComplete() : void
      {
         visible = false;
         this._loadingScreen.clear();
         this._currentIndicator = null;
      }
      
      public function show() : void
      {
         if(visible == false)
         {
            alpha = 0;
            visible = true;
         }
         this._loadingScreen.textUpdate();
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,0.25 * alpha,{"alpha":1});
      }
      
      public function removeIndicator(param1:LoadingIndicator) : void
      {
         this.update(0,0);
         if(this._currentIndicator == param1)
         {
            this._currentIndicator = null;
         }
         else
         {
            this._indicatorList.splice(this._indicatorList.indexOf(param1),1);
         }
         this.update(0,0);
      }
      
      public function addIndicator(param1:LoadingIndicator) : void
      {
         this._indicatorList.push(param1);
         this.startUpdate();
         this.update(0,0);
      }
      
      private function startUpdate() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).add(this);
      }
      
      private function stopUpdate() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         if(this._currentIndicator == null)
         {
            if(this._indicatorList.length == 0)
            {
               this.stopUpdate();
               this.hide();
            }
            else
            {
               this._currentIndicator = this._indicatorList.shift();
               if(this._currentIndicator != null)
               {
                  this._loadingScreen.viewType = this._currentIndicator.viewType;
                  this._loadingScreen.fitToScreen();
               }
            }
         }
         if(this._currentIndicator != null)
         {
            if(this._currentIndicator.isCompleted())
            {
               this._loadingScreen.percent = 1;
               this._currentIndicator = null;
               this.update(param1,param2);
            }
            else
            {
               TweenCube.destroyTweensOf(this,false);
               if(this.alpha < 1)
               {
                  TweenCube.to(this,0.25 * alpha,{"alpha":1});
               }
               if(visible == false)
               {
                  this.show();
               }
               this._loadingScreen.percent = this._currentIndicator.getPercent();
            }
         }
      }
      
      public function addRequest(param1:Function) : Function
      {
         var _loc2_:RequestIndicator = new RequestIndicator(param1,this.onRequestComplete);
         this.addIndicator(_loc2_);
         return _loc2_.handler;
      }
      
      private function onRequestComplete(param1:RequestIndicator) : void
      {
         this.removeIndicator(param1);
      }
      
      public function removeCurrent() : void
      {
         this.removeIndicator(this._currentIndicator);
      }
      
      public function removeAllIndicators() : void
      {
         var _loc1_:LoadingIndicator = null;
         for each(_loc1_ in this._indicatorList)
         {
            this.removeIndicator(_loc1_);
         }
      }
   }
}

