package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.core.App;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._e0cc9389efe17fa064758292;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils.display.textfield.setFontSize;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   
   public class _593f9faa4abfdef2dd5e6544 extends ShiftWrapper implements IAssetWrapper, IAssetWrapperWithFactory
   {
      
      public static const TAB_CHANGED:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挤振揵掶捭捚捌挭掞捣掮挢挞揩挧揖捇挽掠捄揚挡挈挙振挞掸揆描捇","揋揜掠揻掬挼掀捭挰捐挾挩掽掭挬挫");
      
      private const _90590ec69ae6972a2988d42f:Event = new Event(TAB_CHANGED);
      
      private var _27fd13d53024e8eb660ac3dd:Class;
      
      private var _0b42d7b6ef0cee41dcd0872e:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _efa86f04393db1595764ef96:int = 0;
      
      private var _2da66969280768c46644046e:Dictionary = new Dictionary();
      
      private var _efe94af8f04676860844e5af:int = 2147483647;
      
      public function _593f9faa4abfdef2dd5e6544()
      {
         super();
      }
      
      public function initialize(param1:App, param2:String) : void
      {
         this._27fd13d53024e8eb660ac3dd = param1.resourceManager.getDefinitionFromLibraryByName(param2,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხჭန၉ცၡჾဟტႋႬၢ၅ჃნႶႬႴჳეႆၳ၃ဏဪဢႪჹ","Ⴒჱၻ၈ႄျვჰღჽႃၾჸၲဧဋ"));
      }
      
      public function _8b50ecba26c6233279339ce5(param1:int, param2:String, param3:int = 2147483647) : void
      {
         var _loc4_:_e0cc9389efe17fa064758292 = null;
         var _loc5_:MovieClip = this._0b42d7b6ef0cee41dcd0872e[param1];
         if(_loc5_ != null)
         {
            _loc4_ = this._2da66969280768c46644046e[_loc5_];
            if(_loc4_ != null)
            {
               _loc4_.widthNeed = param3;
               _loc4_.text = param2;
               _loc4_.autoSize = TextFieldAutoSize.LEFT;
               this._15c433526ed8641f5a64f307();
               this._79bb188f03d0f39f609d77af(param1);
            }
         }
      }
      
      private function _79bb188f03d0f39f609d77af(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:_e0cc9389efe17fa064758292 = null;
         var _loc4_:int = param1;
         while(_loc4_ < this._0b42d7b6ef0cee41dcd0872e.length)
         {
            _loc2_ = this._0b42d7b6ef0cee41dcd0872e[_loc4_];
            if(_loc4_ != param1 && _loc4_ > (-1585310770 ^ -316547781 ^ 0x4420987B ^ 0x0883568E))
            {
               MovieClip(_loc2_).x = MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc4_ - 1]).width + MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc4_ - 1]).x;
            }
            _loc3_ = this._2da66969280768c46644046e[_loc2_];
            MovieClip(_loc2_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掭揕挻掛掷掍捜捣捄捋揬捳捧揔換捚挒掩掿揄","挗挤掻捖捫挲挕掩挔捾掲捛捤掆揖掫"))).width = _loc3_.width + (-278825484 ^ -662134843 ^ 0x591AC15A ^ 0x6EF32B6E);
            MovieClip(_loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勽刁勿刽劃劅剗剫刞勗効剜刋勛勛剉剢劤刎剕勍勫剕剴券切","劲刋勆剣剺刼別劄劣勡剌劗剒刑劉势"))).x = MovieClip(_loc2_.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬჄၘ჏ႆၫၞႇჺმႊჼဋႤ႗ႁၗဝႸფ","ၭၸဣႺႫဪႋჸၝჽႏႶၩჀპၼ"))).width + MovieClip(_loc2_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揖捤揔掵挨揂掉掖捛挀挦掁揩捹挒捀捬揱挑挈","掙捀揁挃挼掱持挨揻持掤揭掘挝握握"))).x;
            _loc3_.x = MovieClip(_loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剄刹則勭剫刭刯刹剖刳勜劝剸劣劎剅刜勏刘劏","刧剉労劲劾勿剰划剀動剀勹勈则剔刍"))).x + (0x3BE68F32 ^ -1694790314 ^ 0x67732F05 ^ -965857948);
            _loc4_++;
         }
      }
      
      public function _7bf258038fc042efd3588c8b(param1:String) : int
      {
         var _loc2_:MovieClip = null;
         var _loc3_:TextField = null;
         var _loc4_:_e0cc9389efe17fa064758292 = null;
         if(this._27fd13d53024e8eb660ac3dd != null)
         {
            _loc2_ = new this._27fd13d53024e8eb660ac3dd();
            _loc2_.useHandCursor = true;
            _loc2_.mouseEnabled = true;
            _loc2_.mouseChildren = false;
            _loc2_.buttonMode = true;
            _loc2_.addEventListener(MouseEvent.CLICK,this._84ed0e659699e938c15b22cd);
            _loc3_ = TextField(_loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓刕劒劓劸劙勸剾刴勌剧劜劳勅勶刖勶勡","効刏剜剿劇削刵剼刮剤劊刀刡劇勒前")));
            _loc3_.text = param1;
            _loc3_.width = _loc3_.textWidth + (0x4059E72D ^ 0x5C25B125 ^ -980540267 ^ -638422376);
            _loc4_ = new _e0cc9389efe17fa064758292(false,TextFieldAutoSize.LEFT);
            _loc4_.process(_loc3_);
            _loc4_.text = param1;
            _loc4_.autoSize = TextFieldAutoSize.LEFT;
            this._15c433526ed8641f5a64f307();
            this._2da66969280768c46644046e[_loc2_] = _loc4_;
            if(this._0b42d7b6ef0cee41dcd0872e.length == (-1185491414 ^ 0x1A01DFCE ^ -1871709940 ^ 0x3338F0E8))
            {
               MovieClip(_loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劌剶刀勒剩劾剔剂勯别劃勅剒勁劑刵刀剴創剠","剌刞勃刜剴劖劃勖勨刑勏务刘劢勒刖"))).x = MovieClip(_loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剾剔剴刖努勤刧剹剎勋勻剰刪剽剁刅勈劢刅勍勬剴刃剜","勮劅効刍劜办刲删办剏剎則勢劒劓劦"))).width + MovieClip(_loc2_.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("უၒၟႉჴႝႪီႬၼဗႚ၆ဂ჊Ⴁკၨၞ႘ႱဘႾჺ","ၿၟზဪၽဏႹႱოဩဇအႃဨၓლ"))).x;
            }
            else
            {
               MovieClip(_loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劼勧剗劆劚劇刾削勺勯列労刽剰劼剷剈剞刞剫勍勪刖劤","勬劗勣到劒努劢刭劻勄势劷剮劢勤勗"))).visible = false;
               MovieClip(_loc2_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捆捶掉捷捌按掐措捨捵捃挷掫捯掶掔挝揜捚挧","揀揮捜挚掸掮揩揯捈捭捵掸挓捒挝揕"))).x = 0x0C5E6D6E ^ -771180477 ^ 0x7C813C2B ^ -1562908410;
            }
            this._0b42d7b6ef0cee41dcd0872e.push(_loc2_);
            this._79bb188f03d0f39f609d77af(this._0b42d7b6ef0cee41dcd0872e.length - 1);
            addChild(_loc2_);
            this._3e6763b955869ee21d17370f();
         }
         return this._0b42d7b6ef0cee41dcd0872e.length - 1;
      }
      
      private function _15c433526ed8641f5a64f307() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:MovieClip = null;
         var _loc3_:_e0cc9389efe17fa064758292 = null;
         var _loc4_:* = undefined;
         var _loc5_:_e0cc9389efe17fa064758292 = null;
         var _loc6_:int = int.MAX_VALUE;
         for(_loc1_ in this._2da66969280768c46644046e)
         {
            _loc2_ = _loc1_;
            _loc3_ = this._2da66969280768c46644046e[_loc1_];
            if(_loc6_ > _loc3_.curFontSize && _loc3_.curFontSize > (0x0FF4561A ^ -1619585235 ^ 0x02CD86F4 ^ -1840330813))
            {
               _loc6_ = _loc3_.curFontSize;
            }
         }
         if(this._efe94af8f04676860844e5af != _loc6_)
         {
            this._efe94af8f04676860844e5af = _loc6_;
            for(_loc4_ in this._2da66969280768c46644046e)
            {
               _loc5_ = this._2da66969280768c46644046e[_loc4_];
               setFontSize(_loc5_,this._efe94af8f04676860844e5af);
               _loc5_.autoSize = TextFieldAutoSize.LEFT;
               _loc5_._c6f528527f063d12b49dbe00();
            }
            this._79bb188f03d0f39f609d77af(-1387505715 ^ -428798093 ^ 0x6306CACC ^ 0x283B9272);
         }
      }
      
      private function _84ed0e659699e938c15b22cd(param1:MouseEvent) : void
      {
         this._8fc28a7b9efdde13057d31d6(this._0b42d7b6ef0cee41dcd0872e.indexOf(param1.target));
      }
      
      public function _8fc28a7b9efdde13057d31d6(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = -479955873 ^ -1868260492 ^ -1527541876 ^ -1897766879;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-698514330 ^ 0x16F9FABB ^ -1923903308 ^ 0x1426EEEE))
            {
               case 0:
                  this._3e6763b955869ee21d17370f();
                  dispatchEvent(this._90590ec69ae6972a2988d42f);
                  return;
               case 1:
                  this._efa86f04393db1595764ef96 = param1;
                  if(param2)
                  {
                     _loc3_ = -13754668 ^ 0x06623FF9 ^ -291429091 ^ 0x4E3C04B5;
                  }
                  else
                  {
                     _loc3_ = 0x5509287B ^ 0x50E75F34 ^ 0x312A2411 ^ 0x6D1553D9;
                  }
                  break;
               case 2:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_049_UI_Switch_tab);
                  _loc3_ = 0x60E7DCFF ^ 0x457A64AE ^ 0x3B2704BC ^ 0x476BBC6A;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _3e6763b955869ee21d17370f() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = -1996614032 ^ 0x69819457 ^ -61155582 ^ 0x1D255525;
         var _loc3_:int = 0x0754AD9F ^ -1577016666 ^ 0x2C4D4A3D ^ -1994832636;
         var _loc4_:Boolean = false;
         _loc2_ = 0x39A744E9 ^ -1942065069 ^ 0x05D908E9 ^ -1337967533;
         while(_loc2_ < this._0b42d7b6ef0cee41dcd0872e.length)
         {
            this._0b42d7b6ef0cee41dcd0872e[_loc2_].x = _loc3_;
            if(this._0b42d7b6ef0cee41dcd0872e[_loc2_].visible == true)
            {
               _loc3_ += this._0b42d7b6ef0cee41dcd0872e[_loc2_].width;
               if(_loc4_ == false)
               {
                  MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_].getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揼捧揮挖掊掳挀捉揯捛掅挢揘捃揙捹捦捱揂捰挨揟挦捽","掑挙揈挞捍损捩掉掞掀揾掀掓捱揎挶"))).visible = true;
                  MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_].getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掷揆挃捠掇捯捎掙掉掑挶挣挪挅掟掋掠挳掟挛","揿捔揮揙掰捐捉揢揗掚揿挣挋掹捣挪"))).x = MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_].getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ှႻၰၗ၉ჯჯრჁၤၼ႟ႰဿႺჵါၟၴ჊Ⴤ႖ဴၸ","Ⴘ႘၈჉၌ၯႽႢဘႾၳ჎ၷო႑ၥ"))).width + MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_].getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၔဝცპღ႔Ⴚ၃ფ၅ၞတႡჁႢႰ။შ჋၈္။႞ၵ","მ჌Ⴗဟသჟဏႁႎႆ၆ၤဓၢၽအ"))).x;
                  this._79bb188f03d0f39f609d77af(_loc2_);
                  _loc4_ = true;
               }
            }
            if(_loc2_ == this._efa86f04393db1595764ef96)
            {
               _loc1_ = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃掆揕換捖掮捜挘掔捏揔挻捂挞揥指捸挠掑掙挫捻捘揊","掹挺揺揭捸挝捦捶捡揳掄掻挲授挳挌");
               if(_loc2_ > (-1860540704 ^ 0x70B5EB33 ^ 0x18A83994 ^ -116935609))
               {
                  MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_ - 1].getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捯掗揱揼揬掎掝掤指挰掛揼捪挚換掰捏掅换捤掟揘揺掄按挘","捱揇掻掓掆掱揑挍挷揎揗挆挕挪捌揱"))).gotoAndStop(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捊掑掽揧揈揖揑挩挑揆揩揎揝挍揫掕捇捀捐掌挍揪排挠揨掟揱掵挋揟揙挮挨揹振掖揪掼捂掃挽挍揗揪控揸挺挶揜挠捦掚挨捈捨揿","揳捑揉掷捾揚挗掩捃捒揕挊揻揔揱掀"));
               }
            }
            else
            {
               _loc1_ = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剾劸務务劗勴刳剒劢劀劈刷励勱劂劢劊勠勮劋","剕剝剷劒剀刭剖刊劰勾劖刬勷勶剐刱");
            }
            MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_].getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("სგჭჩူႉფჺႮွႩၗჾზၖသ႘Ⴡႌყ","჻႙ိႁჼჿၷဒ႐ტႅၿხၔთ၅"))).gotoAndStop(_loc1_);
            MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_].getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刟勣劉勑刏劑勅剿削剜剤剱刉劳剷刵勼勓到勀剀剏剧勞","勥剘剄勸努利刱劑劌刌勦剞劁勡劈劚"))).gotoAndStop(_loc1_);
            if(_loc2_ < this._0b42d7b6ef0cee41dcd0872e.length - 1)
            {
               _loc1_ = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჸႷၰႭဧ႗ၮႪ႙ဂၻဵჾშ႒ၭვქႤဍႉႮაဃ႞ႇ","ႠჷၘႠ၄აფျႪၥ႐ဉဎႹႤ၂") + _loc1_;
               if(_loc2_ != this._efa86f04393db1595764ef96)
               {
                  _loc1_ += _loc2_ < this._efa86f04393db1595764ef96 ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴭჽ၌იၤငჀႺၹဢტႭႋრထ၀ညၠၠႹ","ဵႫဦႧჰၸ၉Ⴇုၪၤႊသႆၵ჋") : _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掴揷捜揯揍掰掃控挿挒挻捳揻掀挲掴挈振","揋挠捿损揾揲持掄採揦挕揠捑揝捲挰");
               }
            }
            MovieClip(this._0b42d7b6ef0cee41dcd0872e[_loc2_].getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖၼသၑწ္ပიჭၷ္၊ႅဵიტႂဠာშჃယႵႴႱႼ","჋ဟီჽၚუဨ့၈ၼ჉႕ခၮ်ဗ"))).gotoAndStop(_loc1_);
            _loc2_++;
         }
      }
      
      public function get currentTab() : int
      {
         return this._efa86f04393db1595764ef96;
      }
      
      public function set currentTab(param1:int) : void
      {
         this._efa86f04393db1595764ef96 = param1;
      }
      
      public function _337e84f380d4f34b2cc6d46c(param1:int) : void
      {
         this._0b42d7b6ef0cee41dcd0872e[param1].visible = false;
      }
      
      public function _cfdf5a2911155c7c841ecedc(param1:int) : void
      {
         this._0b42d7b6ef0cee41dcd0872e[param1].visible = true;
      }
      
      public function _9e7eb22ae1ed0eaa7f8c6468(param1:int) : MovieClip
      {
         var _loc2_:MovieClip = null;
         if(this._0b42d7b6ef0cee41dcd0872e != null && this._0b42d7b6ef0cee41dcd0872e.length > param1)
         {
            _loc2_ = this._0b42d7b6ef0cee41dcd0872e[param1];
         }
         return _loc2_;
      }
   }
}

