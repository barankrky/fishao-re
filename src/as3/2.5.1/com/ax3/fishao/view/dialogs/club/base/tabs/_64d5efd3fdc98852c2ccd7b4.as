package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import flash.events.Event;
   
   public class _64d5efd3fdc98852c2ccd7b4 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _e3a34aed6a7a95aceb694c10:_1fe06f16c1019417067e1646;
      
      private var _1eb2c6f877b126cbd42ac3fe:String;
      
      private var _9dc501692084f4c7b73731b9:_b2c93fdfd042497d8959b2e8;
      
      private var _026ebb5200f66f28d9c3fa5c:Boolean;
      
      public function _64d5efd3fdc98852c2ccd7b4(param1:_b2c93fdfd042497d8959b2e8, param2:String)
      {
         this._9dc501692084f4c7b73731b9 = param1;
         this._1eb2c6f877b126cbd42ac3fe = param2;
         var _loc3_:_4862692dc966a951613dcaae = new _4862692dc966a951613dcaae();
         _loc3_.pageType = this._1eb2c6f877b126cbd42ac3fe;
         this._e3a34aed6a7a95aceb694c10 = new _1fe06f16c1019417067e1646(this,_loc3_,param2);
         super(this._e3a34aed6a7a95aceb694c10);
         this.init();
      }
      
      public function get type() : String
      {
         return this._1eb2c6f877b126cbd42ac3fe;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         this._e3a34aed6a7a95aceb694c10.isActive = param1;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this._026ebb5200f66f28d9c3fa5c = param1;
         this._e3a34aed6a7a95aceb694c10.isEnabled = this._026ebb5200f66f28d9c3fa5c;
      }
      
      public function set notifications(param1:int) : void
      {
         this._e3a34aed6a7a95aceb694c10.notificationsCount = param1;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:int = -1014147761 ^ -807458674 ^ 0x5A7BC499 ^ 0x54E80EE5;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1100965032 ^ -1547794734 ^ -170644916 ^ -355762053))
            {
               case 0:
                  if(!this._026ebb5200f66f28d9c3fa5c)
                  {
                     _loc3_ = -385142836 ^ 0x655964D4 ^ -320186841 ^ 0x6279AA80;
                  }
                  else
                  {
                     _loc3_ = -1005785890 ^ -358814773 ^ 0x3F1C94BD ^ 0x134D2414;
                  }
                  break;
               case 1:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_049_UI_Switch_tab);
                  this._9dc501692084f4c7b73731b9._c4d22385b80b659fb18fbc27(this._1eb2c6f877b126cbd42ac3fe);
                  return true;
               case 2:
                  return false;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._e3a34aed6a7a95aceb694c10._fc17178734ae7cc816dbcc2f(true);
      }
      
      public function _31e100dcdd321f4baab6c222(param1:int) : void
      {
         this._e3a34aed6a7a95aceb694c10._31e100dcdd321f4baab6c222(param1);
      }
   }
}

