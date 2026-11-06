package com.ax3.fishao.locations.chars.commands
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import flash.utils.getTimer;
   
   public class _76938cad36557880bc855380 implements _3ba073024ca466d13112f68e
   {
      
      private static var _4812a46bf322c994c922a98a:int = -2057946920 ^ 0x0F81036E ^ 0x49B2F5A3 ^ -1016738283;
      
      public var x:int;
      
      public var y:int;
      
      public var r:int;
      
      private var _2141184b7e29460f56494fd2:_08c120b706560fce9302bcab;
      
      private var _ab6aebb400a0b49b16ad15b4:int;
      
      private const _7f50aa78bee70ee70914dc28:int = 40000;
      
      private var _c19ffdb7702dce9ae2a5e1e2:int;
      
      private var _5f464925caa44795ee9aec09:int = 0;
      
      private var _fe30b34dda270c66bc0d735a:int = 0;
      
      private var _cbd53565bf8b368e34ade73b:String = "";
      
      public function _76938cad36557880bc855380(param1:_08c120b706560fce9302bcab, param2:int, param3:int, param4:int)
      {
         super();
         this._5f464925caa44795ee9aec09 = getTimer();
         this._c19ffdb7702dce9ae2a5e1e2 = _4812a46bf322c994c922a98a++;
         this._2141184b7e29460f56494fd2 = param1;
         this._2141184b7e29460f56494fd2.__lastModeCommand = this;
         if(param1 != null && param1.locationUser != null)
         {
            this._cbd53565bf8b368e34ade73b = param1.locationUser.username;
         }
         this.x = param2;
         this.y = param3;
         this.r = param4;
         this._ab6aebb400a0b49b16ad15b4 = getTimer();
      }
      
      public function execute() : void
      {
         var _loc1_:int = -1199252222 ^ 0x029904E0 ^ 0x46C67227 ^ 0x52857A06;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4DC7FD26 ^ 0x46D177B7 ^ -2029777197 ^ 0x224C5580))
            {
               case 0:
                  this._2141184b7e29460f56494fd2._ea52ddaca1a080cc2518c8da();
                  this._2141184b7e29460f56494fd2.graphic.alpha = 0x0893EF6E ^ -1302938572 ^ -1674564319 ^ 0x26F57E7A;
                  this._2141184b7e29460f56494fd2._b1f7457b16931a1882a5f4ed(this.x,this.y,this.r);
                  _loc1_ = 0x4ECDEC00 ^ -257151315 ^ -367086610 ^ -98459517;
                  break;
               case 1:
                  this._fe30b34dda270c66bc0d735a = getTimer();
                  if(this._2141184b7e29460f56494fd2 != null)
                  {
                     _loc1_ = -705883894 ^ 0x23396D64 ^ 0x69871223 ^ 0x310DBF8F;
                  }
                  else
                  {
                     _loc1_ = 0x5133F2E2 ^ -299137303 ^ -178376579 ^ -468150858;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ce2e77815ef99a99d836c418(param1:_3ba073024ca466d13112f68e) : Boolean
      {
         return !(param1 is _e68f996348ecbfe6433d3aca) && !(param1 is _76938cad36557880bc855380 && (param1 as _76938cad36557880bc855380).wasPathSearch());
      }
      
      public function isComplete() : Boolean
      {
         return this._2141184b7e29460f56494fd2._a43618439352bc03017c3c39() == false || getTimer() - this._ab6aebb400a0b49b16ad15b4 > this._7f50aa78bee70ee70914dc28;
      }
      
      public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၈ၑဟဈ႞ဠၾႭဠჿ၏ჼွ႑မრႄႚတႍ჏ჹჰၢၩႡၜკဘၣ჋ၧჯၨეၛဉရ","ၣၞၣ၌ူဒာჾწყဥ႒იႤၒღ") + this._c19ffdb7702dce9ae2a5e1e2 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼႩჄდနჽჿეაႻၟႆეၟ","Ⴙტტဨ႔ႾအဥၠဧႡႁႮႛნႪ") + this.x + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႟၄ၱၰ႞ჩၙႂႊႶႧ၀၃ၡ","ၧဩფၗ၈Ⴠვნၾ၊ၕဈႋჸႋႏ") + this.y + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刑剀到刾势力剑劍刺劮剢別剗切","刢劌分力勠剦刂勳刨勤剟剨刮勓劜刁") + this.r + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勊剸劋刏劓劷剨动刎勠勔则勢勺副勣劐劃","删劬勥刖劓勢勑募刃剁勑勭刈刨勏刎") + this.wasPathSearch() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勄募創劔剀勹剔劰勑剢勞力劅制刖剓剸刿勲勝","剰募勋勼剡剌則刏剥刎券劷剚勪劘効") + this._5f464925caa44795ee9aec09 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("推揙揙握挡捤挡揆揵揜挢振掛挑掰挄捿捙揩捜","捪掂挧挡挽授捺挩捰掘挵提揭捌揁掎") + this._fe30b34dda270c66bc0d735a + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃列則募刾劕刂剶剑割剌剟切刋","劮劓勩労劤剋劂刋勅勯刹切勈剴剪剷") + this._cbd53565bf8b368e34ade73b + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剎剑劕刖剾劜剷勑剞刿"
         ,"劾勖剥劌劰劆劵刵劽勜劙勺勆刘刈剟");
      }
      
      public function destroy() : void
      {
         this._2141184b7e29460f56494fd2 = null;
      }
      
      public function wasPathSearch() : Boolean
      {
         return this._2141184b7e29460f56494fd2.wasPathSearch();
      }
   }
}

