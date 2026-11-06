package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.locations.privateHouse._87a2b64ec17c6fb7cbdd79f4;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.locations.privateHouse.interior.model._0f182acf2a421e979ab2aa39;
   import com.ax3.fishao.locations.privateHouse.interior.model._16a3f09beca9f69fddfa1665;
   import com.ax3.fishao.locations.privateHouse.interior.model._2015550cd0ec5b19b791fc93;
   import com.ax3.fishao.locations.privateHouse.interior.model._89bc7f4f6fa46d997b0e149c;
   import com.ax3.fishao.locations.privateHouse.interior.model._b96ff5cb658b59458748ed64;
   import com.ax3.fishao.locations.privateHouse.model.*;
   import com.ax3.fishao.model.vo._ce86dee7dc1496f14ad148fa;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import flash.events.Event;
   import flashx.textLayout.formats.TextAlign;
   
   public class _afb131a8b7579a7c44d03bf8
   {
      
      private static const _656e0295bd1f20bdd90442fb:int = 0x0B38271D ^ -459497319 ^ 0x47C1C452 ^ -1469758511;
      
      private static const _b8df5af801458eedb065b174:int = 0x2F68D559 ^ 0x2D6BF5F6 ^ -1905416447 ^ -1938913364;
      
      private var _f9a6a6bd4ca9ceb2168e1880:Array;
      
      private var _a224019eb733953c6f68a52d:Array;
      
      private var _e911adb7c29e7325added4dc:_87a2b64ec17c6fb7cbdd79f4;
      
      private var _256e3cb8a1eac7c70b664121:_c24229eda44b942058106fae;
      
      private var _9811bac3af9a46f40de2b237:Boolean;
      
      private var _c27db3cb37ccd232c4e0c799:Object;
      
      private var _84f7a53bc5623a61d4d3f71d:Object;
      
      private var _aa6a33339669b0dea5fbf67e:int;
      
      private var _99201eb961f420d2455a81cf:int;
      
      private var _8f9294895fbb18f2e32cd9cb:_f11f4587bdf083a8dd45aa84;
      
      private var _7f37510ab7775fb24e100953:String;
      
      private var _97474bfb0981aced066c8f0b:_33aca7ac1e49b5f2d10a6bbc;
      
      public function _afb131a8b7579a7c44d03bf8()
      {
         super();
         this.init();
      }
      
      private static function _d9a356baa4237adbc50aca63(param1:String, param2:int) : Boolean
      {
         var _loc3_:Boolean = true;
         switch(param1)
         {
            case _2015550cd0ec5b19b791fc93.EIIT_WALL:
               §§push(-1519731631 ^ -1049509145 ^ -1013966834 ^ -1484036424);
               break;
            case _2015550cd0ec5b19b791fc93.EIIT_FLOOR:
               §§push(0x3AB3E212 ^ -1802589942 ^ -166164315 ^ 0x5825C3BC);
               break;
            default:
               §§push(0x3BCFC6E2 ^ 0x49123972 ^ -1295567860 ^ -1071985762);
         }
         switch(§§pop())
         {
            case 0:
               if(param2 == _b8df5af801458eedb065b174)
               {
                  _loc3_ = false;
               }
               break;
            case 1:
               if(param2 == _656e0295bd1f20bdd90442fb)
               {
                  _loc3_ = false;
               }
         }
         return _loc3_;
      }
      
      public function get selectedItem() : _33aca7ac1e49b5f2d10a6bbc
      {
         return this._97474bfb0981aced066c8f0b;
      }
      
      public function set selectedItem(param1:_33aca7ac1e49b5f2d10a6bbc) : void
      {
         this._97474bfb0981aced066c8f0b = param1;
      }
      
      public function get items() : Array
      {
         return this._a224019eb733953c6f68a52d;
      }
      
      public function get currentWall() : Object
      {
         return this._c27db3cb37ccd232c4e0c799;
      }
      
      public function get currentFloor() : Object
      {
         return this._84f7a53bc5623a61d4d3f71d;
      }
      
      public function set locationLayers(param1:_87a2b64ec17c6fb7cbdd79f4) : void
      {
         this._e911adb7c29e7325added4dc = param1;
      }
      
      public function get locationLayers() : _87a2b64ec17c6fb7cbdd79f4
      {
         return this._e911adb7c29e7325added4dc;
      }
      
      public function set locationDialog(param1:_c24229eda44b942058106fae) : void
      {
         this._256e3cb8a1eac7c70b664121 = param1;
      }
      
      public function get locationDialog() : _c24229eda44b942058106fae
      {
         return this._256e3cb8a1eac7c70b664121;
      }
      
      public function set interiorItemsPlace(param1:String) : void
      {
         this._7f37510ab7775fb24e100953 = param1;
      }
      
      public function set interiorData(param1:Array) : void
      {
         this._f9a6a6bd4ca9ceb2168e1880 = param1;
      }
      
      public function get interiorDataToLoadLength() : int
      {
         var _loc1_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc2_:int = 0x0EB587F4 ^ -1466623522 ^ -112079340 ^ 0x5F71503E;
         for each(_loc1_ in this._a224019eb733953c6f68a52d)
         {
            if(_d9a356baa4237adbc50aca63(_loc1_.entity.type,_loc1_.entity.itemId))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get dynamicGraphicsProgress() : Number
      {
         var _loc1_:Number = -148007766 ^ 0x65DFE05B ^ 0x768E1286 ^ -461609353;
         if(this._aa6a33339669b0dea5fbf67e != (-836199200 ^ -420630197 ^ 0x3FDB8751 ^ 0x171EAAFA))
         {
            _loc1_ = this._99201eb961f420d2455a81cf / this._aa6a33339669b0dea5fbf67e;
         }
         return _loc1_;
      }
      
      public function _db2cb6e22f5706ec2599449a() : void
      {
         var _loc1_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc2_:int = _2713ec585daceb8ad62e2797._adf619d5a1466c387512975c(this._256e3cb8a1eac7c70b664121.playerPositionCurrent);
         for each(_loc1_ in this._a224019eb733953c6f68a52d)
         {
            _loc1_.isVisible = _loc1_.entity.floor == _loc2_ && this._256e3cb8a1eac7c70b664121.playerPositionCurrent != _2713ec585daceb8ad62e2797.EPP_GARDEN;
         }
      }
      
      public function _9fc09ec9cd14fd5e825e7028(param1:int, param2:int) : Boolean
      {
         var _loc3_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc4_:_21338c66f3aee498aad8da98 = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = _2713ec585daceb8ad62e2797._adf619d5a1466c387512975c(this._256e3cb8a1eac7c70b664121.playerPositionCurrent);
         for each(_loc3_ in this._a224019eb733953c6f68a52d)
         {
            _loc4_ = _loc3_ as _21338c66f3aee498aad8da98;
            if(!(_loc4_ == null || _loc3_.entity.floor != _loc6_))
            {
               if(_loc4_._9fc09ec9cd14fd5e825e7028(param1,param2))
               {
                  _loc5_ = true;
                  break;
               }
            }
         }
         return _loc5_;
      }
      
      public function _d319f27f99778c23887a2a42(param1:int) : Boolean
      {
         var _loc2_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in this._a224019eb733953c6f68a52d)
         {
            if(_loc2_.entity.floor == param1)
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
      
      private function _397a723224da07d28a2cb5e0(param1:int) : _33aca7ac1e49b5f2d10a6bbc
      {
         var _loc2_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc3_:_33aca7ac1e49b5f2d10a6bbc = null;
         for each(_loc2_ in this._a224019eb733953c6f68a52d)
         {
            if(_loc2_.entity.id == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      private function _dff4f81aa7481e1d864503f2(param1:Event = null) : void
      {
         if(this._7f37510ab7775fb24e100953 == _b96ff5cb658b59458748ed64.EIIL_FRIENDS_HOUSE && this._99201eb961f420d2455a81cf == this._aa6a33339669b0dea5fbf67e)
         {
            this._db2cb6e22f5706ec2599449a();
            return;
         }
         if(this._97474bfb0981aced066c8f0b != null)
         {
            this._fdedc542136b066e86dcea61();
            return;
         }
         ++this._99201eb961f420d2455a81cf;
         if(this._99201eb961f420d2455a81cf == this._aa6a33339669b0dea5fbf67e)
         {
            if(this._9811bac3af9a46f40de2b237)
            {
               this._256e3cb8a1eac7c70b664121._2818e8e11814ef0ec6a953cc();
            }
            else
            {
               this._256e3cb8a1eac7c70b664121._c047644bcf874f1a67d20ce2();
            }
         }
      }
      
      private function _b24fbdb9a935a27e7ce88683(param1:Event = null) : void
      {
         var _loc2_:int = 0x0C14F5F1 ^ 0x13C6BAC3 ^ -2139596808 ^ -352425612;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1D3E63AA ^ -296084966 ^ -792558435 ^ 0x56F28C93))
            {
               case 0:
                  if(this._8f9294895fbb18f2e32cd9cb != null)
                  {
                     _loc2_ = -1326066586 ^ 0x14902A7A ^ -144846498 ^ 0x266C5EFD;
                  }
                  else
                  {
                     _loc2_ = 0x6EF6B1E7 ^ -1344436186 ^ -1763945162 ^ 0x22A31D4B;
                  }
                  break;
               case 1:
                  this._8f9294895fbb18f2e32cd9cb.stop();
                  _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._8f9294895fbb18f2e32cd9cb);
                  _loc2_ = -1499180237 ^ -696868699 ^ -1243496231 ^ -1335409933;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _fdedc542136b066e86dcea61() : void
      {
         var _loc1_:int = 0x71D4C1BC ^ -1635238355 ^ -2009088276 ^ 0x4BFFF5B3;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x59D1E2EA ^ -80031674 ^ 0x66B6BAB3 ^ -389989165))
            {
               case 0:
                  this._97474bfb0981aced066c8f0b.view.show();
                  return;
               case 1:
                  this._2a3d39c886519db672fcbda7();
                  _loc1_ = -840002177 ^ 0x5ECAB056 ^ -1094000832 ^ 0x01724EA5;
                  break;
               case 2:
                  this._b24fbdb9a935a27e7ce88683();
                  if(this._97474bfb0981aced066c8f0b.entity.type == _2015550cd0ec5b19b791fc93.EIIT_FURNITURE)
                  {
                     _loc1_ = 0x52DB96F6 ^ 0x5358E7FC ^ 0x56101238 ^ 0x7B0FD7FF;
                  }
                  else
                  {
                     _loc1_ = -635005070 ^ -975101630 ^ 0x34D44902 ^ 0x078F4BFE;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ba028639e855921d13a59b42() : void
      {
         var _loc1_:Array = this._9f0b79adaf831655d141cbda();
         this._2b1330fe54aebab04b377e94(_loc1_);
         this._593d2f457e808e5ef61c5fc4(_loc1_);
         this._87a23d666ae7270b1446509d(_loc1_);
         this._db2cb6e22f5706ec2599449a();
      }
      
      private function init() : void
      {
         this._f9a6a6bd4ca9ceb2168e1880 = [];
         this._a224019eb733953c6f68a52d = [];
         this._9811bac3af9a46f40de2b237 = false;
         this._aa6a33339669b0dea5fbf67e = -1034042091 ^ -211902206 ^ -742646271 ^ -490767850;
         this._99201eb961f420d2455a81cf = 0x06AF83F7 ^ -2065370816 ^ -1742740508 ^ 0x1A549153;
      }
      
      public function load() : void
      {
         var _loc1_:_ce86dee7dc1496f14ad148fa = null;
         var _loc2_:Object = null;
         var _loc3_:int = -1588833537 ^ -1356241395 ^ 0x6113C1D7 ^ 0x6F76F525;
         var _loc4_:_89bc7f4f6fa46d997b0e149c = null;
         var _loc5_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc6_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc7_:int = -54142080 ^ -162764618 ^ 0x34E52EDD ^ 0x3E6C9DEB;
         var _loc8_:int = 0x43DEA6B4 ^ 0x7B823BC7 ^ -77726971 ^ -1023318410;
         this._9811bac3af9a46f40de2b237 = true;
         for each(_loc2_ in this._f9a6a6bd4ca9ceb2168e1880)
         {
            _loc1_ = app.privateHouseInteriorItemDict.get(_loc2_.item_id) as _ce86dee7dc1496f14ad148fa;
            if(_loc1_ != null)
            {
               _loc4_ = _0f182acf2a421e979ab2aa39._4fcbc168c330736b4bf223d9(_loc2_,_loc1_.type);
               _loc4_.location = this._7f37510ab7775fb24e100953;
               _loc5_ = _16a3f09beca9f69fddfa1665._98ed5bcf28617f7970877016(_loc4_,this);
               this._a224019eb733953c6f68a52d.push(_loc5_);
            }
         }
         this._aa6a33339669b0dea5fbf67e = this.interiorDataToLoadLength;
         _loc3_ = 0x26C22CB4 ^ -1532742228 ^ 0x3BEE93F7 ^ -1182233873;
         while(_loc3_ < this._a224019eb733953c6f68a52d.length)
         {
            _loc6_ = this._a224019eb733953c6f68a52d[_loc3_];
            _loc7_ = int(this._a224019eb733953c6f68a52d.length);
            _loc6_._b608f592bdec34a87ae66f71();
            _loc8_ = int(this._a224019eb733953c6f68a52d.length);
            if(_loc7_ == _loc8_)
            {
               _loc3_++;
            }
         }
      }
      
      public function _2a3d39c886519db672fcbda7() : void
      {
         var _loc1_:_33aca7ac1e49b5f2d10a6bbc = null;
         if(this._7f37510ab7775fb24e100953 != _b96ff5cb658b59458748ed64.EIIL_PRIVATE_HOUSE || this._256e3cb8a1eac7c70b664121.playerPositionCurrent == _2713ec585daceb8ad62e2797.EPP_GARDEN)
         {
            return;
         }
         this._256e3cb8a1eac7c70b664121.buildMode = true;
         for each(_loc1_ in this._a224019eb733953c6f68a52d)
         {
            _loc1_.buildMode = true;
         }
         (this._97474bfb0981aced066c8f0b as _21338c66f3aee498aad8da98).isSelected = true;
         this._256e3cb8a1eac7c70b664121._5a0c488ad8daf63849d99757();
      }
      
      public function _e49cd9ea41175b7c610e0f93() : void
      {
         var _loc1_:_33aca7ac1e49b5f2d10a6bbc = null;
         this._256e3cb8a1eac7c70b664121.buildMode = false;
         for each(_loc1_ in this._a224019eb733953c6f68a52d)
         {
            _loc1_.buildMode = false;
         }
         this._97474bfb0981aced066c8f0b = null;
         this._256e3cb8a1eac7c70b664121._3e9e33e3b84308df062d9743();
      }
      
      public function _6f2c5ad50cdf46d9f856c5f3(param1:int, param2:int) : void
      {
         var _loc3_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc4_:_838dd3675559bc1578ec126a = null;
         var _loc5_:_6691abcab801c2433d32324a = null;
         var _loc6_:int = _2713ec585daceb8ad62e2797._adf619d5a1466c387512975c(this._256e3cb8a1eac7c70b664121.playerPositionCurrent);
         var _loc7_:_ce86dee7dc1496f14ad148fa = app.privateHouseInteriorItemDict.get(param2) as _ce86dee7dc1496f14ad148fa;
         this._72ed038f77d3ec62885e4ffb();
         var _loc8_:Object = {};
         _loc8_.id = param1;
         _loc8_.item_id = param2;
         _loc8_.floor = _loc6_;
         switch(_loc7_.type)
         {
            case _2015550cd0ec5b19b791fc93.EIIT_FLOOR:
               §§push(0x58A598BE ^ 0x11CF4692 ^ 0x3A5C2C4C ^ 0x7336F260);
               break;
            case _2015550cd0ec5b19b791fc93.EIIT_WALL:
               §§push(-967497371 ^ -1591561936 ^ 0x6D580BE2 ^ 0x0A2F93B6);
               break;
            case _2015550cd0ec5b19b791fc93.EIIT_FURNITURE:
               §§push(0x66D2B10F ^ 0x6E756E2E ^ -2086871418 ^ -1959067227);
               break;
            default:
               §§push(-440897971 ^ -892116612 ^ -254215502 ^ -541854336);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               _loc3_ = this._f6bb335e1c7c310ce30b5012(_loc6_,_loc7_.type);
               if(_loc3_ != null)
               {
                  _loc3_.removeItem();
               }
               break;
            case 2:
               _loc4_ = _ff153ea21aec5522fa3b516d._d41354a8cb3593955fd182b3(this._256e3cb8a1eac7c70b664121.furnitureMap[_loc6_ - 1],_loc7_.size_x,_loc7_.size_y);
               if(_loc4_ == null)
               {
                  this._b24fbdb9a935a27e7ce88683();
                  _loc5_ = new _6691abcab801c2433d32324a();
                  _loc5_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剘勐動勬劄劒刁势判剝勘剄劜刔劢勳剞勧刊剩劒劣劎勍劰勓劼劲剦剺创刽劚劢勊勤动刔劮剾劲労勦则副劀","刏則劭别动剩刏刊劶勏勉剸刮劷劀勇")).split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刣勣勎勰剸勖刲勫勝勃勣剹勤勒劁勠勠券剕刍刊務剷剏刹勅","劙劇动务劳创剓勍劌刼刳刖勹勸功効")).join(app.user.username));
                  _loc5_.textAlign = TextAlign.CENTER;
                  _loc5_.buttons = _6691abcab801c2433d32324a.OK_BUTTON;
                  _loc5_.closeOnOk = true;
                  _loc5_.show();
                  return;
               }
               _loc8_.position_x = _loc4_.point.x;
               _loc8_.position_y = _loc4_.point.y;
               _loc8_.rotation = _loc4_.rotation;
         }
         this._256e3cb8a1eac7c70b664121._95483d0b726b08333bf33628(param1);
         var _loc9_:_89bc7f4f6fa46d997b0e149c = _0f182acf2a421e979ab2aa39._4fcbc168c330736b4bf223d9(_loc8_,_loc7_.type);
         _loc9_.location = this._7f37510ab7775fb24e100953;
         var _loc10_:Boolean = GameSwf.instance.managerTutorial.isAnyTutorialInProgress;
         var _loc11_:_33aca7ac1e49b5f2d10a6bbc = _16a3f09beca9f69fddfa1665._98ed5bcf28617f7970877016(_loc9_,this,_loc10_);
         this._97474bfb0981aced066c8f0b = _loc11_;
         this._a224019eb733953c6f68a52d.push(_loc11_);
         if(_d9a356baa4237adbc50aca63(_loc9_.type,_loc9_.itemId))
         {
            this._97474bfb0981aced066c8f0b._b608f592bdec34a87ae66f71();
         }
         else
         {
            this._dff4f81aa7481e1d864503f2();
         }
         this.save();
      }
      
      private function _f6bb335e1c7c310ce30b5012(param1:int, param2:String) : _33aca7ac1e49b5f2d10a6bbc
      {
         var _loc3_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc4_:_33aca7ac1e49b5f2d10a6bbc = null;
         for each(_loc3_ in this._a224019eb733953c6f68a52d)
         {
            if(_loc3_.entity.floor == param1 && _loc3_.entity.type == param2)
            {
               _loc4_ = _loc3_;
               break;
            }
         }
         return _loc4_;
      }
      
      public function update(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_INTERIOR_ITEM_LOADED === _loc2_ ? -1843152645 ^ -705383923 ^ 0x151F59AB ^ 0x52C8535D : 0x6F87DC03 ^ -1248363439 ^ -1910398210 ^ 0x543102AD)
         {
            case 0:
               this._dff4f81aa7481e1d864503f2();
               break;
            default:
               super.updateWithType(param1);
         }
      }
      
      private function _9f0b79adaf831655d141cbda() : Array
      {
         var _loc1_:_ce86dee7dc1496f14ad148fa = null;
         var _loc2_:Object = null;
         var _loc3_:_89bc7f4f6fa46d997b0e149c = null;
         var _loc4_:Array = [];
         for each(_loc2_ in this._f9a6a6bd4ca9ceb2168e1880)
         {
            _loc1_ = app.privateHouseInteriorItemDict.get(_loc2_.item_id) as _ce86dee7dc1496f14ad148fa;
            if(_loc1_ != null)
            {
               _loc3_ = _0f182acf2a421e979ab2aa39._4fcbc168c330736b4bf223d9(_loc2_,_loc1_.type);
               _loc3_.location = this._7f37510ab7775fb24e100953;
               _loc4_.push(_loc3_);
            }
         }
         return _loc4_;
      }
      
      private function _2b1330fe54aebab04b377e94(param1:Array) : void
      {
         var _loc2_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc3_:Boolean = false;
         var _loc4_:_89bc7f4f6fa46d997b0e149c = null;
         for each(_loc2_ in this._a224019eb733953c6f68a52d)
         {
            _loc3_ = false;
            for each(_loc4_ in param1)
            {
               if(_loc4_.id == _loc2_.entity.id)
               {
                  _loc3_ = true;
                  break;
               }
            }
            if(!_loc3_)
            {
               _loc2_.removeItem(false);
            }
         }
      }
      
      private function _593d2f457e808e5ef61c5fc4(param1:Array) : void
      {
         var _loc2_:_89bc7f4f6fa46d997b0e149c = null;
         var _loc3_:_33aca7ac1e49b5f2d10a6bbc = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this._397a723224da07d28a2cb5e0(_loc2_.id);
            if(!(_loc3_ == null || _loc3_.entity.type != _2015550cd0ec5b19b791fc93.EIIT_FURNITURE || _loc3_.entity._34580f97f962a727c83c452e(_loc2_)))
            {
               _loc3_.entity._7e2460cabb47ddce136047c8(_loc2_);
               _loc3_._a75c6619e7e273a1005770ee();
            }
         }
      }
      
      private function _87a23d666ae7270b1446509d(param1:Array) : void
      {
         var _loc2_:_89bc7f4f6fa46d997b0e149c = null;
         var _loc3_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc4_:_33aca7ac1e49b5f2d10a6bbc = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this._397a723224da07d28a2cb5e0(_loc2_.id);
            if(_loc3_ == null)
            {
               _loc4_ = _16a3f09beca9f69fddfa1665._98ed5bcf28617f7970877016(_loc2_,this);
               this._a224019eb733953c6f68a52d.push(_loc4_);
               _loc4_._b608f592bdec34a87ae66f71();
            }
         }
      }
      
      public function save() : void
      {
         var _loc1_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._a224019eb733953c6f68a52d)
         {
            _loc2_.push(_loc1_.entity.serialize());
         }
         GameSwf.instance.managerInterior.save(JSON.stringify(_loc2_));
      }
      
      private function _72ed038f77d3ec62885e4ffb() : void
      {
         this._8f9294895fbb18f2e32cd9cb = new _f11f4587bdf083a8dd45aa84(_141a5f7d84a4cfae1680515b.TYPE_SIMPLE);
         this._8f9294895fbb18f2e32cd9cb.start();
         _745ca4cad2f6acc1f3084ea1._2b080f46e549b4b5a001764c(this._8f9294895fbb18f2e32cd9cb);
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:_33aca7ac1e49b5f2d10a6bbc = null;
         if(this._a224019eb733953c6f68a52d != null)
         {
            for each(_loc1_ in this._a224019eb733953c6f68a52d)
            {
               _loc1_._90eac9ca552fe54c2ca0299f();
               _loc1_ = null;
            }
            this._a224019eb733953c6f68a52d = null;
         }
      }
   }
}

