package com.ax3.fishao.utils
{
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.view.dialogs._6e3e496e7a4ab1988577523d;
   import com.ax3.fishao.view.wrappers._40858abc038fcd29a3aaacb1;
   import com.ax3.fishao.view.wrappers._767872a2ca68f8601a59876b;
   import com.ax3.fishao.view.wrappers.impl._0724ad266e88779612fd9d57;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel._0fbfa5db97af2c1935b22481;
   import flash.events.Event;
   
   public class _348e382085b4689106cdc054
   {
      
      private var _7ff9bf2536c4fa8aa7bce376:Vector.<_40858abc038fcd29a3aaacb1>;
      
      private var _ade45270c97393290243265c:Vector.<_767872a2ca68f8601a59876b>;
      
      private var _5c0535a8c518bbed67578d6e:Object;
      
      private var _91bc68dbc3e4c9775792129a:Number;
      
      private var _2dbbc9b56c81104ccc0ac7c9:Array = [];
      
      private var _2e7b11faaf620fe4105704b8:_7fcd7475de33f060b2bd0445;
      
      private var _2a069e2ed69bc84dac15d286:_7fcd7475de33f060b2bd0445;
      
      public function _348e382085b4689106cdc054(param1:Vector.<_40858abc038fcd29a3aaacb1>, param2:Vector.<_767872a2ca68f8601a59876b>)
      {
         super();
         this._7ff9bf2536c4fa8aa7bce376 = param1;
         this._ade45270c97393290243265c = param2;
         this.init();
      }
      
      public function get selectedTab() : _7fcd7475de33f060b2bd0445
      {
         return this._2a069e2ed69bc84dac15d286;
      }
      
      public function set currentTab(param1:_7fcd7475de33f060b2bd0445) : void
      {
         var _loc2_:int = 0x3ECFAA66 ^ -1835547134 ^ -545843409 ^ 0x1E84D073;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x60999514 ^ 0x5E165F8B ^ 0x6E464D8D ^ 0x3D622C2B))
            {
               case 0:
                  return;
               case 1:
                  if(this._2e7b11faaf620fe4105704b8 == param1)
                  {
                     _loc2_ = -1199930428 ^ -467491469 ^ -992906724 ^ -182255726;
                  }
                  else
                  {
                     _loc2_ = -694357814 ^ 0x4E2F9CD9 ^ 0x6B6A56D1 ^ -1636658695;
                  }
                  break;
               case 2:
                  this._2e7b11faaf620fe4105704b8 = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         var _loc1_:_7fcd7475de33f060b2bd0445 = null;
         this._5c0535a8c518bbed67578d6e = {};
         var _loc2_:Number = -1464781387 ^ 0x4D937199 ^ -203462234 ^ 0x16FD2D8A;
         while(_loc2_ < this._7ff9bf2536c4fa8aa7bce376.length)
         {
            _loc1_ = new _7fcd7475de33f060b2bd0445(this._7ff9bf2536c4fa8aa7bce376[_loc2_],this._ade45270c97393290243265c[_loc2_],this);
            this._5c0535a8c518bbed67578d6e[this._7ff9bf2536c4fa8aa7bce376[_loc2_].name] = _loc1_;
            _loc2_++;
         }
         this._91bc68dbc3e4c9775792129a = _0724ad266e88779612fd9d57(this._7ff9bf2536c4fa8aa7bce376[-756517289 ^ -2117458816 ^ 0x6CEF0EA4 ^ 0x3FCD5C72]).y - _0724ad266e88779612fd9d57(this._7ff9bf2536c4fa8aa7bce376[-448895629 ^ -1150415466 ^ -174633022 ^ -1413011673]).y;
         var _loc3_:_0fbfa5db97af2c1935b22481 = _0fbfa5db97af2c1935b22481(_7fcd7475de33f060b2bd0445(this._5c0535a8c518bbed67578d6e[_6e3e496e7a4ab1988577523d.USER_INFO_NAME]).tabPanel);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,_loc3_,_0fbfa5db97af2c1935b22481.TABS_LIST_UPDATE,this._ea8788b483437145ac5fa00f);
      }
      
      private function _ea8788b483437145ac5fa00f(param1:Event) : void
      {
         this._d886c30bf3f10095b4e83129();
      }
      
      public function _cfdf5a2911155c7c841ecedc(param1:String, param2:String, param3:_6b91a781d828662e84e05553) : void
      {
         var _loc4_:String = null;
         var _loc5_:_7fcd7475de33f060b2bd0445 = null;
         var _loc6_:Vector.<_7fcd7475de33f060b2bd0445> = new Vector.<_7fcd7475de33f060b2bd0445>();
         for(_loc4_ in this._5c0535a8c518bbed67578d6e)
         {
            _loc5_ = _7fcd7475de33f060b2bd0445(this._5c0535a8c518bbed67578d6e[_loc4_]);
            if(_loc4_ == param1)
            {
               this._2a069e2ed69bc84dac15d286 = _loc5_;
            }
            else
            {
               _loc6_.push(_loc5_);
            }
         }
         this._2a069e2ed69bc84dac15d286.active(true,_loc6_,param2,param3);
         this._d886c30bf3f10095b4e83129();
      }
      
      private function _d886c30bf3f10095b4e83129() : void
      {
         var _loc1_:Boolean = _0fbfa5db97af2c1935b22481(_7fcd7475de33f060b2bd0445(this._5c0535a8c518bbed67578d6e[_6e3e496e7a4ab1988577523d.USER_INFO_NAME]).tabPanel).showInventory;
         if(_loc1_)
         {
            this._45b952b1a9d1eb593414596e(_6e3e496e7a4ab1988577523d.INVENTORY_NAME,true);
         }
         else
         {
            this._45b952b1a9d1eb593414596e(_6e3e496e7a4ab1988577523d.INVENTORY_NAME,false);
         }
      }
      
      private function _45b952b1a9d1eb593414596e(param1:String, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = this._2dbbc9b56c81104ccc0ac7c9.indexOf(param1) >= (-630431683 ^ 0x100682CB ^ 0x48704B1D ^ -2112181781);
         var _loc5_:_0724ad266e88779612fd9d57 = _0724ad266e88779612fd9d57(_7fcd7475de33f060b2bd0445(this._5c0535a8c518bbed67578d6e[param1]).tabButton);
         if(param2 && _loc4_)
         {
            _loc5_.show();
            _loc3_ = this._91bc68dbc3e4c9775792129a;
            this._2dbbc9b56c81104ccc0ac7c9.splice(this._2dbbc9b56c81104ccc0ac7c9.indexOf(param1),-20566690 ^ 0x2225C42D ^ 0xE1686B ^ -603815655);
         }
         else
         {
            if(!(!param2 && !_loc4_))
            {
               return;
            }
            _loc5_.hide();
            _loc3_ = -this._91bc68dbc3e4c9775792129a;
            this._2dbbc9b56c81104ccc0ac7c9.push(param1);
         }
         var _loc6_:int = this._7ff9bf2536c4fa8aa7bce376.indexOf(_loc5_);
         var _loc7_:int = 0x10650A54 ^ 0x77E5044A ^ -1097075861 ^ -652477067;
         while(_loc7_ < this._7ff9bf2536c4fa8aa7bce376.length)
         {
            if(_loc7_ > _loc6_)
            {
               if(_0724ad266e88779612fd9d57(this._7ff9bf2536c4fa8aa7bce376[_loc7_]) != _0724ad266e88779612fd9d57(_7fcd7475de33f060b2bd0445(this._5c0535a8c518bbed67578d6e[_6e3e496e7a4ab1988577523d.REPORT_NAME]).tabButton))
               {
                  _0724ad266e88779612fd9d57(this._7ff9bf2536c4fa8aa7bce376[_loc7_]).y = _0724ad266e88779612fd9d57(this._7ff9bf2536c4fa8aa7bce376[_loc7_]).y + _loc3_;
               }
            }
            _loc7_++;
         }
      }
   }
}

