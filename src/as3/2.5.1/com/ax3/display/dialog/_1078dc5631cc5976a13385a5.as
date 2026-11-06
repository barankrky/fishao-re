package com.ax3.display.dialog
{
   import com.ax3.core.App;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class _1078dc5631cc5976a13385a5 extends Sprite implements IBaseDialog
   {
      
      protected var _app:App;
      
      public var bg:DisplayObject;
      
      protected var _isShowed:Boolean = false;
      
      private var _f76e76499652e095aa0362d0:Boolean;
      
      protected var _canClosedByEsc:Boolean;
      
      public function _1078dc5631cc5976a13385a5()
      {
         super();
         this._canClosedByEsc = true;
      }
      
      public function get isClosing() : Boolean
      {
         return this._f76e76499652e095aa0362d0;
      }
      
      override public function get width() : Number
      {
         return super.width;
      }
      
      public function get isShowed() : Boolean
      {
         return this._isShowed;
      }
      
      public function get canClosedByEsc() : Boolean
      {
         return this._canClosedByEsc;
      }
      
      public function show() : void
      {
         this._82a696edfd066ed03d182af1();
         this._ec9e8fded1f21e9a06d314c7();
         this._isShowed = true;
         this._f76e76499652e095aa0362d0 = false;
      }
      
      public function _82a696edfd066ed03d182af1() : void
      {
      }
      
      public function _ec9e8fded1f21e9a06d314c7() : void
      {
         this._app.dialogManager.showDialog(this);
      }
      
      public function close() : void
      {
         var _loc1_:int = 0x5C249922 ^ -738873152 ^ 0x41484F0F ^ 0x4CBE8B72;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1692746946 ^ -2008989287 ^ 0x14D191CD ^ -2052225291))
            {
               case 0:
                  this._app.dialogManager.closeDialog(this);
                  if(stage != null)
                  {
                     _loc1_ = 0x639B5BE4 ^ -1366967358 ^ 0x302264A6 ^ 0x7F1B691E;
                  }
                  else
                  {
                     _loc1_ = -1511687894 ^ -73469385 ^ -1934819247 ^ 0x50F166D1;
                  }
                  break;
               case 1:
                  stage.focus = null;
                  _loc1_ = -347488866 ^ 0x06C4E127 ^ -1020654108 ^ -1400849216;
                  break;
               case 2:
                  this._isShowed = false;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function initialize(param1:App) : void
      {
         this._app = param1;
      }
      
      public function onShowStart() : void
      {
      }
      
      public function onShowComplete() : void
      {
      }
      
      public function onCloseStart() : void
      {
         this._f76e76499652e095aa0362d0 = true;
      }
      
      public function onCloseComplete() : void
      {
         this._f76e76499652e095aa0362d0 = false;
      }
      
      public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = int(param3 / (0x260BFFFB ^ -1579778932 ^ 0x6AA32DAA ^ -310464801) - this.width / (0x89B67C ^ 0x6849CA9E ^ 0x570256BC ^ 0x3FC22A5C));
         this.y = int(param4 / (0x62DA00FB ^ -1790092867 ^ 0x262BFF0C ^ -776165816) - this.height / (-326574543 ^ 0x3816BA97 ^ -240514941 ^ 0x25346C27));
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function reset() : void
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
   }
}

