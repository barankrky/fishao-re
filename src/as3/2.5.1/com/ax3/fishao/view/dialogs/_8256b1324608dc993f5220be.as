package com.ax3.fishao.view.dialogs
{
   import com.ax3.core.App;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.model.events._b14f292ff6906386c0914bc1;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class _8256b1324608dc993f5220be extends Sprite implements IBaseDialog
   {
      
      private var _dd779c1462e1d67c2a6a77c1:Boolean;
      
      protected var _closeTweenActive:Boolean = false;
      
      public var bg:DisplayObject;
      
      public function _8256b1324608dc993f5220be()
      {
         super();
         this.reset();
         this._dd779c1462e1d67c2a6a77c1 = false;
      }
      
      public function get isClosing() : Boolean
      {
         return false;
      }
      
      public function get canClosedByEsc() : Boolean
      {
         return this._dd779c1462e1d67c2a6a77c1;
      }
      
      public function reset() : void
      {
      }
      
      public function show() : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance().showDialogWithOverlay(this);
      }
      
      public function onShowComplete() : void
      {
         GameSwf.globalDispatcher.dispatchEvent(new _b14f292ff6906386c0914bc1(_b14f292ff6906386c0914bc1.SHOW_POPUP,this));
      }
      
      public function close() : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance().close(this);
      }
      
      public function onCloseComplete() : void
      {
         GameSwf.globalDispatcher.dispatchEvent(new _b14f292ff6906386c0914bc1(_b14f292ff6906386c0914bc1.HIDE_POPUP));
      }
      
      public function set closeTweenActive(param1:Boolean) : void
      {
         this._closeTweenActive = param1;
      }
      
      public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = int(param3 / (-160053800 ^ 0x3DDF130C ^ -1399965349 ^ 0x6724EF8D) - this.width / (0x6C8F9AAA ^ 0x626998FB ^ 0x125355A2 ^ 0x1CB557F1));
         this.y = int(param4 / (-1392214717 ^ 0x75600B80 ^ 0x4BB8EDDC ^ -1814258915) - this.height / (-1138370652 ^ 0x4ED93340 ^ -221189380 ^ 0x2C0E1A));
      }
      
      public function onShowStart() : void
      {
      }
      
      public function onCloseStart() : void
      {
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
      }
      
      public function initialize(param1:App) : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function onLostFrontPosition() : void
      {
      }
      
      public function onSetFrontPosition() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return true;
      }
      
      override public function get width() : Number
      {
         var _loc1_:int = 0x382B2323 ^ -1370542813 ^ -1510921851 ^ 0x43275B3A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1761742818 ^ -1476713814 ^ 0x7ACC4A59 ^ 0x3B78E453))
            {
               case 0:
                  return super.width;
               case 1:
                  if(this.bg != null)
                  {
                     _loc1_ = -204612255 ^ 0x2D75D204 ^ 0x653AB89E ^ -885994681;
                  }
                  else
                  {
                     _loc1_ = -899324137 ^ -413555731 ^ -1257114318 ^ -392213130;
                  }
                  break;
               case 2:
                  return this.bg.width;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function get height() : Number
      {
         var _loc1_:int = -1928430368 ^ -1222384476 ^ -569749350 ^ 0x4E6F5402;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-334490789 ^ -1889327076 ^ -814481587 ^ 0x064858D7))
            {
               case 0:
                  return super.height;
               case 1:
                  if(this.bg != null)
                  {
                     _loc1_ = 0x6A389AAE ^ -688290749 ^ -357821434 ^ -64645580;
                  }
                  else
                  {
                     _loc1_ = 0x2EA62AF7 ^ -267970783 ^ 0x3B81CFDD ^ 0x4F686ED6;
                  }
                  break;
               case 2:
                  return this.bg.height;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

