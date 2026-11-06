package com.ax3.fishao.locations.club_area
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.club_area.views._343a2873b29368b83ebeb686;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _1905259467717136435ce7db extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _966e66670fcd1152592ad6c5:_343a2873b29368b83ebeb686;
      
      public function _1905259467717136435ce7db()
      {
         super();
         this._966e66670fcd1152592ad6c5 = new _343a2873b29368b83ebeb686();
      }
      
      public function get controller() : _343a2873b29368b83ebeb686
      {
         return this._966e66670fcd1152592ad6c5;
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = null;
         super._d950ad5e456ef35dfb21d570(param1);
         var _loc3_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(param1.name)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_PLATE_FRESH:
               §§push(-1255589484 ^ -1509850690 ^ -190495849 ^ -410125379);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PLATE_SALT:
               §§push(0x14E04F0C ^ -1791358005 ^ 0x19F3CDB3 ^ -1742108299);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_CLUB_EMBLEM:
               §§push(-249071573 ^ -1898537733 ^ 0x562E74D1 ^ 0x29DF9003);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_CLUB_BANNER:
               §§push(0x32773D50 ^ -889733449 ^ 0x71D48AB8 ^ -1990981284);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_CLUB_TABLE:
               §§push(0x4F719875 ^ -1047656297 ^ 0x0D008134 ^ -2080435758);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_MONSTER_FISH:
               §§push(0x76986524 ^ -919471870 ^ 0x4061026E ^ -3629491);
               break;
            default:
               §§push(0x58A422F7 ^ 0x4BDB3EC6 ^ -222778950 ^ -507005555);
         }
         switch(§§pop())
         {
            case 0:
               _424a1f44ff05e52733e46eeb(_loc3_);
               this._966e66670fcd1152592ad6c5._253bc5b6d87f9cc01c119fc7(_loc3_);
               break;
            case 1:
               _424a1f44ff05e52733e46eeb(_loc3_);
               this._966e66670fcd1152592ad6c5._a0da3c91fb1dc6ef9bc84354(_loc3_);
               break;
            case 2:
               this._966e66670fcd1152592ad6c5._c52c67a4d8eb87bb6d1f9f34(_loc3_);
               break;
            case 3:
               _424a1f44ff05e52733e46eeb(_loc3_);
               this._966e66670fcd1152592ad6c5._853306c409c926ec4f9392aa(_loc3_);
               break;
            case 4:
               _424a1f44ff05e52733e46eeb(_loc3_);
               _loc2_ = Debug.assertProperty(_loc3_,_77ca96a94affdf1e9d31698c.EDOT_CLUB_EMBLEM);
               this._966e66670fcd1152592ad6c5._c52c67a4d8eb87bb6d1f9f34(_loc2_);
               break;
            case 5:
               _e58ba948a41fdded563972d3(_loc3_);
               this._966e66670fcd1152592ad6c5._6ef91c88871e4544cb0a3620(_loc3_);
         }
      }
   }
}

