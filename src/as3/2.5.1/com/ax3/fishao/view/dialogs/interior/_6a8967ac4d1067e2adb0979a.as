package com.ax3.fishao.view.dialogs.interior
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.privateHouse.interior.model._2015550cd0ec5b19b791fc93;
   import com.ax3.fishao.locations.privateHouse.interior.model._92a02af1a67b5d02208e6348;
   import com.ax3.fishao.model.vo._ce86dee7dc1496f14ad148fa;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.interior.FscExtensionInterior;
   import protocol.api.interior.get_info.ResponseInteriorGetInfo;
   import protocol.api.interior.update.ResponseInteriorUpdate;
   
   public class _6a8967ac4d1067e2adb0979a extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _f9dc6707d902af8175b72d55:FscExtensionInterior;
      
      private var _d6f3f1a7b0a81ea90d1993bc:Array;
      
      public function _6a8967ac4d1067e2adb0979a()
      {
         super();
         this.init();
      }
      
      public static function _497e0257d4801c0709149a58(param1:int) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:_ce86dee7dc1496f14ad148fa = app.privateHouseInteriorItemDict.get(param1) as _ce86dee7dc1496f14ad148fa;
         if(_loc3_ != null)
         {
            _loc2_ = {};
            _loc2_.id = _loc3_.id;
            _loc2_.item_id = _loc3_.id;
            _loc2_.price_fishbucks = _loc3_.priceFishbucks;
            _loc2_.price_fishcoins = _loc3_.priceFishcoins;
            _loc2_.type = _loc3_.type;
            _loc2_.rotation = _92a02af1a67b5d02208e6348.EIIR_FRONT;
            _loc2_.floor = -1900632686 ^ 0x1ABA2FFC ^ -1060654893 ^ 0x54CB3ABC;
            _loc2_.size_x = _loc3_.size_x;
            _loc2_.size_y = _loc3_.size_y;
            _loc2_.position_x = -1329581922 ^ 0x7021A761 ^ -1682354989 ^ 0x5B58DB2C;
            _loc2_.position_y = -1473811526 ^ 0x2AF443A9 ^ 0x6C5902F8 ^ -292934933;
         }
         return _loc2_;
      }
      
      public function get currentLocationItems() : Array
      {
         return this._d6f3f1a7b0a81ea90d1993bc;
      }
      
      public function set decorationShopItems(param1:Array) : void
      {
         var _loc2_:int = 0x010ADE34 ^ 0x3BCE6154 ^ 0x3DA9801F ^ 0x076D3F7F;
         var _loc3_:Object = null;
         this._d6f3f1a7b0a81ea90d1993bc = [];
         var _loc4_:Vector.<Object> = new Vector.<Object>();
         for each(_loc2_ in param1)
         {
            _loc3_ = _497e0257d4801c0709149a58(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc3_.type == _2015550cd0ec5b19b791fc93.EIIT_FURNITURE)
               {
                  _loc4_.push(_loc3_);
               }
               else
               {
                  this._d6f3f1a7b0a81ea90d1993bc.push(_loc3_);
               }
            }
         }
         this._c55e54e29efeb5d9da4aaf5e(_loc4_,0x72FA5376 ^ -1400841309 ^ 0x3D46F2F8 ^ -482575827,0x3A6E8128 ^ -762198697 ^ -1714194169 ^ 0x712C3D7B);
         this._c55e54e29efeb5d9da4aaf5e(_loc4_,-735594466 ^ -1357234417 ^ 0x68316205 ^ 0x130CE51C,-164112477 ^ -1263276571 ^ 0x5C04D15D ^ 0x1E80EB18);
         this._c55e54e29efeb5d9da4aaf5e(_loc4_,0x43009304 ^ 0x54D897AD ^ -1693563057 ^ -1932114970,0x1FDFA4A5 ^ 0x371E6DA9 ^ -1593515699 ^ -1983567802);
         this._c55e54e29efeb5d9da4aaf5e(_loc4_,0x13EA3FE5 ^ -308022665 ^ -602056435 ^ 0x22549497,0x2AEAD134 ^ -361377949 ^ -654355337 ^ 0x18604A27);
         this._1b01d5a54ea635138a958592();
      }
      
      private function _05d50633efb2f75af1210d78(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseInteriorGetInfo = param1 as ResponseInteriorGetInfo;
         if(_loc2_.isDecorationShop)
         {
            this.decorationShopItems = _loc2_.interiorItems;
         }
         else
         {
            this._d6f3f1a7b0a81ea90d1993bc = _loc2_.interiorItems;
         }
         var _loc3_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(_6b63fd0a4028eb279b227831.ECU_INTERIOR_GET_DATA);
         }
      }
      
      private function _2a7fa71f10a1edffe88f2783(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseInteriorUpdate = param1 as ResponseInteriorUpdate;
         this._d6f3f1a7b0a81ea90d1993bc = _loc2_.interiorItems;
         var _loc3_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(_6b63fd0a4028eb279b227831.ECU_INTERIOR_UPDATE);
         }
      }
      
      private function init() : void
      {
         this._f9dc6707d902af8175b72d55 = _dfa25706e58a240c1e33e5c6.fscModel.extensionInterior;
         _4575c3ec15103b43cbf2be04(ResponseInteriorGetInfo,this._05d50633efb2f75af1210d78);
         _4575c3ec15103b43cbf2be04(ResponseInteriorUpdate,this._2a7fa71f10a1edffe88f2783);
      }
      
      private function _c55e54e29efeb5d9da4aaf5e(param1:Vector.<Object>, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = -2051407249 ^ -110612572 ^ -937550866 ^ -1261685211;
         var _loc7_:int = 0x76F72244 ^ -265112149 ^ -1485134563 ^ 0x21BF32F2;
         var _loc8_:* = 0x2A07B77D ^ -1638607940 ^ 0x3B859D95 ^ -1881736880;
         while(_loc7_ < (-544942147 ^ -1017919254 ^ -1483977963 ^ -1151642554) && param1.length > (-388191874 ^ 0x41C42342 ^ 0x11B47F85 ^ -1196624455))
         {
            _loc5_ = false;
            _loc6_ = 0x260F771B ^ -1237622207 ^ -1800523548 ^ 0x049A25BE;
            while(_loc6_ < param1.length)
            {
               _loc4_ = param1[_loc6_];
               if(_loc4_.size_x == _loc8_)
               {
                  _loc4_.position_x = param2 + _loc7_;
                  _loc4_.position_y = param3;
                  this._d6f3f1a7b0a81ea90d1993bc.push(_loc4_);
                  _loc7_ += _loc4_.size_x;
                  _loc8_ = int((-1055151300 ^ -720914467 ^ -779600438 ^ -980147921) - _loc7_);
                  param1.splice(_loc6_,0x27F655EB ^ 0x65876F60 ^ -1384428190 ^ -284526616);
                  _loc5_ = true;
                  break;
               }
               _loc6_++;
            }
            if(!_loc5_ && _loc8_ > (0x6EAF5C8F ^ 0x0D1CDE8A ^ -1801031230 ^ -149556281))
            {
               _loc8_--;
            }
         }
      }
      
      public function _1b01d5a54ea635138a958592() : void
      {
         var _loc1_:Object = _6a8967ac4d1067e2adb0979a._497e0257d4801c0709149a58(-822178935 ^ 0x3F22C5D9 ^ 0x0B11B9D0 ^ -87165182);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.position_x = -137938860 ^ 0x437CFCFD ^ 0x102609D2 ^ -1533162113;
         this._d6f3f1a7b0a81ea90d1993bc.push(_loc1_);
      }
      
      public function buyItem(param1:int, param2:int, param3:Function = null) : void
      {
         this._f9dc6707d902af8175b72d55.buyItem(param1,param2,param3);
      }
      
      public function _d9ed651d0ce75eca3b6b49e9(param1:String, param2:Boolean = false, param3:Function = null) : void
      {
         this._f9dc6707d902af8175b72d55.getInfo(param1,param2,param3);
      }
      
      public function save(param1:String, param2:Function = null) : void
      {
         this._f9dc6707d902af8175b72d55.save(param1,param2);
      }
   }
}

