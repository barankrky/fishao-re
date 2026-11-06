package com.ax3.fishao.locations.items
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.*;
   import com.ax3.fishao.locations.items.controller._b4e9a07262330690b635623c;
   import com.ax3.fishao.locations.items.model._4aa243954966c493c452eb64;
   import com.ax3.fishao.locations.items.view._b24d698d62126854674d50a8;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import protocol.api.base.ResponseOk;
   
   public class _f53c51098527c84835f32b98
   {
      
      private var _fa7c4d3a90b994be712e246c:Array;
      
      private var _94705dffefda14f608f85ccb:_bd60f9ad6ef4aaf28041ce8f;
      
      private var _01ec885bac3d6dfd540b1b51:_67f8febc099eaa05c48aa41e;
      
      public function _f53c51098527c84835f32b98(param1:_67f8febc099eaa05c48aa41e)
      {
         super();
         this._01ec885bac3d6dfd540b1b51 = param1;
         this.init();
      }
      
      private static function _950189eaa6db57e803ecc0b1(param1:int) : DisplayObjectContainer
      {
         var _loc2_:DisplayObjectContainer = null;
         switch(param1)
         {
            case 0x3296D2B4 ^ 0x5E1F3BC7 ^ -1903068732 ^ -501706570:
               §§push(0x5438EBAB ^ -1911417613 ^ 0x0C686091 ^ -700276791);
               break;
            case -1738168128 ^ 0x42DB7281 ^ -1786402035 ^ 0x4F3B714E:
               §§push(0x1061D864 ^ 0x05AF83B0 ^ -632541508 ^ -813533847);
               break;
            case -285517496 ^ -1691180842 ^ -1968980941 ^ -9812562:
               §§push(-1193385092 ^ -405700678 ^ 0x071B4608 ^ 0x58145ACC);
               break;
            case 0x1AC8D95C ^ 0x6FE377FC ^ -1186474669 ^ -865305609:
               §§push(-903956056 ^ 0x7B8BD47E ^ -784199217 ^ 0x60D77C1A);
               break;
            case 0x6A3F273C ^ 0x03599359 ^ 0x2DC53636 ^ 0x44A38256:
               §§push(0x0AADF35D ^ 0x631BB91C ^ -1783372741 ^ -66736514);
               break;
            case 0x3539E25B ^ 0x0C87361D ^ 0x6A89F519 ^ 0x53372159:
               §§push(-123796313 ^ -1771626263 ^ 0x252899DC ^ 0x4BD0BD97);
               break;
            case -394726858 ^ 0x5D965CE2 ^ 0x50484640 ^ -442046317:
               §§push(0x4FE4C185 ^ 0x355916A4 ^ 0x3D83A402 ^ 0x473E7325);
               break;
            case 0x57463D38 ^ 0x374F51E7 ^ -749749451 ^ -1287202846:
               §§push(0x3DE5B181 ^ 0x59549AB0 ^ -1577002205 ^ -961417195);
               break;
            case -1608829375 ^ 0x23AF66C0 ^ 0x58A3CF77 ^ -619208705:
               §§push(-1750709144 ^ -621458233 ^ 0x6E406055 ^ 0x231360F2);
               break;
            default:
               §§push(-698890323 ^ 0x5B8F5A31 ^ -1203363639 ^ 0x359EBD5C);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new gViewBanana();
               break;
            case 1:
               _loc2_ = new gViewCoconut();
               break;
            case 2:
               _loc2_ = new gViewKiwi();
               break;
            case 3:
               _loc2_ = new gViewLemon();
               break;
            case 4:
               _loc2_ = new gViewMango();
               break;
            case 5:
               _loc2_ = new gViewOrange();
               break;
            case 6:
               _loc2_ = new gViewPapaya();
               break;
            case 7:
               _loc2_ = new gViewPineapple();
               break;
            case 8:
               _loc2_ = new gViewPitaya();
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捺揿挨掔捽揤揽挢换捩据措揌捷揊振掎掉揈揪掎捈挶捏揘揅捱揜揆损捾揓捧挏捏掭揝挒挼掃援掤捧挌捭揖捤控掙掠揱揑揚揿捲掆挊揤揾挙挣揅挧揱挸掦捩揤挒採掰掾掳挓揇挖捲挜挿掋揯挺捨掖掽揭挞揈挤掚掺挠捠捭挔持揖揽措捺揨掸揮揇掐捫揔揆揗掹换掍揈挣挋捩损捸揕揹捃挗挑揞","挥掶揠掉揟挔揦掀揥捪揰挻揙掵揟捛") + param1);
         }
         return _loc2_;
      }
      
      public static function parse(param1:Object) : _4aa243954966c493c452eb64
      {
         var _loc2_:_4aa243954966c493c452eb64 = new _4aa243954966c493c452eb64();
         _loc2_.deserialize(param1);
         return _loc2_;
      }
      
      public function set locationLayers(param1:_bd60f9ad6ef4aaf28041ce8f) : void
      {
         this._94705dffefda14f608f85ccb = param1;
      }
      
      private function init() : void
      {
         this._fa7c4d3a90b994be712e246c = [];
      }
      
      public function _7fbc98e1b8595130c1753487(param1:Object) : void
      {
         var _loc2_:_4aa243954966c493c452eb64 = parse(param1);
         this.addItem(_loc2_);
      }
      
      public function addItem(param1:_4aa243954966c493c452eb64) : void
      {
         var _loc2_:_b4e9a07262330690b635623c = new _b4e9a07262330690b635623c(param1);
         this._fa7c4d3a90b994be712e246c.push(_loc2_);
         this._94705dffefda14f608f85ccb.addLocationItem(_loc2_.view as _b24d698d62126854674d50a8);
      }
      
      public function _e2e39474948d8ced20ea12dd(param1:Object) : void
      {
         var _loc2_:_4aa243954966c493c452eb64 = parse(param1);
         this.removeItem(_loc2_);
      }
      
      public function removeItem(param1:_4aa243954966c493c452eb64) : void
      {
         var _loc2_:_b4e9a07262330690b635623c = this._a75097a7bbbe7f86d36006e3(param1);
         this._fa7c4d3a90b994be712e246c.splice(this._fa7c4d3a90b994be712e246c.indexOf(_loc2_),0x4EF198C3 ^ -1890876109 ^ -671309947 ^ 0x16468274);
         this._94705dffefda14f608f85ccb.removeLocationItem(_loc2_.view as _b24d698d62126854674d50a8);
      }
      
      public function _61cb7e47776cad4e42786ba2() : void
      {
         var _loc1_:_b4e9a07262330690b635623c = this._46ce4eb1bebdb997cae08461(_67282af25befe9778e5c8dd1.FOSSIL.id);
         if(_loc1_ == null)
         {
            return;
         }
         this._fa7c4d3a90b994be712e246c.splice(this._fa7c4d3a90b994be712e246c.indexOf(_loc1_),0x4EFAFD7B ^ 0x3384C14D ^ 0x38503AF1 ^ 0x452E06C6);
         this._94705dffefda14f608f85ccb.removeLocationItem(_loc1_.view as _b24d698d62126854674d50a8);
      }
      
      public function _a75097a7bbbe7f86d36006e3(param1:_4aa243954966c493c452eb64) : _b4e9a07262330690b635623c
      {
         var _loc2_:_b4e9a07262330690b635623c = null;
         var _loc3_:_b4e9a07262330690b635623c = null;
         for each(_loc2_ in this._fa7c4d3a90b994be712e246c)
         {
            if(_loc2_.entity.resourceType == param1.resourceType && _loc2_.entity.resourceId == param1.resourceId && _loc2_.entity.position.equals(param1.position))
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _46ce4eb1bebdb997cae08461(param1:int) : _b4e9a07262330690b635623c
      {
         var _loc2_:_b4e9a07262330690b635623c = null;
         var _loc3_:_b4e9a07262330690b635623c = null;
         for each(_loc2_ in this._fa7c4d3a90b994be712e246c)
         {
            if(_loc2_.entity.resourceType == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _868c102f90bae516e4788ba1(param1:int) : Array
      {
         var _loc2_:_b4e9a07262330690b635623c = null;
         var _loc3_:Array = [];
         for each(_loc2_ in this._fa7c4d3a90b994be712e246c)
         {
            if(_loc2_.entity.resourceType == param1)
            {
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      public function _069744e4f3ede920db09103e(param1:int) : void
      {
         var _loc2_:_b4e9a07262330690b635623c = null;
         var _loc3_:int = 0x79EFD484 ^ -2087958317 ^ -261044802 ^ 0x0A1359E9;
         while(_loc3_ < this._fa7c4d3a90b994be712e246c.length)
         {
            _loc2_ = this._fa7c4d3a90b994be712e246c[_loc3_];
            if(_loc2_.entity.resourceType == param1)
            {
               this._fa7c4d3a90b994be712e246c.splice(_loc3_,0x5F500FC5 ^ -750787162 ^ 0x18B54E90 ^ -1797610254);
               this._94705dffefda14f608f85ccb.removeLocationItem(_loc2_.view as _b24d698d62126854674d50a8);
            }
            else
            {
               _loc3_++;
            }
         }
      }
      
      public function _1aa92192e9ddb1aa40cc5563(param1:Number, param2:Number, param3:int) : void
      {
         var item:_b4e9a07262330690b635623c = null;
         var x:Number = param1;
         var y:Number = param2;
         var distance:int = param3;
         item = null;
         var callback:Function = null;
         item = this._651ee62182cc5d0b665fce14(x,y,distance);
         if(item == null || !item.isCollectable)
         {
            return;
         }
         item._fe84755a7df931eec804efc0();
         item.isCollectable = false;
         if(this._01ec885bac3d6dfd540b1b51 is _c24229eda44b942058106fae)
         {
            callback = function(param1:_5e1bab759fcaea6d1f84faa7):void
            {
               if(param1 is ResponseOk)
               {
                  removeItem(item.entity);
               }
            };
            switch(item.entity.resourceType)
            {
               case _67282af25befe9778e5c8dd1.FISHCOINS.id:
                  §§push(0x4F9D6571 ^ -1763495575 ^ -825787394 ^ 0x17B92FE6);
                  break;
               case _67282af25befe9778e5c8dd1.FISHBUCKS.id:
                  §§push(0x6CD897AE ^ 0x4F3E69A5 ^ 0x329F1853 ^ 0x1179E659);
                  break;
               default:
                  §§push(0x6C844ABD ^ 0x6BF5B381 ^ -1403868133 ^ -1423747803);
            }
            switch(§§pop())
            {
               case 0:
                  GameSwf.instance.managerMoneyTree._2656cbce19f26e3b5c014b9c(item.entity.positionOriginal,callback);
                  break;
               case 1:
                  GameSwf.instance.managerMoneyTree._1e7bccca067076ffc310012b(item.entity.positionOriginal,callback);
            }
         }
         else
         {
            _dfa25706e58a240c1e33e5c6.locationExtension._c56c77ab235d896dae852856(item.entity.resourceType,item.entity.resourceId,item.entity.position);
         }
      }
      
      private function _651ee62182cc5d0b665fce14(param1:Number, param2:Number, param3:int) : _b4e9a07262330690b635623c
      {
         var _loc4_:_b4e9a07262330690b635623c = null;
         if(this._fa7c4d3a90b994be712e246c == null || this._fa7c4d3a90b994be712e246c.length == (0x5768ED92 ^ -1532390381 ^ -1889123770 ^ 0x7CA73BC7))
         {
            return null;
         }
         var _loc5_:_b4e9a07262330690b635623c = null;
         var _loc6_:Point = new Point(param1,param2);
         for each(_loc4_ in this._fa7c4d3a90b994be712e246c)
         {
            if(Point.distance(_loc4_.entity.position,_loc6_) < param3)
            {
               _loc5_ = _loc4_;
               break;
            }
         }
         return _loc5_;
      }
   }
}

