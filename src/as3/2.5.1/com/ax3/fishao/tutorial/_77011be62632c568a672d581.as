package com.ax3.fishao.tutorial
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.tutorial.common.common_a._4f4b5b90e2102a8adf6cbf43;
   import com.ax3.fishao.tutorial.common.common_a._8dd7cce6214a31850e3ab1bc;
   import com.ax3.fishao.tutorial.common.common_b._3f40cffb9a873c7e08bd8a53;
   import com.ax3.fishao.tutorial.common.common_b._675d6115fd3b584c264d2f86;
   import com.ax3.fishao.tutorial.simple.bob._911396e5848b3a95f0b1708f;
   import com.ax3.fishao.tutorial.simple.change_character._45075d852bcc8307c8e0a686;
   import com.ax3.fishao.tutorial.simple.decoration._09b4f9fefee5ccec1d23530b;
   import com.ax3.fishao.tutorial.simple.fish_market._d539d3255e80ca3366eef77c;
   
   public class _77011be62632c568a672d581
   {
      
      public function _77011be62632c568a672d581()
      {
         super();
      }
      
      public static function _ea2a7d4bf3314f5a963d8519(param1:Object) : _9b5482b3978b7abe1547abb8
      {
         var _loc2_:_9b5482b3978b7abe1547abb8 = null;
         var _loc3_:String = param1[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳剛勺剏剦勻勳剮券刬勲勼勛募勸劙","列勚勽剖劆刹勷刀刪剬剺刉劗刁勦勅")];
         switch(_loc3_)
         {
            case _3810c68698c1b61dede7885f.ETT_COMMON_A_GUEST:
               §§push(0x1B0DC01C ^ -34066591 ^ -464056113 ^ 0x02A2FFB2);
               break;
            case _3810c68698c1b61dede7885f.ETT_COMMON_A_REGISTERED:
               §§push(-456655888 ^ 0x5F25D347 ^ 0x0D900D83 ^ -1234033355);
               break;
            case _3810c68698c1b61dede7885f.ETT_COMMON_B_GUEST:
               §§push(0x52EBB998 ^ -862747597 ^ -821520540 ^ 0x5170AACD);
               break;
            case _3810c68698c1b61dede7885f.ETT_COMMON_B_REGISTERED:
               §§push(-1893588877 ^ 0x797116A8 ^ -791818116 ^ 0x269EE6A4);
               break;
            case _3810c68698c1b61dede7885f.ETT_DECORATION:
               §§push(0x63035B3B ^ 0x4FC3B106 ^ 0x0C824DA8 ^ 0x2042A791);
               break;
            case _3810c68698c1b61dede7885f.ETT_BOB_GAME:
               §§push(0x6D4E3CC1 ^ 0x63D41F2D ^ 0x31729490 ^ 0x3FE8B779);
               break;
            case _3810c68698c1b61dede7885f.ETT_FISH_MARKET:
               §§push(0x036FF7E8 ^ 0x5F5508AD ^ 0x79B23742 ^ 0x2588C801);
               break;
            case _3810c68698c1b61dede7885f.ETT_CHANGE_CHARACTER:
               §§push(0x1B512108 ^ -2105799228 ^ 0x3909751E ^ -1608230443);
               break;
            default:
               §§push(0x4989120F ^ -764666433 ^ -1165793701 ^ 0x216669E3);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _4f4b5b90e2102a8adf6cbf43();
               break;
            case 1:
               _loc2_ = new _8dd7cce6214a31850e3ab1bc();
               break;
            case 2:
               _loc2_ = new _3f40cffb9a873c7e08bd8a53();
               break;
            case 3:
               _loc2_ = new _675d6115fd3b584c264d2f86();
               break;
            case 4:
               _loc2_ = new _09b4f9fefee5ccec1d23530b();
               break;
            case 5:
               _loc2_ = new _911396e5848b3a95f0b1708f();
               break;
            case 6:
               _loc2_ = new _d539d3255e80ca3366eef77c();
               break;
            case 7:
               _loc2_ = new _45075d852bcc8307c8e0a686();
               break;
            default:
               Debug.assert(false);
         }
         _loc2_.deserialize(param1);
         return _loc2_;
      }
   }
}

