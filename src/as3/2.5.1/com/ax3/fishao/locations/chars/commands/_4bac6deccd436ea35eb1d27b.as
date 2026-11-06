package com.ax3.fishao.locations.chars.commands
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.junkbyte.console.Cc;
   import flash.utils.getTimer;
   
   public class _4bac6deccd436ea35eb1d27b implements _3ba073024ca466d13112f68e
   {
      
      private var _0d2a8033434322b20d639a60:_08c120b706560fce9302bcab;
      
      private var x:Number;
      
      private var y:Number;
      
      private var _6546ede9c1fe63d3bca317d7:int = 0;
      
      private var _d71cc1634ed0a4fc19d3ca88:int = 0;
      
      private var _08911a7613a90380459cf68f:String = "";
      
      public function _4bac6deccd436ea35eb1d27b(param1:_08c120b706560fce9302bcab, param2:Number, param3:Number)
      {
         super();
         this._6546ede9c1fe63d3bca317d7 = getTimer();
         this._0d2a8033434322b20d639a60 = param1;
         if(param1 != null && param1.locationUser != null)
         {
            this._08911a7613a90380459cf68f = param1.locationUser.username;
         }
         this.x = param2;
         this.y = param3;
         param1.__lastStartFishingCommand = this;
      }
      
      public function execute() : void
      {
         var _loc1_:int = 0x42DDB27F ^ -1186505008 ^ -1417219169 ^ 0x2A03B8E1;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x107A935B ^ -752539932 ^ -589629849 ^ 0x659AE40B))
            {
               case 0:
                  return;
               case 1:
                  Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၶ၍ჿქဥႴၳჀႈနအჲႤრჱჶႡ჋ႲဈიဣჟထၽႋဋဧႱႤჼၺဪ၌ၔ၏ဣႱျტ႖ှშႳ၌ႸტၥးჂဩၢჱညဃႤနნၤွၼႭჂဈ","Ⴤႂხ႒ဣၮဴဈ၉ဏၼႍၛწၳဿ") + this.toString() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝挴揤捌捹损挊捿掊挫挨掎掱捐控揈挍捨挔捀","捏掏挅揀掘挏揃捹挔捺掻挺挀揈捼揸") + this._0d2a8033434322b20d639a60.locationUser.username);
                  this._0d2a8033434322b20d639a60._1ac276fa38c42f5b354104cd();
                  this._0d2a8033434322b20d639a60._912f511bdd1d607aa06afe6c(this.x,this.y,this._0d2a8033434322b20d639a60._eb5219c52607a5e672ab42a0());
                  _loc1_ = 0x651F9442 ^ 0x7BD16A9D ^ 0x0FB81017 ^ 0x6B69491B;
                  break;
               case 2:
                  this._d71cc1634ed0a4fc19d3ca88 = getTimer();
                  if(this._0d2a8033434322b20d639a60 != null)
                  {
                     _loc1_ = -1807820116 ^ -466304511 ^ 0x7AD8A9B4 ^ 0x70CD16CB;
                  }
                  else
                  {
                     _loc1_ = -1925096802 ^ 0x13D53FFC ^ 0x7FBCC715 ^ -1690892892;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ce2e77815ef99a99d836c418(param1:_3ba073024ca466d13112f68e) : Boolean
      {
         return false;
      }
      
      public function isComplete() : Boolean
      {
         return true;
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挹掑掎掇掏掎揁捉挹捅挈掳揍掶揙掃掽揅掼揖挠掅捺揎揞挶持挐捋描挃挥掫挑揾捽揘揅揂掩捂掩接揀揉捼掇掸掩掀掗捳","揆捌捴揘振挩揋揦捩捱挜揵揾揰挝揭") + this.x + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("့၌ფგၤ჎ႝჹဦႩဉႴၗဍ","႗၇ႿႎႱလၬါူ။႒Ⴐ႕ყႛ၂") + this.y + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("შჯဴၒႣၮၱვမထყၱႶလႼ჊ဧႺဃြ","ၕႜჁ၁ႉၥႤဧჵၷရဈჰჟႼႝ") + this._6546ede9c1fe63d3bca317d7 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掗掍捦揖挊控捔揂捊挏换挑捱捲挦掏揸揇掘挦","捡掗授揭捁挧掔捥揙揥捉捘掱揅捐推") + this._d71cc1634ed0a4fc19d3ca88 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掷揹揓挻插揼振捱挮捃捧捀揁掎","揋挿揁捝振揀掊掖排挧揦挱掚捬挾挿") + this._08911a7613a90380459cf68f + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挷捑捍掶掬捬接掷挂揲","挟捘挒插揾挓换挱揷揮捞揍捅捍掔揵");
      }
      
      public function destroy() : void
      {
         this._0d2a8033434322b20d639a60 = null;
      }
   }
}

