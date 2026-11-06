package com.ax3.fishao.view.dialogs.worlds
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   
   public class _fc0ad21ef0bdcb5d775a5005
   {
      
      private var _0d7d1f6a072a5250719c3066:String;
      
      private var _41194566794aaf75406204a4:String;
      
      private var _641110d92b2ef20226e2df07:int;
      
      private var _e46543d2c1c694b77cc653d6:int;
      
      private var _name:String;
      
      private var _65f7e3b509066ea65614b9e3:Boolean;
      
      public function _fc0ad21ef0bdcb5d775a5005()
      {
         super();
         this._0d7d1f6a072a5250719c3066 = this.id;
         this._65f7e3b509066ea65614b9e3 = true;
         this._name = "";
      }
      
      public function get id() : String
      {
         return this._0d7d1f6a072a5250719c3066;
      }
      
      public function get url() : String
      {
         return this._41194566794aaf75406204a4;
      }
      
      public function get playersMax() : int
      {
         return this._641110d92b2ef20226e2df07;
      }
      
      public function get playersCount() : int
      {
         return Math.min(this._e46543d2c1c694b77cc653d6,this._641110d92b2ef20226e2df07);
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get enabled() : Boolean
      {
         return this._65f7e3b509066ea65614b9e3 && this._e46543d2c1c694b77cc653d6 < this._641110d92b2ef20226e2df07;
      }
      
      public function get isVirtual() : Boolean
      {
         var _loc1_:String = this._name.toLowerCase();
         return _loc1_.indexOf(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刂剡劎劌創刓割务勄励到刣劮勑効劓剷劫剳刣刪割","劲剤勢剚剸勈劵劅剁劒劧剢剾勆勚劥")) != (0x6052AC1B ^ 0x0AFF51FB ^ -1195858856 ^ 0x2DEAA647) || _loc1_.indexOf(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞捹持掌揭捯揮捨揱控揖据捬挿揖揋","揑掽捌捲揨挹按挫揲揈挖捂捚掞掰掫")) != (0x75821CAD ^ 0x46DF4DCD ^ -1406488274 ^ 0x60881FB1);
      }
      
      public function deserialize(param1:Object) : void
      {
         this._0d7d1f6a072a5250719c3066 = Debug.getPropertyOrDefault(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ძဖႦ჊ဇჹყ႞ၥჟეჸჺს႐ၣჸ႟ၕၑჲႛ","ჸၺფႀၩႲဵკ၇၁ၞၢျჼရ჋"),this._0d7d1f6a072a5250719c3066);
         this._41194566794aaf75406204a4 = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剩労创剃剗剛剗势刚勳制刂勇剤","劝勜劸剢募勇劰删剝勬剏勵刄劕刉勁"),this._41194566794aaf75406204a4);
         this._name = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔劃勤列努劸勷劮勾副劬勷剷剂剆券勁刲刱剟剙劘刨剬剅剤","剼副剜刿剠劏列刂勚制剟劃剎勵勺劎"),this._name);
         this._e46543d2c1c694b77cc653d6 = Debug.getPropertyOrDefault(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၥႻႳႆႏဃဝဦံၤႼဪჅမე჊჊჌","ყჅႯჶၦမၯဆრსპြა჌Ⴏ჋"),this._e46543d2c1c694b77cc653d6);
         this._641110d92b2ef20226e2df07 = Debug.getPropertyOrDefault(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("უဠႲၙညოၸთႯჾဖ၎ဇဩၒနႧ႘ြၧၞკႭ၄ဩლ်ႈ","ႂဗႃဢဌှာဲკဨႭႁ၇ჾჭ႘"),this._641110d92b2ef20226e2df07);
         this._65f7e3b509066ea65614b9e3 = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳剞剻劦劇加劫勜勴剼刔励初勤副劰勊剐券刷劙刐","劺剨别办刈前剭刼勇刭劄劀刂劸剗劷"),this._65f7e3b509066ea65614b9e3);
      }
   }
}

