package com.ax3.fishao.view.dialogs
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.display.dialog.LoadingScreenLayer;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._8365e76620d1837a83b767d1;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.core.ICharacterEditor;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.utils._cbd58f52130bcef0d9dc895a;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public class _0737efdbd5337ba3fbc64b2e
   {
      
      public static var TOP_LAYER:_ae06c5b8aa4aa442376267b6 = new _ae06c5b8aa4aa442376267b6(0x029ABA40 ^ -1806282818 ^ 0x4A699EA5 ^ -593138854);
      
      public static var LOADING_SCREEN:LoadingScreenLayer = new LoadingScreenLayer();
      
      public static var DIALOG_LAYER:_a2fb69cf36d4ed2026283ecb = new _a2fb69cf36d4ed2026283ecb(0x1BCB2E9C ^ -2089134457 ^ 0x06FD320E ^ -1639167466);
      
      public static var GAME_FIELD_LAYER:_362c42688cdfa09f126bf962 = new _362c42688cdfa09f126bf962(0x6913163A ^ -862943376 ^ 0x79E7D26E ^ -597408992);
      
      public static var TUTORIAL_LAYER:Sprite = new Sprite();
      
      private static var _37f5a334047ee3e7b8166916:_0737efdbd5337ba3fbc64b2e = null;
      
      private static var _68b09b0b800b301b6392d293:int = -1614708309 ^ -656019249 ^ -725990133 ^ -1818348433;
      
      private var _17c28f2d1b7fb3702e9c800d:Dictionary = new Dictionary(true);
      
      private var _80ab1b3c38f38c9a0519374a:IBaseDialog;
      
      public function _0737efdbd5337ba3fbc64b2e()
      {
         super();
         if(_37f5a334047ee3e7b8166916 != null)
         {
            throw new Error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴励劶勊分劻勊剷刭剆刱勺删到劾勆刽劲劶剉劽勢勅勉劓刳划剸创剏剋功刮勱劻労动刞削剐刽勧剹剋剷刼剾剅刖刈刯勄劧劻勬務","剡勏剴刢劯劜刡刮勐剅剛劼剷劬刼刍"));
         }
         LOADING_SCREEN.hide();
         TOP_LAYER.closeAnimationCompleteHandler = this._89e5548b010166afd8f10811;
         DIALOG_LAYER.closeAnimationCompleteHandler = this._89e5548b010166afd8f10811;
      }
      
      public static function getInstance() : _0737efdbd5337ba3fbc64b2e
      {
         var _loc1_:int = 0x17D8DCB3 ^ 0x18493088 ^ 0x0D159F27 ^ 0x658E7187;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5F6CF32C ^ -555205059 ^ -1053258010 ^ 0x27B6416E))
            {
               case 0:
                  _37f5a334047ee3e7b8166916 = new _0737efdbd5337ba3fbc64b2e();
                  _loc1_ = 0x6984A30A ^ -831265962 ^ 0x6B05C6A8 ^ -1409776532;
                  break;
               case 1:
                  return _37f5a334047ee3e7b8166916;
               case 2:
                  if(_37f5a334047ee3e7b8166916 == null)
                  {
                     _loc1_ = 0x25FFBB97 ^ -1248027602 ^ 0x3683FAD8 ^ -1041571848;
                  }
                  else
                  {
                     _loc1_ = -197737727 ^ -1224790344 ^ -1180015876 ^ -1670804003;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _f3a491b87225c3f8e348e5e1() : Boolean
      {
         return _68b09b0b800b301b6392d293 > (-665212809 ^ 0x59520535 ^ 0x66D7DCD9 ^ -404983397);
      }
      
      public static function _fae1314a2d88b6dd28080c37() : Boolean
      {
         return DIALOG_LAYER.numChildren > (0x3A85BEDA ^ -1495468423 ^ 0x67987331 ^ -71222382);
      }
      
      public static function _e9ab9a9f2c27c71065caf805(param1:Array = null) : void
      {
         TOP_LAYER._e1d2c58a3c57547feb11522f(param1);
         DIALOG_LAYER._e1d2c58a3c57547feb11522f();
         GAME_FIELD_LAYER._e1d2c58a3c57547feb11522f();
         var _loc2_:Sprite = TUTORIAL_LAYER;
         while(_loc2_.numChildren > (0x13724858 ^ 0x52D2C3E4 ^ -1975395961 ^ -874425797))
         {
            _loc2_.removeChildAt(-1397834901 ^ -528320322 ^ -572389805 ^ -1848719994);
         }
      }
      
      public function get isDialogBaseOpen() : Boolean
      {
         return this._80ab1b3c38f38c9a0519374a != null && this._80ab1b3c38f38c9a0519374a is _009582d19d1c5695c49f2ed8;
      }
      
      private function _89e5548b010166afd8f10811(param1:IPopupGroup, param2:IBaseDialog) : void
      {
         this._b8581b27809f15eca6bd9f3a();
      }
      
      private function _9c5401e532cd24c9447e4498(param1:KeyboardEvent) : void
      {
         if(param1.keyCode != Keyboard.ESCAPE)
         {
            return;
         }
         if(this._80ab1b3c38f38c9a0519374a == null || !this._80ab1b3c38f38c9a0519374a.canClosedByEsc)
         {
            return;
         }
         this._80ab1b3c38f38c9a0519374a.close();
      }
      
      private function _1b9bfa84a450f8cccca78c81(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ESCAPE && this._80ab1b3c38f38c9a0519374a != null && this._80ab1b3c38f38c9a0519374a.canClosedByEsc)
         {
            param1.preventDefault();
         }
      }
      
      public function init(param1:IEventDispatcher) : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S)._475178699397df7592a9026e(this._c81bc84e4afb352f7592b3fc);
         param1.addEventListener(_8365e76620d1837a83b767d1.RESIZE,this._8879c69e8a806960f5ddc72c);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.stage,KeyboardEvent.KEY_UP,this._9c5401e532cd24c9447e4498);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.stage,KeyboardEvent.KEY_DOWN,this._1b9bfa84a450f8cccca78c81);
      }
      
      private function _c81bc84e4afb352f7592b3fc(param1:uint, param2:uint) : void
      {
         this.onUpdate();
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         TOP_LAYER.update();
         DIALOG_LAYER.update();
         if(DIALOG_LAYER.stage !== null && DIALOG_LAYER.stage.focus != null && DIALOG_LAYER.stage.focus.stage == null)
         {
            DIALOG_LAYER.stage.focus = null;
         }
      }
      
      public function _92cc9ac314d6cc94288124bf(param1:IBaseDialog) : void
      {
         this.showAt(TOP_LAYER,param1);
      }
      
      public function showDialog(param1:IBaseDialog) : void
      {
         this.showAt(DIALOG_LAYER,param1);
      }
      
      public function showAt(param1:IPopupGroup, param2:IBaseDialog) : void
      {
         _cbd58f52130bcef0d9dc895a.clear();
         var _loc3_:Boolean = param2 in this._17c28f2d1b7fb3702e9c800d;
         this._17c28f2d1b7fb3702e9c800d[param2] = param1;
         this._80ab1b3c38f38c9a0519374a = param2 as IBaseDialog;
         if(param1 != GAME_FIELD_LAYER && param1 != LOADING_SCREEN && !_loc3_)
         {
            ++_68b09b0b800b301b6392d293;
            this._f7c8510a3426996c17f5cd77();
         }
         param1.show(param2);
         this._b8581b27809f15eca6bd9f3a();
         this._f7c8510a3426996c17f5cd77();
      }
      
      private function _b8581b27809f15eca6bd9f3a() : void
      {
         var _loc1_:IBaseDialog = null;
         if(_loc1_ == null)
         {
            _loc1_ = DIALOG_LAYER._bbe5c1fabbede1c6f2b4112d();
         }
         if(_loc1_ == null)
         {
            _loc1_ = GAME_FIELD_LAYER._bbe5c1fabbede1c6f2b4112d();
         }
         if(this._80ab1b3c38f38c9a0519374a != null)
         {
            this._80ab1b3c38f38c9a0519374a.onLostFrontPosition();
         }
         this._80ab1b3c38f38c9a0519374a = _loc1_;
         if(this._80ab1b3c38f38c9a0519374a != null)
         {
            this._80ab1b3c38f38c9a0519374a.onSetFrontPosition();
         }
      }
      
      private function _c8040fa80ce3dc21c96c1ec0(param1:IBaseDialog) : Class
      {
         var _loc2_:String = getQualifiedClassName(param1);
         return getDefinitionByName(_loc2_) as Class;
      }
      
      public function showDialogWithOverlay(param1:IBaseDialog) : void
      {
         this._17c28f2d1b7fb3702e9c800d[param1] = DIALOG_LAYER;
         ++_68b09b0b800b301b6392d293;
         this._f7c8510a3426996c17f5cd77();
         DIALOG_LAYER._376517c2c0ba93ea171dcf72(param1);
         this._b8581b27809f15eca6bd9f3a();
      }
      
      public function close(param1:IBaseDialog) : void
      {
         var _loc2_:_6ad6ddd07f4234a527c25452 = this._17c28f2d1b7fb3702e9c800d[param1];
         if(_loc2_)
         {
            _loc2_.close(param1);
            if(this._17c28f2d1b7fb3702e9c800d[param1] != GAME_FIELD_LAYER && this._17c28f2d1b7fb3702e9c800d[param1] != LOADING_SCREEN)
            {
               --_68b09b0b800b301b6392d293;
               this._f7c8510a3426996c17f5cd77();
            }
            this._17c28f2d1b7fb3702e9c800d[param1] = null;
            delete this._17c28f2d1b7fb3702e9c800d[param1];
         }
         this._80ab1b3c38f38c9a0519374a = null;
         this._b8581b27809f15eca6bd9f3a();
      }
      
      private function _8879c69e8a806960f5ddc72c(param1:_8365e76620d1837a83b767d1) : void
      {
         TOP_LAYER._3d35206e41147b98a9825d65();
         DIALOG_LAYER._3d35206e41147b98a9825d65();
         GAME_FIELD_LAYER._3d35206e41147b98a9825d65();
         LOADING_SCREEN._3d35206e41147b98a9825d65();
      }
      
      public function _f3a491b87225c3f8e348e5e1() : Boolean
      {
         return TOP_LAYER._f3a491b87225c3f8e348e5e1() || DIALOG_LAYER._f3a491b87225c3f8e348e5e1();
      }
      
      public function removeAll() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in this._17c28f2d1b7fb3702e9c800d)
         {
            if(_loc1_ is IBaseDialog)
            {
               this.close(IBaseDialog(_loc1_));
            }
            this._17c28f2d1b7fb3702e9c800d[_loc1_] = null;
            delete this._17c28f2d1b7fb3702e9c800d[_loc1_];
         }
         _68b09b0b800b301b6392d293 = 0x5C72D3C0 ^ -1403080477 ^ -651227248 ^ 0x29036CB3;
         this._f7c8510a3426996c17f5cd77();
         this._80ab1b3c38f38c9a0519374a = null;
      }
      
      private function _f7c8510a3426996c17f5cd77() : void
      {
         if(_68b09b0b800b301b6392d293 >= (-460621196 ^ -594741469 ^ 0x77EB9117 ^ 0x4FEC1C41) && !(this._80ab1b3c38f38c9a0519374a is _f763d840b3095d96522c1772))
         {
            _3a8a2602dcf9bf49b62e62af._2aab252d084c88689c72b466();
         }
         if(_68b09b0b800b301b6392d293 == (0x478A96CB ^ 0x497C1011 ^ 0x2D2EC5B3 ^ 0x23D84369) && !(this._80ab1b3c38f38c9a0519374a is _f763d840b3095d96522c1772) || (this._80ab1b3c38f38c9a0519374a is ICharacterEditor || this._80ab1b3c38f38c9a0519374a is _69c5612b427f31309f3cce9a) && _68b09b0b800b301b6392d293 == (-1425523375 ^ -1608971957 ^ 0x2AF93F6B ^ 0x21E80B70))
         {
            _3a8a2602dcf9bf49b62e62af._bd5cfa333dda272a4a5c30f1();
         }
      }
      
      public function _f42ac7342cf11c48018af906() : IBaseDialog
      {
         return this._80ab1b3c38f38c9a0519374a;
      }
      
      public function _f687dfac11484f757ff7d8b1(param1:String) : _009582d19d1c5695c49f2ed8
      {
         var _loc2_:Object = null;
         var _loc3_:_009582d19d1c5695c49f2ed8 = null;
         var _loc4_:_009582d19d1c5695c49f2ed8 = null;
         for(_loc2_ in this._17c28f2d1b7fb3702e9c800d)
         {
            _loc3_ = _loc2_ as _009582d19d1c5695c49f2ed8;
            if(!(_loc3_ == null || _loc3_.type != param1))
            {
               _loc4_ = _loc3_;
            }
         }
         return _loc4_;
      }
      
      public function _759494bf030146161aee1d68(param1:String) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = app.dialogFactory._5afc77ddaa6019528749a6fb();
         _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(param1));
         _loc2_.buttons = _6691abcab801c2433d32324a.OK_BUTTON;
         _loc2_.closeOnOk = true;
         _loc2_.show();
      }
      
      public function _83fe3f7775d32c7cda3d7865(param1:String, param2:String = null) : void
      {
         if(this._80ab1b3c38f38c9a0519374a == null || !(this._80ab1b3c38f38c9a0519374a is _009582d19d1c5695c49f2ed8))
         {
            return;
         }
         var _loc3_:_009582d19d1c5695c49f2ed8 = this._80ab1b3c38f38c9a0519374a as _009582d19d1c5695c49f2ed8;
         if(param2 == null || param2 != null && _loc3_.type == param2)
         {
            _loc3_.update(param1);
         }
      }
   }
}

