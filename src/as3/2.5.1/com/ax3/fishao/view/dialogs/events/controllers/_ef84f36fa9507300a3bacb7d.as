package com.ax3.fishao.view.dialogs.events.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.events.views._59de16448c46e240a6df153c;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.events.data.EventMemberInfo;
   
   public class _ef84f36fa9507300a3bacb7d extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _3cd266e18790c0b019484be7:_59de16448c46e240a6df153c;
      
      private var _20271c0af48968bdb2a68b86:Array;
      
      private var _011daa6e464603ba31279e25:uint;
      
      private var _2b6282246821f39b4b006bd7:uint;
      
      public function _ef84f36fa9507300a3bacb7d(param1:DisplayObjectContainer)
      {
         this._3cd266e18790c0b019484be7 = new _59de16448c46e240a6df153c(this,param1);
         super(this._3cd266e18790c0b019484be7);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         switch(param1)
         {
            case this._3cd266e18790c0b019484be7.buttonPrev:
               §§push(-324226650 ^ -1169832795 ^ 0x26698345 ^ 0x7080F646);
               break;
            case this._3cd266e18790c0b019484be7.buttonNext:
               §§push(-377189868 ^ 0x1C79833A ^ 0x259E0B05 ^ -798817750);
               break;
            default:
               §§push(-1886554803 ^ -952791616 ^ 0xEFE46F ^ 0x48571CE0);
         }
         switch(§§pop())
         {
            case 0:
               --this._011daa6e464603ba31279e25;
               this._315a18527758fe1ff8a217da();
               this._549a1c5966c713c0ea4f51e8();
               break;
            case 1:
               ++this._011daa6e464603ba31279e25;
               this._315a18527758fe1ff8a217da();
               this._549a1c5966c713c0ea4f51e8();
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._20271c0af48968bdb2a68b86 = [];
         this._011daa6e464603ba31279e25 = 0x490F8A13 ^ -1647832963 ^ -1908825066 ^ 0x5AFE3E79;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0x2749A5DD ^ -1435630332 ^ -49372432 ^ 0x70290229;
         var _loc5_:EventMemberInfo = null;
         var _loc6_:_dad0cfb157a8f750b2566b32 = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_START:
               §§push(-806608658 ^ -1526451312 ^ -2094257997 ^ -373015603);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_MEMBERS:
               §§push(-1082318360 ^ -2089484823 ^ -1779777992 ^ -1444715976);
               break;
            default:
               §§push(0x6E4C6309 ^ 0x47FFD711 ^ 0x01E7B4C5 ^ 0x285400DF);
         }
         switch(§§pop())
         {
            case 0:
               this._3cd266e18790c0b019484be7.eventType = GameSwf.instance.managerEvents.eventCurrent.type;
               this._011daa6e464603ba31279e25 = 0x79A1E83F ^ 0x12FABB7F ^ -2102986590 ^ -369251357;
               this._2b6282246821f39b4b006bd7 = -1024807088 ^ -865262375 ^ 0x75AB9D43 ^ 0x7B2C16CB;
               this._315a18527758fe1ff8a217da();
               this._549a1c5966c713c0ea4f51e8();
               break;
            case 1:
               this._2bd5bdddd17442fe9456680a();
               _loc2_ = [];
               _loc3_ = GameSwf.instance.managerEvents.members;
               this._011daa6e464603ba31279e25 = 0x64533AA5 ^ 0x6F49D9FF ^ 0x06C4D4FD ^ 0x0DDE37A6;
               _loc4_ = 0x4C801FE8 ^ 0x53E85FDF ^ -1786302447 ^ -1964019674;
               while(_loc4_ < _loc3_.length)
               {
                  _loc5_ = _loc3_[_loc4_];
                  _loc6_ = new _dad0cfb157a8f750b2566b32(_loc5_);
                  this._20271c0af48968bdb2a68b86.push(_loc6_);
                  _loc2_.push(_loc6_.view);
                  if(_loc6_.isCurrent)
                  {
                     this._011daa6e464603ba31279e25 = Math.ceil((_loc4_ + (0x175F5E75 ^ -633846630 ^ 0x5B1B488D ^ -1770237341)) / this._3cd266e18790c0b019484be7.itemsOnPage);
                  }
                  _loc4_++;
               }
               this._3cd266e18790c0b019484be7.items = _loc2_;
               this._2b6282246821f39b4b006bd7 = Math.max(Math.ceil(this._20271c0af48968bdb2a68b86.length / this._3cd266e18790c0b019484be7.itemsOnPage),-2069783538 ^ -766226160 ^ -780336468 ^ -2021077069);
               this._315a18527758fe1ff8a217da();
               this._549a1c5966c713c0ea4f51e8();
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function _2bd5bdddd17442fe9456680a() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         for each(_loc1_ in this._20271c0af48968bdb2a68b86)
         {
            _loc1_.view.source.parent.removeChild(_loc1_.view.source);
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         this._20271c0af48968bdb2a68b86.length = 0x7F18F21B ^ -39758767 ^ 0x1115B57F ^ -1817439435;
      }
      
      private function _315a18527758fe1ff8a217da() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         var _loc2_:uint = uint(0x6BE43BA4 ^ -73315814 ^ -1610416577 ^ 0x30478F81);
         var _loc3_:int = -1992895260 ^ -209106279 ^ 0x6B91514C ^ 0x112ECF31;
         while(_loc3_ < this._20271c0af48968bdb2a68b86.length)
         {
            _loc1_ = this._20271c0af48968bdb2a68b86[_loc3_];
            _loc2_ = Math.ceil((_loc3_ + (-470790954 ^ -324091570 ^ -1717932730 ^ -1765482273)) / this._3cd266e18790c0b019484be7.itemsOnPage);
            if(_loc2_ == this._011daa6e464603ba31279e25)
            {
               _loc1_.view.show();
            }
            else
            {
               _loc1_.view.hide();
            }
            _loc3_++;
         }
         var _loc4_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_PAGE);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,this._011daa6e464603ba31279e25);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,this._2b6282246821f39b4b006bd7);
         this._3cd266e18790c0b019484be7.labelPage.text = _loc4_;
      }
      
      private function _549a1c5966c713c0ea4f51e8() : void
      {
         this._3cd266e18790c0b019484be7.buttonNext.enabled = this._011daa6e464603ba31279e25 < this._2b6282246821f39b4b006bd7;
         this._3cd266e18790c0b019484be7.buttonPrev.enabled = this._011daa6e464603ba31279e25 > (-759406670 ^ -140543527 ^ -1412996322 ^ -1897642636);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._2bd5bdddd17442fe9456680a();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

