package com.ax3.fishao.view.dialogs.monster_fishes.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   
   public class _48a8719437a60981914f4c0e
   {
      
      private var _51429e28c3dbe66b7b6259ea:String;
      
      private var _062e20d8f586ac01bde1c2c5:Array;
      
      private var _adc61ed5cd8559a8ce5cb0eb:int;
      
      private var _c9a6cdcf1b7510e88e4c0e90:Number;
      
      public function _48a8719437a60981914f4c0e()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._51429e28c3dbe66b7b6259ea;
      }
      
      public function get requiredFeedLevel() : int
      {
         return this._adc61ed5cd8559a8ce5cb0eb;
      }
      
      public function get fishingDurationMultiplier() : Number
      {
         return this._c9a6cdcf1b7510e88e4c0e90;
      }
      
      public function _9af3fc410445ddece5302a47(param1:int) : Boolean
      {
         return this._062e20d8f586ac01bde1c2c5.indexOf(param1) != ConstantsBase.INDEX_NONE;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._51429e28c3dbe66b7b6259ea = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჩႋဧသ႓ဒ႖၅Ⴑ၆႘ၵႇჾჁဝ","ႇ႟့რႡ჉႙ငჯ႖ဟဖႍ჋ျჍ"));
         this._062e20d8f586ac01bde1c2c5 = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捐捔捰揑捕挕捑掫揈提掉提掘挔挜接掁捞挹換掉按揮捇","描挼捗揵揦揥揙掃採揩掠揞挣掸揘掩"),Array);
         this._adc61ed5cd8559a8ce5cb0eb = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ယႎ၉Ⴅუპဢႜ႞၎ၟ၌၂ႈႈ၏Ⴘ။ၧဳၥჅ႟ჄၚႜხႠၦၼာၖူႣქႡႅဇႱႂဘႯႇၳႮႀ","Ⴇၓვ။჈ႮႴ჈პ၃ဳ်ဈႦჭဪ"));
         this._c9a6cdcf1b7510e88e4c0e90 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剧利剤剖劓勜刓劗劲勀刯刞剓刧刦刱刷勜剄劝剽剰切副勉剈刿剑刘劉加劔前勺劅勯剥劀刹則勸劵劶勖勠劫划劁剾勜剳劐劍加剖剙剐勥办劄創剰","勾勌劮勲勚剡勅刲刂勿別努剱剼刅劌"));
      }
   }
}

