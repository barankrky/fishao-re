package com.ax3.fishao.locations.items.controller
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.items.model._4aa243954966c493c452eb64;
   import com.ax3.fishao.locations.items.view._4c8720d38ac962eb44dcf354;
   import com.ax3.fishao.locations.items.view._5dc08f7a5b933160ce8e8a73;
   import com.ax3.fishao.locations.items.view._aa15197dc6612cd955e37fee;
   import com.ax3.fishao.locations.items.view._b24d698d62126854674d50a8;
   import com.ax3.fishao.locations.items.view._da9b2b980acbf526045ba14a;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   
   public class _b4e9a07262330690b635623c extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _e5939d290fbde95fc472c177:_b24d698d62126854674d50a8 = this._cc3f47b1646053fd8d54ebf2();
      
      private var _e54dd1daac17fa553feac345:_4aa243954966c493c452eb64;
      
      private var _783aff6212ffef7e58b18e08:Boolean;
      
      public function _b4e9a07262330690b635623c(param1:_4aa243954966c493c452eb64)
      {
         this._e54dd1daac17fa553feac345 = param1;
         super(this._e5939d290fbde95fc472c177);
         this.init();
      }
      
      public function get entity() : _4aa243954966c493c452eb64
      {
         return this._e54dd1daac17fa553feac345;
      }
      
      public function get isCollectable() : Boolean
      {
         return this._783aff6212ffef7e58b18e08;
      }
      
      public function set isCollectable(param1:Boolean) : void
      {
         this._783aff6212ffef7e58b18e08 = param1;
      }
      
      private function init() : void
      {
         this._783aff6212ffef7e58b18e08 = true;
         this._e5939d290fbde95fc472c177.source.x = this._e54dd1daac17fa553feac345.position.x;
         this._e5939d290fbde95fc472c177.source.y = this._e54dd1daac17fa553feac345.position.y;
      }
      
      private function _cc3f47b1646053fd8d54ebf2() : _b24d698d62126854674d50a8
      {
         var _loc1_:_b24d698d62126854674d50a8 = null;
         switch(this._e54dd1daac17fa553feac345.resourceType)
         {
            case _67282af25befe9778e5c8dd1.FISHBUCKS.id:
               §§push(-1836866629 ^ -6801763 ^ 0x20BEB552 ^ 0x4DA52074);
               break;
            case _67282af25befe9778e5c8dd1.FISHCOINS.id:
               §§push(-256028164 ^ 0x694290EE ^ -484778311 ^ 0x7AE51FAA);
               break;
            case _67282af25befe9778e5c8dd1.FOSSIL.id:
               §§push(-1018957885 ^ 0x768C1DAE ^ 0x14A76276 ^ -1586982887);
               break;
            case _67282af25befe9778e5c8dd1.FRUIT.id:
               §§push(0x53E6DF9B ^ 0x7179D9D7 ^ -1733438258 ^ -1171074431);
               break;
            default:
               §§push(-905375028 ^ 0x58BF8963 ^ -264525659 ^ 0x628D330E);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = new _aa15197dc6612cd955e37fee(this);
               break;
            case 1:
               _loc1_ = new _5dc08f7a5b933160ce8e8a73(this);
               break;
            case 2:
               _loc1_ = new _4c8720d38ac962eb44dcf354(this);
               break;
            case 3:
               _loc1_ = new _da9b2b980acbf526045ba14a(this,this._e54dd1daac17fa553feac345.resourceId);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴌ႓ၳ჉ეၳႼၷ၏မ၁ၙဨၹၙဖကႃ၃ႍႽლჄဖჍႧီჳ჏ခჩსၜၸၩႨ၆ნ၄ၾၽကႌဖညႸႺჽအ႘ဃဴၑၺစႷႀრယ჎რႈခဂႋဦშၒးႈႏဘႛႴူ၄ღႠႬდ႔ჴီႷဂဓႡჁၘႷ၃Ⴘ႓ტႃၟၹუ჌Ⴍ","ၺჟဴဌဵဎ၄Ⴋ၌ႚ၊჈ှၽჴჩ") + this._e54dd1daac17fa553feac345.resourceType);
         }
         return _loc1_;
      }
      
      public function _fe84755a7df931eec804efc0() : void
      {
         var _loc1_:_c5aa52fca149ae6f0be6dc5b = null;
         switch(this._e54dd1daac17fa553feac345.resourceType)
         {
            case _67282af25befe9778e5c8dd1.FISHBUCKS.id:
               §§push(-1127372914 ^ -564590309 ^ -572614569 ^ -1085655358);
               break;
            case _67282af25befe9778e5c8dd1.FISHCOINS.id:
               §§push(-416144600 ^ -83014362 ^ -1868171059 ^ -1936025918);
               break;
            case _67282af25befe9778e5c8dd1.FOSSIL.id:
               §§push(0x452EBA3F ^ -1835145431 ^ 0x54A7503C ^ -2095837912);
               break;
            case _67282af25befe9778e5c8dd1.FRUIT.id:
               §§push(-270500129 ^ -609702155 ^ -303287961 ^ -643505842);
               break;
            default:
               §§push(0x317AE4BE ^ -1495923218 ^ 0x706AF725 ^ -406448527);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               _loc1_ = _3a8a2602dcf9bf49b62e62af.SFX_060_UI_Fish_coin;
               break;
            case 2:
               _loc1_ = _3a8a2602dcf9bf49b62e62af.SFX_075_UI_Fossil_collect;
               break;
            case 3:
               _loc1_ = _3a8a2602dcf9bf49b62e62af.SFX_074_UI_Fruit_collect;
         }
         if(_loc1_ != null)
         {
            _3a8a2602dcf9bf49b62e62af.play(_loc1_);
         }
      }
   }
}

