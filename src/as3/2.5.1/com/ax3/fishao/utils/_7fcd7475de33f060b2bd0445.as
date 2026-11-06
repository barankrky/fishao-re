package com.ax3.fishao.utils
{
   import com.ax3.fishao.view.wrappers._40858abc038fcd29a3aaacb1;
   import com.ax3.fishao.view.wrappers._767872a2ca68f8601a59876b;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   
   public class _7fcd7475de33f060b2bd0445
   {
      
      private var _2784c571ef37508702482e12:_40858abc038fcd29a3aaacb1;
      
      private var _16c0cd659f024e5cd521d384:_767872a2ca68f8601a59876b;
      
      private var _c0d232a59b6faee757d0abd7:Vector.<_7fcd7475de33f060b2bd0445>;
      
      private var _title:String;
      
      private var _9bccc922dae75b413bf19e31:_6b91a781d828662e84e05553;
      
      private var _c540fb86531d1779a242758d:_348e382085b4689106cdc054;
      
      public function _7fcd7475de33f060b2bd0445(param1:_40858abc038fcd29a3aaacb1, param2:_767872a2ca68f8601a59876b, param3:_348e382085b4689106cdc054)
      {
         super();
         this._2784c571ef37508702482e12 = param1;
         this._16c0cd659f024e5cd521d384 = param2;
         this._c540fb86531d1779a242758d = param3;
      }
      
      public function active(param1:Boolean, param2:Vector.<_7fcd7475de33f060b2bd0445>, param3:String, param4:_6b91a781d828662e84e05553) : void
      {
         var _loc5_:int = -1638582672 ^ 0x6C8F4745 ^ -1194474508 ^ -988530081;
         loop0:
         while(true)
         {
            switch(_loc5_ ^ (-441667932 ^ -1669483544 ^ 0x4A934A77 ^ -1136533600))
            {
               case 0:
                  this._c0d232a59b6faee757d0abd7 = null;
                  this._2784c571ef37508702482e12.active = false;
                  this._16c0cd659f024e5cd521d384.visible = false;
                  _loc5_ = -998764082 ^ -302589665 ^ -1562044761 ^ 0x046856EE;
                  break;
               case 1:
                  _loc5_ = 0x673835DA ^ 0x54BDA832 ^ 0x547184 ^ -1127062284;
                  break;
               case 2:
                  this._c0d232a59b6faee757d0abd7 = param2;
                  this._title = param3;
                  this._9bccc922dae75b413bf19e31 = param4;
                  if(this._16c0cd659f024e5cd521d384.needUpdate)
                  {
                     _loc5_ = -1919678635 ^ -637768918 ^ -295213821 ^ 0x350C81E1;
                  }
                  else
                  {
                     _loc5_ = 0x7E61C196 ^ -1657374168 ^ -1447604123 ^ -974953660;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  this._188ca7f0191ddbb5a07e878f(this._16c0cd659f024e5cd521d384);
                  _loc5_ = 0x7F3321D1 ^ -676911381 ^ 0x19DBB1E3 ^ 0x3E4C3E43;
                  break;
               case 5:
                  if(param1)
                  {
                     _loc5_ = 0x0E3B5DF8 ^ -549338727 ^ 0x241496FF ^ 0x7A6D8207;
                  }
                  else
                  {
                     _loc5_ = -1248189366 ^ -1527250490 ^ -1283685673 ^ 0x2D1D2FC0;
                  }
                  break;
               case 6:
                  this._16c0cd659f024e5cd521d384.update(this._188ca7f0191ddbb5a07e878f);
                  _loc5_ = -2057465230 ^ -455207066 ^ 0x223E26E0 ^ -859952274;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _188ca7f0191ddbb5a07e878f(param1:_767872a2ca68f8601a59876b) : void
      {
         var _loc2_:_7fcd7475de33f060b2bd0445 = null;
         if(this._c540fb86531d1779a242758d.selectedTab != this)
         {
            return;
         }
         if(this._c0d232a59b6faee757d0abd7 != null)
         {
            for each(_loc2_ in this._c0d232a59b6faee757d0abd7)
            {
               _loc2_.active(false,null,null,null);
            }
         }
         if(this._9bccc922dae75b413bf19e31 != null && this._title != null)
         {
            this._9bccc922dae75b413bf19e31.text = this._title;
         }
         this._2784c571ef37508702482e12.active = true;
         this._16c0cd659f024e5cd521d384.visible = true;
         this._c540fb86531d1779a242758d.currentTab = this;
      }
      
      public function get tabPanel() : _767872a2ca68f8601a59876b
      {
         return this._16c0cd659f024e5cd521d384;
      }
      
      public function get tabButton() : _40858abc038fcd29a3aaacb1
      {
         return this._2784c571ef37508702482e12;
      }
   }
}

