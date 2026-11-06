package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.holidays.model.christmas._398e0919975e4cb37bc68285;
   import com.ax3.fishao.view.dialogs.holidays.model.halloween._4f48dd375cfd8fe59cb2be02;
   import com.ax3.fishao.view.dialogs.holidays.model.valentine._3c7949247bd135e20c0edce8;
   
   public class _52645f77443f490b6b19dcd3
   {
      
      public function _52645f77443f490b6b19dcd3()
      {
         super();
      }
      
      public static function _d52181b1f788d33aa171ba85(param1:Object) : _304106890422442ac0cb20b8
      {
         var _loc2_:_304106890422442ac0cb20b8 = null;
         switch(param1[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劂剝努劖劇前刖刏勆列劷刭刔勎勔剾","刬剽勞劓勼划勊勷刬勏剉勱劢剗劅务")])
         {
            case _563cabc253cc273ff4b017b3.EHT_CHRISTMAS:
               §§push(-917103061 ^ -604528735 ^ -163820210 ^ -459420476);
               break;
            case _563cabc253cc273ff4b017b3.EHT_HALLOWEEN:
               §§push(-895417716 ^ -1203037350 ^ 0x3D0FF988 ^ 0x4FE5E05F);
               break;
            case _563cabc253cc273ff4b017b3.EHT_VALENTINE:
               §§push(0x4724248D ^ -359921913 ^ 0x41D75B36 ^ -327190338);
               break;
            default:
               §§push(-1081460480 ^ -1961746340 ^ 0x32D2F2AD ^ 0x064AEBF2);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _398e0919975e4cb37bc68285();
               break;
            case 1:
               _loc2_ = new _4f48dd375cfd8fe59cb2be02();
               break;
            case 2:
               _loc2_ = new _3c7949247bd135e20c0edce8();
               break;
            default:
               Debug.assert(false);
         }
         _loc2_.deserialize(param1);
         return _loc2_;
      }
   }
}

