package com.ax3.fishao.view.dialogs.holidays.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _51ba0158a860b043fa168db6 extends _04cce4e240ff9bea66c1b7f7
   {
      
      protected var _source:DisplayObjectContainer;
      
      protected var _obstacleMap:BitmapData;
      
      protected var _obstacleMapBounds:Rectangle;
      
      protected var _obstacleMapOffset:Point;
      
      private var _dd905d723c3c156ca4b614bd:Boolean;
      
      protected var _objectsWithFixedVisibility:Array;
      
      protected var _objectsWithInvertedVisibility:Array;
      
      public function _51ba0158a860b043fa168db6(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function get isEnabled() : Boolean
      {
         return this._dd905d723c3c156ca4b614bd;
      }
      
      private function _caacd84e048d55b651421924() : void
      {
         var _loc1_:DisplayObject = null;
         _loc1_ = null;
         for each(_loc1_ in this._objectsWithFixedVisibility)
         {
            _loc1_.alpha = -250481858 ^ -1966423939 ^ 0x703B7650 ^ 0x0BE04512;
            _loc1_.visible = this._dd905d723c3c156ca4b614bd;
         }
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = -70803294 ^ 0x155A5620 ^ -1199583965 ^ 0x56E23BA1;
         var _loc3_:DisplayObject = null;
         this._objectsWithFixedVisibility = [];
         this._objectsWithInvertedVisibility = [];
         this._840f698fa649fbd34cd266dc();
         var _loc4_:int = -1974378998 ^ 0x30411A9C ^ 0x310BD7C0 ^ -1961127082;
         while(_loc4_ < this._source.numChildren)
         {
            _loc1_ = this._source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE) > (0x1C106B44 ^ 0x6A26F86C ^ -2064964198 ^ 0x0D22494D))
            {
               _loc2_ = 0x04987546 ^ 0x3BDEEAA1 ^ 0x07559940 ^ 0x381306A7;
               while(_loc2_ < _loc1_.numChildren)
               {
                  _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                  this._objectsWithFixedVisibility.push(_loc3_);
                  _loc2_++;
               }
            }
            _loc4_++;
         }
         this.hide();
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         var _loc3_:Object = null;
         var _loc4_:DisplayObject = null;
         this._3a5bdf4dec7770c0ae7f4f2a();
         this._dd905d723c3c156ca4b614bd = true;
         _loc3_ = {
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛჁႮဩႤၜႴၡၠႶჲႶၪ႗ღၬჷၓ","ႴႯყოႨဠဆჷေခစဿၗၓ႑၌")):-1086604083 ^ -455850464 ^ 0x12FD037A ^ 0x4912F996,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勧劬刮劭剦剻劇刌劤刡勘切勏利劂刻剙剳列劉勸刬勮刔剉功勞剻","劑刋剅劳勷刾劲劵刾势劽剥剃勢刕勭")):this._caacd84e048d55b651421924
         };
         for each(_loc4_ in this._objectsWithFixedVisibility)
         {
            _loc4_.visible = true;
            _loc4_.alpha = -1290923546 ^ 0x24FD762C ^ 0x67BD9E0A ^ -263259712;
            TweenLite.to(_loc4_,param1,_loc3_);
         }
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         var _loc3_:Object = null;
         var _loc4_:DisplayObject = null;
         this._3a5bdf4dec7770c0ae7f4f2a();
         this._dd905d723c3c156ca4b614bd = false;
         _loc3_ = {
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勬刺刎刴剳劌刹劎努刍勬勚剈刌刧劼力勇","勽劯劚剝剆刪劚剐劲劈刟剌勜劁勏勚")):-1381631650 ^ 0x56F37D23 ^ -202240080 ^ 0x08A48BCD,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挼掵握挐挵捰挀掾捧掉挮捋揹挈揔捲掜挲揧掐掺掌挕捾控挮揾捊","揍掳挥捥掜捭挊捃接掆揑挔捈挚掚掎")):this._caacd84e048d55b651421924
         };
         for each(_loc4_ in this._objectsWithFixedVisibility)
         {
            _loc4_.visible = true;
            _loc4_.alpha = -363744274 ^ 0x734FB286 ^ 0x0F26E472 ^ -1774656229;
            TweenLite.to(_loc4_,param1,_loc3_);
         }
      }
      
      protected function _840f698fa649fbd34cd266dc() : void
      {
         var _loc1_:DisplayObject = Debug.assertProperty(this._source,_77ca96a94affdf1e9d31698c.EDOT_SYSTEM_OBSTACLE_SITUATIONAL);
         this._obstacleMap = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc1_);
         this._obstacleMapBounds = _loc1_.getBounds(_loc1_);
         this._obstacleMapOffset = new Point(_loc1_.x,_loc1_.y);
         _loc1_.visible = false;
      }
      
      public function hitTest(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Boolean = false;
         param1 = param1 - this._source.x - this._obstacleMapOffset.x - this._obstacleMapBounds.x;
         param2 = param2 - this._source.y - this._obstacleMapOffset.y - this._obstacleMapBounds.y;
         return this._dd905d723c3c156ca4b614bd == param3 && this._obstacleMap != null && param1 > (0x1199C01C ^ 0x6883861E ^ -2021103458 ^ -23974244) && param2 > (0x0D00D67C ^ 0x55A60586 ^ -1729284360 ^ -1068767998) && param1 < this._obstacleMap.width && param2 < this._obstacleMap.height && this._obstacleMap.getPixel32(param1,param2) > (-743705991 ^ -899820144 ^ 0x03AAB889 ^ 0x1AA3609F);
      }
      
      private function _3a5bdf4dec7770c0ae7f4f2a() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._objectsWithFixedVisibility)
         {
            TweenLite.killTweensOf(_loc1_);
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._3a5bdf4dec7770c0ae7f4f2a();
         this._objectsWithFixedVisibility = null;
         this._objectsWithInvertedVisibility = null;
         this._obstacleMap.dispose();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

