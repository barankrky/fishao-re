package com.ax3.fishao.locations.water
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.utils.drawing.drawRect;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _28a5e9d5363b929d00daf15f extends Sprite implements _69eec7d2f73604da25ccda04
   {
      
      private static const _158f9c6cf8fa4f6dc495bdef:int = -13002591 ^ -2023648277 ^ -395385127 ^ -1875448519;
      
      private static const _3bbcf462a639a1f7bfece7b3:int = -758240298 ^ -290488556 ^ -99814992 ^ -965892854;
      
      private var _a5b03bd1b1dfba3a95b530ab:BitmapData;
      
      private var _72f7c4e5dfebc6128d564a90:Vector.<_f7007c9b6de4d0deabf72d40> = new Vector.<_f7007c9b6de4d0deabf72d40>();
      
      private var _48be2f82e58171205da11bce:Rectangle;
      
      private var _57ce59f15fec3276d0ca85bf:Rectangle;
      
      public function _28a5e9d5363b929d00daf15f()
      {
         super();
         Cc.addSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၫါၑ၊ႦအႃႹၜႆფညႀჷၖ၉ၫკჳႧၔ၈დာ႐ၥႫၢဉိ","ၮဴဒჸညၬၝჩါခ႑წွნဠ၉"),this.weDebugDraw,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟剧删動务劀刟劶务刐劵劽剹勏前剏勬劖利刴动剽勶勿勫刪勓劺剋劍剕剪加刢刍勂剅功勰刍務剡刉刕勬劇办刑剟刧判勊初勌劆勝劯刧剄勺劔刃勒刀剏剡勜剈功劐劆動募剓刄勜刁剽勗勂剥剒刧劾利刋刟剴削創剈刀勦势剦勇努剉劦勺劰劬刵剧刍刐勀勧刀勞剟剿劒刚剅勂勗勌則分劼刃勜削努刞勊劁勣剉勹剛勬刟勨削刬列判势剔剆刌劜","刮剰勺剪勏劧刜剓刺剦到刱判勰勩勔") + _f7007c9b6de4d0deabf72d40.CREATION_TIME_MS + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("动剻刓刓刀势効到剬勴","刴剃刧劔劇剓劻剿劙勊刳剄劋割勻剩"));
         Cc.addSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ူၳၘၝჃၔၣဵိჾၥဟ၏ႄ့ၓႅჅၼიၺჩဩၥၞფჽႉၗဟၯგဆၙႿიႫႽჿု","ဌჿႭჳၰၦჰ၎ჾგვၼဌႏდႭ"),this.weCreationTimeMs,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("სჁီၞၒႱဧჃးჟဏჃဏၐწჲၔံ၄ၑၮဖჿႰჱფၐცာ჏ჟရႃၴၭႵၻဢၫထႦო႘჏ჀၱშဎႦ჊Ⴚჳၨ჋ხ၅ძသရကႰ႔ၤၓၗნუဴၓ၄ၧ჉გၬၾၐႾუဥჱ၀ჄႩႊცးၔჃგ჏းၰဢხႌဩ჌჋၉ႛ၁ႚ႓ခၫ၁მ჊ႡႪႢၗႸပဎႦၟ႟ၯႉფဈုႁၭႠၾဧ႓၍ဟဘၞၸ၆ဌ჈ၞႁၦႄႁၴႦ","Ⴭဪ၈၄ჄႷႻဈပၞმ၎ကဘႳဠ") + _f7007c9b6de4d0deabf72d40.CREATION_TIME_MS + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆推掞掌揆捠揍掙捁捖","捑捃掿揻挑揻掌挖掍掖揇揓掜换描掰"));
         Cc.addSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၔြဤჴღჭဪႭၔ႗ၾဃၮါဵუႡၐჃွაჭဝၽၟწၔၮၫ႒ႚ႓ဎპუႵაဣႅဗ","ၲွ႓၅ူဟფႼ့ကცႮ၏ပსၝ"),this.weCreationChance,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("力刑募剀剑别势刐刧剶劓剈劘势勔刄劎剔刭剥劈勂劓剡剑勊剘勜剸勈剖勘刮剣剒券刹利劒刋劓割刐创剦剔刬剂刍刓劫劰剉劾功刮办勢動剔勒劶劥剑刨刉劶劍刪剅勞勘劺刦助勿劐劬劢劚券刡刵刐剅劫剄剄勎勜刂勊勉劌刃勌刨剄勳势剒劾刐勹剄势劐勚勄剴勅勍","劳劧勓到勚剪刊勒剹勫刼刈刳刮剻勡") + _f7007c9b6de4d0deabf72d40.CREATION_CHANCE + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捫挣掃掙挪捹捃挠揠掦","揕捹揳捀按挑捒挻掊掌掿揷掩掚掗授"));
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捓捼捠挫揀捄揬损捉挶挀捱揫掐掙挷挦揅插捠掋捑掇捴掮捿揸揃挖损掴捼掛掎挮掤捊掝捴挐掆捰","捴挣挖捵挚揘捳掎挙挐揎揮捀捕捚掖"),this.weMaxWaterEffects,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴠც၊ႽႼႣှ႔ჇႹဇၭဴმၫၠტၟႝჁႪ႗ဣჭურႸჃ","ცჁၚၖၝဪထၛႏၞၶႽၖ႖ჼდ") + _f7007c9b6de4d0deabf72d40.MAX_WATER_EFFECTS + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勋删剉剒割勣剸剝募剪","刏刪劳勇勫勇剉功勞力剽别剶刟剻剼"));
      }
      
      private function weMaxWaterEffects(param1:Number) : void
      {
         _f7007c9b6de4d0deabf72d40.MAX_WATER_EFFECTS = param1;
      }
      
      private function weCreationChance(param1:Number) : void
      {
         _f7007c9b6de4d0deabf72d40.CREATION_CHANCE = param1;
      }
      
      private function weCreationTimeMs(param1:Number) : void
      {
         _f7007c9b6de4d0deabf72d40.CREATION_TIME_MS = param1;
      }
      
      private function weDebugDraw() : void
      {
         var _loc1_:_f7007c9b6de4d0deabf72d40 = null;
         for each(_loc1_ in this._72f7c4e5dfebc6128d564a90)
         {
            if(_loc1_.isWater)
            {
               drawRect(this,_loc1_.rect.x,_loc1_.rect.y,_loc1_.rect.width,_loc1_.rect.height,0x4999E61D ^ -1058971621 ^ -1326632271 ^ 0x6C6AB4B7);
            }
            else
            {
               drawRect(this,_loc1_.rect.x,_loc1_.rect.y,_loc1_.rect.width,_loc1_.rect.height,0x59273CFE ^ 0x30679EBA ^ 0x307FEB92 ^ 0x0C3FB6D6);
            }
         }
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         this._57ce59f15fec3276d0ca85bf = param1;
         this._57ce59f15fec3276d0ca85bf.x = _158f9c6cf8fa4f6dc495bdef * int(this._57ce59f15fec3276d0ca85bf.x / _158f9c6cf8fa4f6dc495bdef - 1);
         this._57ce59f15fec3276d0ca85bf.y = _3bbcf462a639a1f7bfece7b3 * int(this._57ce59f15fec3276d0ca85bf.y / _3bbcf462a639a1f7bfece7b3 - 1);
         this._57ce59f15fec3276d0ca85bf.width = _158f9c6cf8fa4f6dc495bdef * int(this._57ce59f15fec3276d0ca85bf.width / _158f9c6cf8fa4f6dc495bdef + (0x2A5AAB8C ^ -1143225326 ^ -758791907 ^ 0x4344AE81));
         this._57ce59f15fec3276d0ca85bf.height = _3bbcf462a639a1f7bfece7b3 * int(this._57ce59f15fec3276d0ca85bf.height / _3bbcf462a639a1f7bfece7b3 + (-421462202 ^ 0x47F29ED9 ^ -554183948 ^ 0x7FE5B369));
         if(this._48be2f82e58171205da11bce == null || Math.abs(this._48be2f82e58171205da11bce.x - this._57ce59f15fec3276d0ca85bf.x) >= _158f9c6cf8fa4f6dc495bdef || Math.abs(this._48be2f82e58171205da11bce.y - this._57ce59f15fec3276d0ca85bf.y) >= _3bbcf462a639a1f7bfece7b3 || Math.abs(this._48be2f82e58171205da11bce.right - this._57ce59f15fec3276d0ca85bf.right) >= _158f9c6cf8fa4f6dc495bdef || Math.abs(this._48be2f82e58171205da11bce.bottom - this._57ce59f15fec3276d0ca85bf.bottom) >= _3bbcf462a639a1f7bfece7b3)
         {
            this._6a67ebdc85a920e28935cb40();
         }
      }
      
      public function set lakeObstacleMapBitmap(param1:BitmapData) : void
      {
         this._a5b03bd1b1dfba3a95b530ab = param1;
         this._6a67ebdc85a920e28935cb40();
      }
      
      private function _6a67ebdc85a920e28935cb40() : void
      {
         var _loc1_:_f7007c9b6de4d0deabf72d40 = null;
         var _loc2_:Vector.<_f7007c9b6de4d0deabf72d40> = null;
         var _loc3_:_f7007c9b6de4d0deabf72d40 = null;
         var _loc4_:_f7007c9b6de4d0deabf72d40 = null;
         var _loc5_:int = 0x77E8AD79 ^ 0x0A87DC8C ^ -1198472617 ^ -973098078;
         var _loc6_:int = -245648800 ^ -1867706770 ^ 0x12971206 ^ 0x7361AE08;
         if(this._57ce59f15fec3276d0ca85bf != null && this._a5b03bd1b1dfba3a95b530ab != null)
         {
            this.graphics.clear();
            _loc2_ = new Vector.<_f7007c9b6de4d0deabf72d40>();
            for each(_loc3_ in this._72f7c4e5dfebc6128d564a90)
            {
               if(!this._48be2f82e58171205da11bce.containsRect(_loc3_.rect))
               {
                  _loc3_.destroy();
                  removeChild(_loc3_);
                  _loc2_.push(_loc3_);
               }
            }
            for each(_loc4_ in _loc2_)
            {
               this._72f7c4e5dfebc6128d564a90.splice(this._72f7c4e5dfebc6128d564a90.indexOf(_loc4_),0x1CECE146 ^ -108124394 ^ -801387842 ^ 0x35590CEF);
            }
            _loc5_ = this._57ce59f15fec3276d0ca85bf.x;
            while(_loc5_ < this._57ce59f15fec3276d0ca85bf.right)
            {
               _loc6_ = this._57ce59f15fec3276d0ca85bf.y;
               while(_loc6_ < this._57ce59f15fec3276d0ca85bf.bottom)
               {
                  if(this._48be2f82e58171205da11bce == null || this._48be2f82e58171205da11bce.contains(_loc5_,_loc6_) == false)
                  {
                     _loc1_ = this._ba08e875f316a78ed401f410(_loc5_,_loc6_);
                     addChild(_loc1_);
                     this._72f7c4e5dfebc6128d564a90.push(_loc1_);
                  }
                  else
                  {
                     _loc1_ = this._59ad60bc83e92c2449d0af30(_loc5_,_loc6_);
                  }
                  _loc6_ += _3bbcf462a639a1f7bfece7b3;
               }
               _loc5_ += _158f9c6cf8fa4f6dc495bdef;
            }
            this._48be2f82e58171205da11bce = this._57ce59f15fec3276d0ca85bf;
         }
      }
      
      private function _59ad60bc83e92c2449d0af30(param1:int, param2:int) : _f7007c9b6de4d0deabf72d40
      {
         var _loc3_:_f7007c9b6de4d0deabf72d40 = null;
         for each(_loc3_ in this._72f7c4e5dfebc6128d564a90)
         {
            if(_loc3_.rect.contains(param1,param2))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function _ba08e875f316a78ed401f410(param1:int, param2:int) : _f7007c9b6de4d0deabf72d40
      {
         var _loc3_:_f7007c9b6de4d0deabf72d40 = new _f7007c9b6de4d0deabf72d40();
         _loc3_.x = param1;
         _loc3_.y = param2;
         _loc3_.rect.x = param1;
         _loc3_.rect.y = param2;
         _loc3_.rect.width = _158f9c6cf8fa4f6dc495bdef;
         _loc3_.rect.height = _3bbcf462a639a1f7bfece7b3;
         if(this._a5b03bd1b1dfba3a95b530ab != null)
         {
            if(param1 > (0x502D4314 ^ -1609051516 ^ -603451305 ^ 0x2C3281C7) && param1 < this._a5b03bd1b1dfba3a95b530ab.width && param2 > (0x03D23F58 ^ 0x1120AC5A ^ 0x5A91752C ^ 0x4863E62E) && param2 < this._a5b03bd1b1dfba3a95b530ab.height)
            {
               _loc3_.isWater = this._ea08b1d474f280c69a9fb3d1(_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function _ea08b1d474f280c69a9fb3d1(param1:_f7007c9b6de4d0deabf72d40) : Boolean
      {
         var _loc2_:int = -1986514666 ^ 0x161F4295 ^ -238290047 ^ 0x6E4C8802;
         var _loc3_:int = 0x61032454 ^ 0x56E51E7C ^ -603224676 ^ -336740428;
         var _loc4_:int = 0x6411B68D ^ 0x5F5DD632 ^ 0x46CBF0F3 ^ 0x5612ACB8;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-446106476 ^ 0x30FB8954 ^ -78105644 ^ 0x055E72E5))
            {
               case 0:
                  if(_loc2_ > param1.rect.y + _3bbcf462a639a1f7bfece7b3)
                  {
                     _loc4_ = -1820673200 ^ 0x07822FD2 ^ -939425513 ^ 0x776C2960;
                  }
                  else
                  {
                     _loc4_ = 0x52A9ACD3 ^ -251056550 ^ 0x0C47D57F ^ -2072876283;
                  }
                  break;
               case 1:
                  return true;
               case 2:
                  if(this._a5b03bd1b1dfba3a95b530ab.getPixel32(_loc3_,_loc2_) < (-1554182586 ^ -977949710 ^ -481935885 ^ -2058262600))
                  {
                     _loc4_ = -537404506 ^ 0x2D6F1F43 ^ -1209706731 ^ 0x6EE8AF06;
                  }
                  else
                  {
                     _loc4_ = -1435014727 ^ -1813073772 ^ 0x5A23A9F0 ^ 0x482F4C24;
                  }
                  break;
               case 3:
                  _loc2_ = param1.rect.y;
                  _loc4_ = -1726454743 ^ 0x5BB8E052 ^ -1965594814 ^ 0x63E2DFC8;
                  break;
               case 4:
                  _loc3_ += _158f9c6cf8fa4f6dc495bdef / (0x716AE94D ^ 0x1EDF7E38 ^ -775453029 ^ -1099820565);
                  _loc4_ = 0x7A3370 ^ 0x79B44FF4 ^ -1393356882 ^ -22523939;
                  break;
               case 5:
                  _loc2_ = 0x5804BA6D ^ 0x39CF6A6E ^ 0x67F8DE59 ^ 0x06330E5A;
                  _loc3_ = param1.rect.x;
                  _loc4_ = 0x6D4B0200 ^ -176509711 ^ -1423594050 ^ 0x18813FB8;
                  break;
               case 6:
                  if(_loc3_ > param1.rect.x + _158f9c6cf8fa4f6dc495bdef)
                  {
                     _loc4_ = -703300051 ^ -1781879779 ^ 0x3826D7DE ^ 0x506D391E;
                  }
                  else
                  {
                     _loc4_ = 0x669E0610 ^ 0x4CB9EB8B ^ 0x0B522018 ^ 0x0AE0F171;
                  }
                  break;
               case 7:
                  return false;
               case 8:
                  _loc2_ += _3bbcf462a639a1f7bfece7b3 / (0x6565517A ^ -6610708 ^ 0x6C579126 ^ -156639051);
                  _loc4_ = 0x4E85E646 ^ -1269175232 ^ -1052000456 ^ 0x100289CF;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:_f7007c9b6de4d0deabf72d40 = null;
         if(Config.WATER_ANIMATION_EFFECT)
         {
            for each(_loc3_ in this._72f7c4e5dfebc6128d564a90)
            {
               _loc3_.update(param1,param2);
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:_f7007c9b6de4d0deabf72d40 = null;
         removeFromParent(this);
         if(this._a5b03bd1b1dfba3a95b530ab != null)
         {
            this._a5b03bd1b1dfba3a95b530ab.dispose();
            this._a5b03bd1b1dfba3a95b530ab = null;
         }
         for each(_loc1_ in this._72f7c4e5dfebc6128d564a90)
         {
            _loc1_.destroy();
         }
         this._72f7c4e5dfebc6128d564a90 = null;
         this._48be2f82e58171205da11bce = null;
         Cc.removeEqualSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掆挙捔捊捛揿捳挈揜捫掅揑持捻掝挗揊掾捒掛掸捪揨掰挧捆掾挨掦掶","掀捭捉捇挬挧捺挣揂捈挨揧掀接掝掉"),this.weDebugDraw);
         Cc.removeEqualSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("排捺捨揝掟掺挠揝揕掋捵捶揯捚挤揪揰揬揵捴掩捧揑掅捉掆揄揙挲掬挆掐捥捕挽挵掣揭捀揚","挦挬挍揞揿捥按揯捲挷掷掹掱按掗揿"),this.weCreationTimeMs);
         Cc.removeEqualSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劓劶勓別劐勎剬剹勨勀勴剏剦初劺劷勒劘勥勜勠力劸剪劄副刜勈勡利勁劽劤刌勜功剅刊剑剌","劘刋勡剐办则刺劁剕剧剢勞剌劰勵剱"),this.weCreationChance);
         Cc.removeEqualSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措挰捕掴振捙捌挭掻揤据揎捄捊挢捜捊揕挽捃揂揅挬揽挾接揙挂揤捐揄捎挂揻揔掙捔挝揕掍捏捄","揜捽捝掔捓挝挗揔捰挊描掾捽揊掙插"),this.weMaxWaterEffects);
      }
   }
}

