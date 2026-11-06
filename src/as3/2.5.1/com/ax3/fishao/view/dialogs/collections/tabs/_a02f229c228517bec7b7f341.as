package com.ax3.fishao.view.dialogs.collections.tabs
{
   import com.ax3.fishao.core._d9fcc7126f55b8a550ecc5ee;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _a02f229c228517bec7b7f341 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _92b77c5e07c3149c489c8ddc:DisplayObjectContainer = new Sprite();
      
      private var _16cf2d86c3ea48464a507fbe:Array;
      
      private var _05ee4fa0363b7934e2420190:uint;
      
      public function _a02f229c228517bec7b7f341(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._92b77c5e07c3149c489c8ddc);
         this.init();
      }
      
      public function get items() : Array
      {
         return this._16cf2d86c3ea48464a507fbe;
      }
      
      public function set tabActiveIndex(param1:uint) : void
      {
         this._05ee4fa0363b7934e2420190 = param1;
         this._0327f7c43581128048930504();
      }
      
      public function get tabActiveIndex() : uint
      {
         return this._05ee4fa0363b7934e2420190;
      }
      
      public function set tabActiveLabel(param1:String) : void
      {
         var _loc2_:int = -1416166691 ^ 0x25A46449 ^ -404917896 ^ 0x69EE17EC;
         var _loc3_:int = -132533857 ^ -2130546232 ^ 0x2ACECEB9 ^ -100295773;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x2E5A1667 ^ -229056594 ^ 0x594024D5 ^ 0x2C927851))
            {
               case 0:
                  this._05ee4fa0363b7934e2420190 = 0x67757ADA ^ 0x461FD089 ^ -953459929 ^ -431885964;
                  _loc2_ = 0x6A0BBFEA ^ -854430740 ^ 0x56E8D01E ^ -235863016;
                  _loc3_ = 0x3E6F36E7 ^ -1229725060 ^ -1306335148 ^ -1825658490;
                  break;
               case 1:
                  if((this._16cf2d86c3ea48464a507fbe[_loc2_] as _49337d669faa264b4dff0f10).label == param1)
                  {
                     _loc3_ = 0x617A5928 ^ 0x2771A4C9 ^ -1627711206 ^ 0x712071B3;
                  }
                  else
                  {
                     _loc3_ = -304277983 ^ 0x19CEA0FA ^ 0x7C6D6B05 ^ 0x21AE4890;
                  }
                  break;
               case 2:
                  this._0327f7c43581128048930504();
                  return;
               case 3:
                  _loc2_++;
                  _loc3_ = -1276298278 ^ 0x62A93F4C ^ 0x6CD1B2AE ^ 0x14452371;
                  break;
               case 4:
                  if(_loc2_ >= this._16cf2d86c3ea48464a507fbe.length)
                  {
                     _loc3_ = -272999860 ^ -650817210 ^ 0x28ACADA5 ^ -1208798240;
                  }
                  else
                  {
                     _loc3_ = -474859931 ^ -1942331085 ^ -1624296381 ^ 0x5977F659;
                  }
                  break;
               case 5:
                  this._05ee4fa0363b7934e2420190 = _loc2_;
                  _loc3_ = -1616236247 ^ -823279130 ^ -1898327306 ^ 0x764EB777;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get tabActiveLabel() : String
      {
         return (this._16cf2d86c3ea48464a507fbe[this._05ee4fa0363b7934e2420190] as _49337d669faa264b4dff0f10).label;
      }
      
      private function init() : void
      {
         this._16cf2d86c3ea48464a507fbe = [];
         this._05ee4fa0363b7934e2420190 = 0x2C32DB07 ^ -104874488 ^ 0x42907E50 ^ -1759700129;
      }
      
      public function _7bf258038fc042efd3588c8b(param1:String) : void
      {
         var _loc2_:_49337d669faa264b4dff0f10 = new _49337d669faa264b4dff0f10(controller);
         this._92b77c5e07c3149c489c8ddc.addChildAt(_loc2_.source,0x3C28CC57 ^ 0x0E02291A ^ 0x1ABD9EA4 ^ 0x28977BE9);
         _loc2_.label = param1;
         this._16cf2d86c3ea48464a507fbe.push(_loc2_);
         this._41887708b2a5ad8d9f71219a();
         this._0327f7c43581128048930504();
      }
      
      public function _e139c99b48edb08e802d6e90(param1:uint) : void
      {
         var _loc2_:_49337d669faa264b4dff0f10 = this._16cf2d86c3ea48464a507fbe[param1];
         this._92b77c5e07c3149c489c8ddc.removeChild(_loc2_.source);
         this._16cf2d86c3ea48464a507fbe.splice(param1,0x7E342CBE ^ 0x1FECD29A ^ 0x24183F33 ^ 0x45C0C116);
         this._41887708b2a5ad8d9f71219a();
         this._0327f7c43581128048930504();
      }
      
      private function _41887708b2a5ad8d9f71219a() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:_49337d669faa264b4dff0f10 = null;
         _loc1_ = 0x05ED650C ^ 0x6762FB4F ^ -947207863 ^ 0x5AFAA0E3;
         var _loc3_:Number = _loc1_;
         var _loc4_:int = 0x120D59BB ^ 0x2D3CA98F ^ 0x2BBBA197 ^ 0x148A51A3;
         while(_loc4_ < this._16cf2d86c3ea48464a507fbe.length)
         {
            _loc2_ = this._16cf2d86c3ea48464a507fbe[_loc4_];
            _loc2_.source.x = _loc3_;
            _loc3_ += _loc2_.source.width + _loc1_;
            _loc4_++;
         }
      }
      
      private function _0327f7c43581128048930504() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:_49337d669faa264b4dff0f10 = null;
         var _loc5_:int = 0x7AE4019E ^ 0x3B3BABB3 ^ 0x4A6B6825 ^ 0x0BB4C208;
         while(_loc5_ < this._16cf2d86c3ea48464a507fbe.length)
         {
            _loc1_ = _loc5_ + (0x6AD719D1 ^ -1224719271 ^ -1047602472 ^ 0x1C598751) < this._16cf2d86c3ea48464a507fbe.length;
            _loc2_ = _loc5_ + (0x79815954 ^ -1469235121 ^ -251583968 ^ 0x20ED3B3A) == this._05ee4fa0363b7934e2420190;
            _loc3_ = _loc5_ == this._05ee4fa0363b7934e2420190;
            _loc4_ = this._16cf2d86c3ea48464a507fbe[_loc5_];
            _loc4_._a5e1b14cd3919356c2d472ce(_loc3_,_loc1_,_loc2_);
            _loc5_++;
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:_d9fcc7126f55b8a550ecc5ee = null;
         for each(_loc1_ in this._16cf2d86c3ea48464a507fbe)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         this._16cf2d86c3ea48464a507fbe = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

