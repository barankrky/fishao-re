package com.ax3.fishao.view.dialogs.fruits.model
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fruits._1eddaef65f7c02c48e006bab;
   import com.ax3.fishao.view.dialogs.fruits.controllers._a158786f46be6a9b98e790b2;
   import flash.events.MouseEvent;
   
   public class _028a738681ce8ab1a6cc5b00 extends _1eddaef65f7c02c48e006bab
   {
      
      private var _a2f5d8f74894dca879c42dcd:_a158786f46be6a9b98e790b2;
      
      private var _4e0450ee49b762d0e2c6b73b:Boolean;
      
      public function _028a738681ce8ab1a6cc5b00()
      {
         super();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_FRUITS_CRUSH;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._a2f5d8f74894dca879c42dcd = new _a158786f46be6a9b98e790b2(_asset);
         this._4e0450ee49b762d0e2c6b73b = false;
      }
      
      override protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x28610EBF ^ -920227291 ^ 0x031BC974 ^ -426050512;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1497124949 ^ -1640227642 ^ -596517811 ^ -532142337))
            {
               case 0:
                  return;
               case 1:
                  Debug.assertNotEqual(this._a2f5d8f74894dca879c42dcd,null,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ყ၎ႵႫ႐ၝႄတေၶႤထ႙ჲထေၠၸგသူႜქၒွჀႿ჈ႝမჟညႌၣၯჯဿ၄ჷ၌ၗ၆မ၏ၜწၨၒႦႉႬჳႈს႟၄၉ჶႉၯႱၭႯစძႵ၅ႀရ჋ၟႴဏ႘ႇႣႦါჹჿჷၰႛჃၵၓုქဪ႗ႆჂႥၴာဘყ၀ჸႲၰ႖ჺ႟၅მჅ၃ဲ႙႐჊ႥဖჀ႞ဋႫဇႇဟ჊პჯၣႌ၁ြႵၓၠၩფ჈၀ხ႞။ဢွჴჼრჾခჵၛာဋၫჂ჈ဒႡ၇၌ဖၭၗპ႓ၑჽპႝႳ႘უၴႰႈာ","မႫၕၵუႂ၍ူဝ႙Ⴛကპ႗჌ၭ"));
                  if(!this._4e0450ee49b762d0e2c6b73b)
                  {
                     _loc2_ = 0x1ABEDD53 ^ -1622895166 ^ -1995989266 ^ 0x083B9FA2;
                  }
                  else
                  {
                     _loc2_ = 0x6BECC033 ^ 0x6D14E9FF ^ -309715585 ^ -273384084;
                  }
                  break;
               case 2:
                  GameSwf.instance.managerFruits._4d7295bf7750a5d22ee74c06();
                  _loc2_ = -1453754016 ^ 0x5FCE60CE ^ 0x45C489E3 ^ -1214916206;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_UPDATE:
               §§push(0x17BF22B1 ^ 0x03539683 ^ 0x74A739BD ^ 0x604B8D8F);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_CANCELED:
               §§push(-705123982 ^ 0x7EB0B58C ^ 0x5B1EF906 ^ -262740487);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_FINISHED:
               §§push(-277577932 ^ 0x5905823A ^ 0x488EE068 ^ -16835228);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_STARTED:
               §§push(0x2EB82DDE ^ 0x5E6137B0 ^ -1674915988 ^ -319564543);
               break;
            default:
               §§push(-1264313393 ^ -869963094 ^ -1085920843 ^ -943236908);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
               this._a2f5d8f74894dca879c42dcd.update(param1);
               break;
            case 3:
               this._4e0450ee49b762d0e2c6b73b = true;
               this._a2f5d8f74894dca879c42dcd.update(param1);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီၪႮ႙ၾၝძႣၰဇმႫყူႉစဩဨျဌႨၗႺၘဓနႩဥ႓ႫအႬဥ႓გဏპဉဿဖჂ၍჋ဏ။ဠ႞ნႸႤၶႈဿဿႦჹၹჲခငჵაႵ၆ႆၫႮ႖ჾჾၞႄဎႮၑၣ჋ၔ်ၕဈဲႨჼ၏ხ၆Ⴜ၈ႄၥ჉ၠჼဤႿၯၐႨ჊ဠჭႯံჱ၌ၹဓႉွჲၴჅ၆ၨჹႲმ႒ၧ","Ⴍၧ჆ო჋Ⴒ႑ၵဲာ႘ခၜჺ၍ူ") + param1);
         }
      }
   }
}

