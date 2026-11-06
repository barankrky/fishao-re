package com.ax3.fishao.view.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._1408d94400cd9851158c4009;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _ae28001c7d02c0f9a67acab9 extends Sprite implements _ea2aef44ec86cf38585d9339
   {
      
      private const _7fce8ac49b4df9628f14a5c3:Array = [_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ကჀ჋႙თငဨწჯრၖၥჹႼဉგၿჀ","္Ⴞ჆ხႉო႒ႴႰၺယბ჉ႿეႬ"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掽捷挑挀揼揸捎挮捡掾捯捩揈掁掉揔捘揾揊揤","换掰掽掁持掬掍揅捉挸捶揋损揌挚挟"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၊ႀჵျဥျနေဥံႢႂဟႚႝ၄","ეနႦႱႺၢႭქ၀რသჶၕჴဪဟ"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣揑揊掹揭揾挙挣掣挳揉挋掕掆掊揂","挬揚捳掐挷推挶捞捎揗持指掛揣揠揰")];
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _ab3fd9192770bb09d41960eb:_eb2314ffc37429732989b460;
      
      public var description:_1408d94400cd9851158c4009;
      
      private var _d917bfc1cb92d33158412da1:TextField;
      
      private var _69ff81e550a85dfcf7b761e5:MovieClip;
      
      public function _ae28001c7d02c0f9a67acab9(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劒刃勿労功创勦刯劃剿刎刼劍勀剳劏","势剈剆刀剤刌刑刪剀劎剉勖劅刻划勗")));
         this._ab3fd9192770bb09d41960eb = new _eb2314ffc37429732989b460();
         this._ab3fd9192770bb09d41960eb.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႓ႯႚၯႰႿჼသဋმ჻Ⴕ႐႐ღ၄","ာბထၹၷ႞Ⴧၬဣၝြၳ႟Ⴠငဴ")):""};
         this._ab3fd9192770bb09d41960eb.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._ab3fd9192770bb09d41960eb,true);
         this.description = new _1408d94400cd9851158c4009();
         this.description.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၭၣ႒ှငဓჇბუნၼွიညၠံႽမးၼჱჁဝဝ჆ჺႫჺႽႲ","჆ႢიჂჶႛႧၚ၆ု჻Ⴡჭჽლ၂")));
         this._d917bfc1cb92d33158412da1 = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊動勩刵劊剜劻刀勻劖券勝剀刚劜劻勏勉","办勖劤刯勳剘刂创勴勣勻刉刴判剓勭")));
         this._69ff81e550a85dfcf7b761e5 = MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဒႱႊတჄჇჯၤღႁႪၠ჆ဂႌ჆Ⴄႏၩယဳ၇პၪ","သჯ႗ိႝၖြჂႢ၀ဲ၉ူნႬၫ")));
      }
      
      public function set count(param1:int) : void
      {
         this._d917bfc1cb92d33158412da1.text = param1.toString();
         this._69ff81e550a85dfcf7b761e5.x = this._d917bfc1cb92d33158412da1.x + this._d917bfc1cb92d33158412da1.width + (-50479590 ^ -144052610 ^ -2027654780 ^ -1934614043);
      }
      
      public function update(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc5_:Object = null;
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挬揪捝挺捰揫挰掂揕捖掁挌掞捡援揄挋揊捥掐揥掾揆掤揹挰揳捐揅挔挺捧排捡","揲插揶掂掶揲挪捵换捾挡捜捥掺掮揧")))
         {
            this._69ff81e550a85dfcf7b761e5.gotoAndStop(param1.fishcoinFrame);
         }
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("持捣挪揺挊挫掲掳掿捥推捞掼挬接揺揥揻掘捼捘挆掀挈掑掭挨捙","掗揶指捛揯掄挴掟掝捂捇掼捦揮控捣")))
         {
            this.date.text = _c2ad9d37d7be0097d6d2e977._8b1d7fc46fc7ed5e413daf7a(param1.timeAgoSec,true);
            this._ab3fd9192770bb09d41960eb.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勞副劁剏勬剑劽助刻刑勺劀剮前劼剆","剘劕劳刾剜刏刔劔前劍割剎剗勌劖刲")):_c2ad9d37d7be0097d6d2e977._e7ea8192c5aef265a8636557(param1.timeAgoSec,true)};
         }
         else
         {
            this.date.text = "";
            this._ab3fd9192770bb09d41960eb.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刧劽剭劭剛剸勏労勩刄劑剻剹剞劳到","剒刚劂刺剖刳剳勣勔剨分剠劤勽刔剐")):""};
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙刨劶刽刢剭勞剥勡刹勹剉勨勲刈勀","剺劻剫刌劣勘刃劑勒初劓励刻刺勏刭")))
         {
            _loc2_ = String(param1.desc).split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掜揗挐捁捆挽採掔挓捷","掝挃捑挍揤指掕揧掤揆挣描掚揭掎捃"));
            _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_loc2_[-310412621 ^ 0x358044C8 ^ 0x3A32365E ^ -489879515]);
            _loc4_ = new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘劎剴動務剈劷劐募剢劷剂劊勥勷刃勖剻勦剡则券剈剑劅剞勎办切副","刾剤勖劁剶劑刖劮刌勉勹剚剐劒勎剞"));
            _loc5_ = _loc4_.exec(_loc3_);
            if(_loc5_ != null)
            {
               if(_loc2_.length > (0x55ABFA7A ^ -723068037 ^ -2032395273 ^ 0x07913AF7))
               {
                  if(this._7fce8ac49b4df9628f14a5c3.indexOf(_loc5_[0x7B7F5675 ^ 0x51ED40E1 ^ 0x4F7A69EA ^ 0x65E87F7F]) == (0x5623B150 ^ -1577647510 ^ 0x45E0D8B9 ^ 0x4DCB947C))
                  {
                     _loc5_[-1443398763 ^ 0x5BCB1386 ^ -499162431 ^ 0x10030AD3] = _c2ad9d37d7be0097d6d2e977.get(String(_loc5_[0x60BC1E96 ^ -956920519 ^ 0x2632C088 ^ -2139598042]).toLowerCase() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捪掵掚挛掘捇掘捴挶持","捛捴揇掿挧挎捙挥捬插掂掀捊掞掐掑") + _loc2_[-1347368719 ^ -619879187 ^ 0x29D35998 ^ 0x5D6EF585]);
                  }
                  else
                  {
                     _loc5_[0x374A76DA ^ -804999642 ^ -944347139 ^ 0x20F8BF00] = _loc2_[-1959542073 ^ 0x64154F1C ^ 0x17407A6A ^ -127469648];
                  }
               }
               _loc3_ = _loc3_.replace(_loc5_[0x2A48C4E9 ^ 0x286EA2FD ^ -455290652 ^ -419776784],_loc5_[-847927294 ^ 0x268F54CA ^ -987824428 ^ 0x2EE4021D]);
               if(_loc2_.length > (-1772621352 ^ -1517035269 ^ -1862244972 ^ -1564183371) && _loc3_.indexOf(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捴揆揾损捁措掛据捉捦挡控掀掽揸揅採揎掳揂揕挓","揓挺掬掟捃掳挜掸揾挾掃捓捝挨捌揾")) != (-1255706623 ^ 0x10E74B08 ^ 0x686C2122 ^ 0x3253E5D4))
               {
                  _loc3_ = _loc3_.replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剢勵則勅刬勊剏劏剟剤勁剡劄剫勜劻剛劏勃勆刷刢","勊到剢劵剟劊刡勭勂勵剮勲劣刲劺募"),_loc2_[-1678424652 ^ -2142387896 ^ 0x0230DBF2 ^ 0x19885F0C]);
               }
            }
            this.description.text = _loc3_;
         }
         else
         {
            this.description.text = "";
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႺဳႡၪၧဲႣႮၚ႐ფၥဠႎၜဲႝၬအႸ","ႝ႙ၣႋၜჴႡჁဘႂჱჷჩ႕ၲျ")))
         {
            this.count = (param1.type == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၔငႮჹႄჹრၫႉႌႋხၟჼါ၏ဥႺ","჈მႼჟဉွၨဂუဘႜမစၳჽჭ") ? -1816687236 ^ 0x0343A62D ^ -1969292697 ^ -443207991 : -54008061 ^ 0x2E9272C4 ^ 0x3DD71991 ^ -276657065) * param1.amount;
         }
         else
         {
            this.count = -1579105705 ^ 0x42812B44 ^ -790480659 ^ 0x3383D1FE;
         }
      }
   }
}

