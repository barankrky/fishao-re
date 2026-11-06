package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.currency
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._60d64d32c61de9fe092aecc7;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._c09200cfbfabf4d55af08be2;
   
   public class _8bf346648b0baa08d5e12dc6 extends _60d64d32c61de9fe092aecc7
   {
      
      private var _482db66a3efa6f57c8ba2600:int;
      
      public function _8bf346648b0baa08d5e12dc6()
      {
         super();
      }
      
      public function get amount() : int
      {
         return this._482db66a3efa6f57c8ba2600;
      }
      
      override public function get translationWheel() : String
      {
         return this._482db66a3efa6f57c8ba2600.toString();
      }
      
      override public function get translationUserTop() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = "";
         switch(_type)
         {
            case _c09200cfbfabf4d55af08be2.EWOFRT_ENERGY:
               §§push(0x6C098963 ^ -672449043 ^ -630922262 ^ 0x61865764);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_EXP:
               §§push(0x4A8B9A6C ^ -1406370135 ^ -1497869857 ^ 0x401FB51B);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHBUCKS:
               §§push(0x6AA4D291 ^ 0x5406A463 ^ -860586709 ^ -233436197);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_FEW:
               §§push(0x5D214D99 ^ 0x667A4C3F ^ -495028819 ^ -651856888);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_MANY:
               §§push(-857168440 ^ -521509156 ^ -1295159124 ^ -1630555204);
               break;
            default:
               §§push(-809842363 ^ 0x22FF7428 ^ -1591622869 ^ 0x4C647E43);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = _85b2141a2303f6545d411d7a._acc301d3afd9fd5967dab2ef(_67282af25befe9778e5c8dd1.ENERGY.name);
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_loc2_);
               break;
            case 1:
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_EXPERIENCE);
               break;
            case 2:
               _loc2_ = _85b2141a2303f6545d411d7a._acc301d3afd9fd5967dab2ef(_67282af25befe9778e5c8dd1.FISHBUCKS.name);
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_loc2_);
               break;
            case 3:
            case 4:
               _loc2_ = _85b2141a2303f6545d411d7a._acc301d3afd9fd5967dab2ef(_67282af25befe9778e5c8dd1.FISHCOINS.name);
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_loc2_);
         }
         _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_USER_TOP_RESOURCE);
         return _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_RESOURCE,_loc3_);
      }
      
      override public function get translationUserBottom() : String
      {
         var _loc1_:String = "";
         switch(_type)
         {
            case _c09200cfbfabf4d55af08be2.EWOFRT_ENERGY:
               §§push(-16900200 ^ 0x23C5C514 ^ 0x646CEBAD ^ -1185468127);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHBUCKS:
               §§push(0x05495513 ^ -1098691312 ^ 0x22064E14 ^ -1714661866);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_FEW:
               §§push(0x6D918DE7 ^ 0x2D71C036 ^ -1622173150 ^ -542124047);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_MANY:
               §§push(-516867250 ^ 0x099E571F ^ -1937239011 ^ 0x6427784F);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_EXP:
               §§push(0x357A3DDB ^ 0x592075C9 ^ 0x4F0EBFB6 ^ 0x2354F7A0);
               break;
            default:
               §§push(-1605136181 ^ 0x79EE2B5E ^ -624927803 ^ 0x037DE055);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
               _loc1_ = this._482db66a3efa6f57c8ba2600.toString();
               break;
            case 4:
               _loc1_ = this._482db66a3efa6f57c8ba2600.toString() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揩捥提捗捾揎挄揸挀揨","揂描挪掯掱挋捎捲挐揀掕掌挎掱揍揽") + _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_COMMON_EXP);
         }
         return _loc1_;
      }
      
      override public function get imageUrl() : String
      {
         return "";
      }
      
      override public function _08fdd280d24dd2694e72efa7(param1:Object) : void
      {
         super._08fdd280d24dd2694e72efa7(param1);
         this._482db66a3efa6f57c8ba2600 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("კჯဝႾဎႏႦႲა်ႿႼၬოနှဂჾჄဋ","ဥၘႥႷ჈ႃთჶႰჩ႗႔ၿဪდဘ"));
      }
      
      override public function _ec8f265d7f3a1a80b3421096(param1:Object) : void
      {
         super._ec8f265d7f3a1a80b3421096(param1);
         this._482db66a3efa6f57c8ba2600 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ျႛမၹႢႨဏယႷဌႍဖტၔ၏ჟჴၮႁၴ","ဨၪჃၑၭဟႊეႭာႚ၂ၠ၀ဧႸ"));
      }
   }
}

