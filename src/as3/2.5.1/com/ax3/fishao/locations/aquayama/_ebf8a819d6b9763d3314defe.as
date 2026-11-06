package com.ax3.fishao.locations.aquayama
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.objects._617ed8d075488c781d6d73f5;
   import com.ax3.fishao.locations.with_club_entrance._2a5b0677926a7fd9cc6d1019;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   
   public class _ebf8a819d6b9763d3314defe extends _2a5b0677926a7fd9cc6d1019
   {
      
      private var _075c8083b20c4135f77ad522:_617ed8d075488c781d6d73f5;
      
      public function _ebf8a819d6b9763d3314defe()
      {
         super();
      }
      
      public function get viewSecretEntranceWall() : _617ed8d075488c781d6d73f5
      {
         return this._075c8083b20c4135f77ad522;
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(-62931990 ^ 0x4BB432 ^ -1357779467 ^ 0x5365E4D5,0x35C7C24E ^ -302940037 ^ 0x56C2B56E ^ -1896548473);
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         switch(_77ca96a94affdf1e9d31698c.EDOT_SPECIAL_SECRET_ENTRANCE_WALL === _loc2_ ? 0x5276076A ^ -418869118 ^ 0x3388C530 ^ -2030677288 : 0x29BC9E1E ^ -1088841584 ^ 0x658D7C3B ^ -215450956)
         {
            case 0:
               this._075c8083b20c4135f77ad522 = new _617ed8d075488c781d6d73f5(param1 as DisplayObjectContainer);
               this._075c8083b20c4135f77ad522.isEnabled = true;
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = -1928174553 ^ -1478658481 ^ 0x18BD8289 ^ 0x7A74161E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4B8B7C6E ^ 0x494BFA54 ^ -861909223 ^ -2040115236))
            {
               case 0:
                  if(this._075c8083b20c4135f77ad522 != null)
                  {
                     _loc1_ = 0x10E31504 ^ 0x031DA47D ^ 0x28EA8329 ^ 0x7312B4AE;
                  }
                  else
                  {
                     _loc1_ = -967122834 ^ 0x126D4618 ^ 0x725EDBAD ^ -294651098;
                  }
                  break;
               case 1:
                  this._075c8083b20c4135f77ad522._90eac9ca552fe54c2ca0299f();
                  this._075c8083b20c4135f77ad522 = null;
                  _loc1_ = 0x17F19343 ^ -67193701 ^ -1816639739 ^ 0x37B1E620;
                  break;
               case 2:
                  super.destroy();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

