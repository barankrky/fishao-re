package com.ax3.fishao.view.wrappers.communication
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao.control.managers._0dea9d20559cb8ec5bb639be;
   import com.ax3.fishao.model.types._5fcc10a7fc801b97496e91aa;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.communication.helpers.base._a7dc8a3213f2486db7d1e5d8;
   import com.ax3.fishao.view.wrappers.communication.helpers.base._b07da6df1dcbb1425c204a07;
   import com.ax3.fishao.view.wrappers.impl._5af8e4f295f27d17ff5d7de4;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import com.ax3.utils.empty;
   import com.ax3.utils.math.limit;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   
   public class _1e303f4e65166d330dde1510 extends Sprite
   {
      
      public var type:String;
      
      public var originalSubject:String;
      
      private var _asset:MovieClip;
      
      private var _33e17f3112751be16e47a218:TextField;
      
      private var _50c077876e5129351b3b6dba:String;
      
      private var _a097972b3ea6ade5efbabe2a:TextField;
      
      private var _3e7769ebfebf9d57ba18b5b5:_5af8e4f295f27d17ff5d7de4;
      
      private var _cb7ba0b5b46fe1724c3066c0:TextField;
      
      private var _dc8c511263bea804f1c81605:int;
      
      private var _8411077f7745f238f9aaf8c5:_eb2314ffc37429732989b460;
      
      private var _79b892cbb5da6b83ebf7895b:int;
      
      private var _68c31e288443fdbdc5a9f8df:Function;
      
      private var _421811eb4d752e6d58ed4b0a:MovieClip;
      
      private var _3cb1e953b6c1eca245ee3892:Boolean;
      
      private var _a03138d0aa5fe30023ecc0bc:Boolean;
      
      private var _cb80eeb36f740f817ee53e6f:String;
      
      private var _ce5d7ccb3bed4875f3c530f7:Boolean;
      
      private var _f4728fa11c50d46b2cedf989:Dictionary;
      
      public function _1e303f4e65166d330dde1510(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         MovieClip(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挆掮捔挍捸挆挦捹排挅挮揠捊援揨捬掐掭掯挞挭掟揭捏揲掯揚捊挍揟揓揈挓揕指挐挪捺挓揑","掿掽捨揩挀捧揃揸掎掱挥挑掂捹揮挾"))).buttonMode = true;
         MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႍၔ჈ၕဥმႶშၟဖဆၮჳჇპြၽႠႣ၍ျრძ၇ძჍႣჹშၥღႱჅ၍ံၭႛၲကႵ","ჴၾჶაဩဇყဎညთႝၹျႢႋၺ"))).useHandCursor = true;
         this._33e17f3112751be16e47a218 = TextField(MovieClip(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("排挧挼按挃挭挤捣捪挔揋挻捧掙掹捚掬揽掚掮掦捁损掅掁換挨指捞插掬揢挐挶捊揦挷捃捸揿","掍挩挒捛捨揵挒插掲揘捠掣挮挵掳掝"))).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("初剼剓剃刟務勽刊剩刐劒勪勼刜刭刳刔勖刾剆刞判","剖刭劏分剶劬勺劥劧判勅别切剹劘剳")));
         this._33e17f3112751be16e47a218.mouseEnabled = false;
         this._421811eb4d752e6d58ed4b0a = MovieClip(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捅揣捞挱挋換挃揨掱挷挅挏揶掏捇掸揝挠挗掐揿提揸捎揹捸揅挃挙挢捪揽挏揝掠掁掉揘","掩揍揿揣接挾掱挖掤捴提掙挬掝揻指")));
         this._421811eb4d752e6d58ed4b0a.buttonMode = true;
         this._421811eb4d752e6d58ed4b0a.useHandCursor = true;
         this._421811eb4d752e6d58ed4b0a.addEventListener(MouseEvent.CLICK,this._a387495b34d9a0a8b97272e9);
         this._a097972b3ea6ade5efbabe2a = TextField(MovieClip(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("力剘勱勮剚刿刧劊刎剸劵剺剦劬劭劺募勑办勌到删刬剂刘劻劰刯劄剤劕剏分到勻剢勞勉","勄剸剕刪劰劃力勬剓剽刴劖劬劊剏剖"))).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捕揦挞挚措掃揮掔挀掱推揳揈揲捹描揍挥揟掙","揚掑挅捿掕挂挔揓挿掕捨捞揺捏揪揂")));
         this._a097972b3ea6ade5efbabe2a.mouseEnabled = false;
         MovieClip(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揢掺揲揎捿揅挱捱掐按挚換揊掼掬捸揖捀捡损掸掰揹挬捤挐挵換挾捲揫挵掘捍","捞捺揊揯揪揵捗挷挊掷捍插捓揂掎揠"))).buttonMode = true;
         MovieClip(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭剬刎勂剉勎勂勭剧勨剋动剠勫勲劀剑剱刪劲勽刎剓勹剌劋劎励加划剣勄刅刦","勿剪剞劬刜劺劍刲剞刨剋剱刔勪则劃"))).useHandCursor = true;
         this._cb7ba0b5b46fe1724c3066c0 = TextField(MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ზၹူဝြპძေႜთვ၊ჸჂუၨနმႄ၏ဵၨႷსၦၷၽၔဥႄၰ჈ရႼ","ငာႁၥၐၥႾၛ၊ဥჳႍှ၎ဍဥ"))).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀ႞ვအၸႪၮၡჟၵခ႞჏ၜၲ჻","ၚဟၖၸၟၮိსკბၟჍჺ္Ⴛ჊")));
         this._cb7ba0b5b46fe1724c3066c0.mouseEnabled = true;
         this._8411077f7745f238f9aaf8c5 = new _eb2314ffc37429732989b460();
         this._8411077f7745f238f9aaf8c5.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剪刎剆刽勲勸勢刅剉剆劊勫刐割勣刿","勞剄勛剨劁刨勞勎劒劦利剦刽剮刮办")):""};
         this._8411077f7745f238f9aaf8c5.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this._cb7ba0b5b46fe1724c3066c0,this._8411077f7745f238f9aaf8c5,true);
         this._3e7769ebfebf9d57ba18b5b5 = new _5af8e4f295f27d17ff5d7de4();
         this._3e7769ebfebf9d57ba18b5b5.process(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掐掽掸挐揶捏揵捛掶持接揕捀提揶掫挅揇挗挬掄捒揨捪掇掇","揚挗揟掚掱挂掌揧捬捍捓挽挺捑挿捕")));
         buttonMode = true;
         useHandCursor = true;
         this._5fed8de0d0808c71c666ca0b();
      }
      
      private function _5fed8de0d0808c71c666ca0b() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = [_5fcc10a7fc801b97496e91aa.EVENT_END,_5fcc10a7fc801b97496e91aa.CLUB_TOURNAMENT_END,_5fcc10a7fc801b97496e91aa.CLUB_GOAL_COMPLETED,_5fcc10a7fc801b97496e91aa.CLUB_MEMBER_KICKED,_5fcc10a7fc801b97496e91aa.CLUB_MEMBER_APPROVED,_5fcc10a7fc801b97496e91aa.CLUB_MEMBER_REJECTED,_5fcc10a7fc801b97496e91aa.CLUB_FISH_UNLOCKED];
         this._f4728fa11c50d46b2cedf989 = new Dictionary(true);
         for each(_loc1_ in _loc2_)
         {
            this._f4728fa11c50d46b2cedf989[_loc1_] = _b07da6df1dcbb1425c204a07._b12d66f5f98ea546d90fe27a(_loc1_);
         }
      }
      
      public function set handler(param1:Function) : void
      {
         var _loc2_:int = -1748227537 ^ 0x4EAD0F05 ^ 0x320412AB ^ 0x3AED1A35;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x55D39518 ^ -553013308 ^ 0x490EFF96 ^ 0x125CE8FE))
            {
               case 0:
                  if(param1 != null)
                  {
                     _loc2_ = 0x1BEA9CDB ^ 0x566C14E7 ^ 0x4BA63FCF ^ -676816315;
                  }
                  else
                  {
                     _loc2_ = -771889210 ^ 0x4315C0AD ^ 0x3D5E9C3D ^ 0x7E3E96E1;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._68c31e288443fdbdc5a9f8df = param1;
                  MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჻၂ရႊေၝႧქၾႤ၃ခဈွဨၭჽიဗၒြၣၫ၄ၱၶს႖ႢဍႻအၑ႙ဘ႙ၠჹ჋႘","ၛႤ၏ဉႷဟႊႄဳჄ႗ေၑ჏დဍ"))).addEventListener(MouseEvent.CLICK,this._68c31e288443fdbdc5a9f8df);
                  MovieClip(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掴揝揬捦掫挼揞挄捝掛挕揩捁指挾揔挱掃挭揳挟挄捻掷揁捦措採掇挬挎揀捘挨","揌挶指挻掕掗捑掵捙掼捐掞揕捵掅挘"))).addEventListener(MouseEvent.CLICK,this._68c31e288443fdbdc5a9f8df);
                  _loc2_ = 0x3D5D6D60 ^ 0x42CCCA1B ^ 0x59DF794B ^ -137956475;
                  break;
               case 3:
                  MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ူၷၐხ၅ჾ၈၄ၥႯါჄკჲჽဎၩბေအဇၟြ၊ხიდჭ჏ჹ၈၏မႨჭ႞ၒၹၩႳ","ရႏႅ႐ၴၠတჹჵე႒တ၆პဈႂ"))).removeEventListener(MouseEvent.CLICK,this._68c31e288443fdbdc5a9f8df);
                  MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ღဌဘဓდႎခმာဌბၑဃနၟႎဧႪკ၈ဵჰၡႨႤဧႤႜხၰსႱႉ၉","ოၺၬ႔ၮဂႏႩქ჈၍჏ၽႋლႼ"))).removeEventListener(MouseEvent.CLICK,this._68c31e288443fdbdc5a9f8df);
                  this._68c31e288443fdbdc5a9f8df = param1;
                  _loc2_ = 0x2928A909 ^ -1984177643 ^ 0x383FA391 ^ 0x4924FD38;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function update(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Object, param7:Boolean) : void
      {
         this._79b892cbb5da6b83ebf7895b = param1;
         this.isNew = param6.isNew;
         this._a03138d0aa5fe30023ecc0bc = param6.isDeleted;
         this.originalSubject = param2;
         this.type = param6.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჰၰၢႼႴၭႺფ჻ၚუႠრႣၕၡ","ပဴယၭოါ၅ძ჻ဃၷჶႩၔႮိ")) ? param6[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("პၰნၛဍႩႺြ჈Ⴓႀၮ၏მ၎Ⴞ","ခ်ႜၓႽ၌ုစႲၔဣဨსი႞ဓ")] : _5fcc10a7fc801b97496e91aa.USUAL;
         this.subject = "";
         this._33e17f3112751be16e47a218.width = 0x30599217 ^ -1972238876 ^ 0x1771069B ^ -1386573703;
         if(this.type in this._f4728fa11c50d46b2cedf989)
         {
            this._ffb4f71dc766ca8395640e03(param2,param4);
         }
         else
         {
            this._ca94846f300196d7b38d673e(param2,param4,param3,param6);
         }
         this._a097972b3ea6ade5efbabe2a.text = param3;
         if(this._a097972b3ea6ade5efbabe2a.text == "" && this._a097972b3ea6ade5efbabe2a.text.toLowerCase() == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揯掩揬掷揟捍揳捘揥揌挝捉捴揦挍挴捽挮授掽","措捏捓指掃挻挷挮捬挅挳揹掌揧捇捿"))
         {
            this._421811eb4d752e6d58ed4b0a.useHandCursor = false;
            this._421811eb4d752e6d58ed4b0a.mouseEnabled = false;
         }
         this._a097972b3ea6ade5efbabe2a.width = limit(this._a097972b3ea6ade5efbabe2a.textWidth + (0x7414CC67 ^ 0x76E72025 ^ -887197546 ^ -907174703),-66873058 ^ 0x552C9262 ^ -594869412 ^ 0x75A40820,0x7F9BC7F0 ^ 0x546DEDAA ^ 0x58E2B28B ^ 0x7314984D);
         this._cb7ba0b5b46fe1724c3066c0.text = _c2ad9d37d7be0097d6d2e977._8b1d7fc46fc7ed5e413daf7a(param5);
         this._dc8c511263bea804f1c81605 = param5;
         this._cb7ba0b5b46fe1724c3066c0.width = limit(this._cb7ba0b5b46fe1724c3066c0.textWidth + (-862833348 ^ 0x5583D5B0 ^ -1837088326 ^ 0x0B91A133),0x51624C3C ^ -2123243175 ^ 0x65448541 ^ -1252579292,0x1CB36F99 ^ -737660505 ^ 0x1CF9B3E7 ^ -733811279);
         this._8411077f7745f238f9aaf8c5.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剿剼剓判剬勢刈勫勍勦勉删剮勡勘劚","勾勥到劶剧勆剀勉分刈勓别劉刃刞劀")):_c2ad9d37d7be0097d6d2e977._e7ea8192c5aef265a8636557(param5,true)};
         this._3e7769ebfebf9d57ba18b5b5.state = _89027603939c39853027fd04.UNSELECTED;
         this._3e7769ebfebf9d57ba18b5b5.visible = !this._a03138d0aa5fe30023ecc0bc;
         this._33e17f3112751be16e47a218.width = limit(this._33e17f3112751be16e47a218.textWidth + (0x10728461 ^ 0x11CD1C94 ^ 0x7D83AF13 ^ 0x7C3C37E3),0x7FF1743E ^ -929436947 ^ -932095330 ^ 0x7F19C429,-672889236 ^ -861423232 ^ -1013325264 ^ -656745267);
         this._ce5d7ccb3bed4875f3c530f7 = param7;
      }
      
      private function _ffb4f71dc766ca8395640e03(param1:String, param2:String) : void
      {
         var _loc3_:_a7dc8a3213f2486db7d1e5d8 = this._f4728fa11c50d46b2cedf989[this.type];
         _loc3_._a041ffa049d7e26753d6bdbc(param1,param2);
         this.subject = _loc3_.subject;
         this._50c077876e5129351b3b6dba = _loc3_.body;
      }
      
      private function _ca94846f300196d7b38d673e(param1:String, param2:String, param3:String, param4:Object) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:String = param4.to;
         switch(this.type)
         {
            case _5fcc10a7fc801b97496e91aa.FRIENDSHIP:
               §§push(-2037009136 ^ 0x1B4C93B0 ^ -2082279717 ^ 0x1E3BC87B);
               break;
            case _5fcc10a7fc801b97496e91aa.ADMIN_MSG:
               §§push(0x78D78EE2 ^ -188088540 ^ 0x343ADD8D ^ -1205556150);
               break;
            case _5fcc10a7fc801b97496e91aa.BAN_MSG:
               §§push(0x5BAC96F3 ^ 0x5196B772 ^ 0x4ADEC193 ^ 0x40E4E010);
               break;
            case _5fcc10a7fc801b97496e91aa.FISHCOINS:
               §§push(-1875970325 ^ -510298436 ^ 0x35CA137F ^ 0x4471932B);
               break;
            default:
               §§push(-968201965 ^ -1540031076 ^ 0x462DED61 ^ 0x245379EA);
         }
         switch(§§pop())
         {
            case 0:
               if(param1 == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("募功勺務刅剴劥剚勬割剐利加副刾勾勚削勻剘","労勨刲刢剗効劬刟刯剨劒勮劥勅剱劵"))
               {
                  this.subject = _c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剥劗刑剳労切剑剩刣剳勋划前勄劀刅刘刡劻刋剽勺勏剰剜势劀勭刻剽劁刡勧剙劂剜勇刞劗刕刀刚","劉剔刉刟刉刋刨剃効勽剥刿劾勍剫刼"),{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("势勈剑刎劤剔労剼勶勡勻刉切勚動剋刿剎劚勁","刋劑剸勦劍劏勆剱劜刹劰刊劓勴剒勭")):param3});
                  this._50c077876e5129351b3b6dba = _c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣劲劎刪勶劼券募劳列剴删剔劀刺劘刣剄刳劈劆効劳剏刎剫剜劧勠勋勲刐刀勨劔刮","剆創刁刊刁动勼剛刲刽勣刡務勊剓勛"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၈პၗႲၴၴီဃႉ႘ჸ၏ဳ၏ၨဂჟ჋Ⴓျ","ႽყჃႰჅြღႽჲႊၣႻၦဪရშ")):param3});
               }
               else if(param1 == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ိ႘ყ႞့့ါႬခეႪၙၼီყჼღပ၆Ⴑჰၣဇჹ","ႇႃႝႁၨ၁ႛႤჄၺၑႏၸჽႳႠ"))
               {
                  this.subject = _c2ad9d37d7be0097d6d2e977.template(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჳၲဂြေဵ၄ၐ၉სსთေშႏწႸჩჩႊႶ჋၈ჭჃဢწ႟ၚႾ႖ჲႡၨစჽჵစდၑကႄႄၸအგဳ၉ၗ႖ုၤႷၕႼჴဒၽ","ၺၨႿႚဦ႙ႴႿ္ნჾမზႢုၴ"),{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨勉劙劑刵劥刴勵勊剗刦刑刈刼劜劘刔剢刑劲","勹剷剻剀効剅剋勻剡勦剎刔剖刀刢勃")):param3});
                  this._50c077876e5129351b3b6dba = _c2ad9d37d7be0097d6d2e977.template(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("採推掴掸揵捵揥掤掁掯挎掲挖挮挵据揦捒挌捸揳挠挟捈接挨捯掚挚掦捱掲捣揲挠挚捨揼換捈捃挗掵揕揮掝掁揦揉捧挱掹","揔掁掻捥掁揧揢捲揮挀捠掺掄捩描揆"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掍掖揪挤掋揝掠掊换挮指揻掭挹掴捭揵挕挥捡","挹捤捈捐揘掤揯掻揆捐挶掮揯掜描挅")):param3});
               }
               this._421811eb4d752e6d58ed4b0a.useHandCursor = true;
               this._421811eb4d752e6d58ed4b0a.mouseEnabled = true;
               break;
            case 1:
               this.subject = param1;
               _loc5_ = JSON.parse(param2);
               this._50c077876e5129351b3b6dba = _c2ad9d37d7be0097d6d2e977.get(_loc5_.template).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴎ჎ဘႅဋျႥၼခႩခთ႐့၏ၛၸၢ","ၳ႖ღဏဢჀ႗ၑჱႌ၅ႜဤဍြၐ"),_loc5_.msg);
               break;
            case 2:
               if(this.subject == "")
               {
                  this.subject = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剜刚剴勄劆劐剛功剪劉創勊功劥劻労勴劵割劽勪勸劝刢勻勻勆勤劇勀勚劅勞剃","割勲劼剉劾劳剚劢勮刜劾剕劯劵劢剆") + param1);
               }
               _loc6_ = JSON.parse(param2);
               this._50c077876e5129351b3b6dba = _c2ad9d37d7be0097d6d2e977.get(_loc6_.template);
               if(empty(_loc8_))
               {
                  this._50c077876e5129351b3b6dba = this._50c077876e5129351b3b6dba.replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("စჸၦცဈဢჇ၀ာၼნႅံဩႧ჎ၻძၙჼႬ჆ႯნိსႩႀ","ၙဳჁ၉ဨ႕ငၪလဥံჩဘჂ္Ⴈ"),app.user.username);
               }
               else
               {
                  this._50c077876e5129351b3b6dba = this._50c077876e5129351b3b6dba.replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖၤဈၶၣსစႈဿၵ႑ზကဘဃႩႨႿမံႜგႡၚၣဋႢၾ","းუသၬၮႮၴနჀြ႑ၣွწჍ჎"),_loc8_);
               }
               this._421811eb4d752e6d58ed4b0a.useHandCursor = this._421811eb4d752e6d58ed4b0a.mouseEnabled = false;
               for(_loc7_ in _loc6_)
               {
                  if(_loc7_ == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၉ႛ၇Ⴂ႓ე჻ၳ၁၄ၜၫႮწႈဗჯიჍჭၿီႳწိႛდხოჹჯၶ","ဇ၃၃ဏ႐ჼჰဥဉၹႥႩჿწၚ္"))
                  {
                     _loc6_[_loc7_] = _c2ad9d37d7be0097d6d2e977._9c73905d95ecb7dae39a4243(_loc6_[_loc7_]);
                  }
                  this._50c077876e5129351b3b6dba = this._50c077876e5129351b3b6dba.replace(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捁掕揣掠揥揞掇掔捭挶","捍揼揋採掺揋掼挌換捯挆捝揇掜掴挆") + _loc7_.toUpperCase() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勜别剔刑勧剫労刏勜剬","切勵功剻刮划剴劲刈刅剘劲努勒務剰"),_loc6_[_loc7_]);
               }
               break;
            case 3:
               this.subject = param1;
               this._50c077876e5129351b3b6dba = param2;
               this._421811eb4d752e6d58ed4b0a.useHandCursor = false;
               this._421811eb4d752e6d58ed4b0a.mouseEnabled = false;
               break;
            default:
               this.subject = param1;
               this._50c077876e5129351b3b6dba = param2;
               this._421811eb4d752e6d58ed4b0a.useHandCursor = true;
               this._421811eb4d752e6d58ed4b0a.mouseEnabled = true;
         }
      }
      
      public function get isSelected() : Boolean
      {
         return this._3e7769ebfebf9d57ba18b5b5.isSelected;
      }
      
      public function get id() : int
      {
         return this._79b892cbb5da6b83ebf7895b;
      }
      
      public function get subject() : String
      {
         return this._33e17f3112751be16e47a218.text;
      }
      
      private function _a387495b34d9a0a8b97272e9(param1:MouseEvent) : void
      {
         if(this._a097972b3ea6ade5efbabe2a.text != "" && this._a097972b3ea6ade5efbabe2a.text.toLowerCase() != _95da7f1147c669197db81295._8f4866de82b7339154180ecb("列劭剩勂剈剾劖初劅制刈剢勤剤勱剜剧勚勷劵","劝刈初劵刴勿劧券勼勂創剤劔剦勘力"))
         {
            _fa8d5efc34d8920757369351._90c56d60a54f9a591b9a2af2(this._a097972b3ea6ade5efbabe2a.text);
         }
      }
      
      public function get body() : String
      {
         return this._50c077876e5129351b3b6dba;
      }
      
      public function get sender() : String
      {
         return this._a097972b3ea6ade5efbabe2a.text;
      }
      
      public function get timeAgo() : String
      {
         return this._cb7ba0b5b46fe1724c3066c0.text;
      }
      
      public function get checkbox() : _5af8e4f295f27d17ff5d7de4
      {
         return this._3e7769ebfebf9d57ba18b5b5;
      }
      
      public function get isNew() : Boolean
      {
         return this._3cb1e953b6c1eca245ee3892;
      }
      
      public function set isNew(param1:Boolean) : void
      {
         this._3cb1e953b6c1eca245ee3892 = param1;
         this._07c9b6f8965fb73893cc710a();
      }
      
      public function set subject(param1:String) : void
      {
         this._cb80eeb36f740f817ee53e6f = param1;
         this._07c9b6f8965fb73893cc710a();
      }
      
      public function get timeAgoSec() : int
      {
         return this._dc8c511263bea804f1c81605;
      }
      
      private function _07c9b6f8965fb73893cc710a() : void
      {
         this._33e17f3112751be16e47a218.text = (this._a03138d0aa5fe30023ecc0bc ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႟ဂ჎ဨბႥႛၳႼႲႛဦლჼဃၲႸ္ტ။","ဗၝჄႡჴၐჱးჃ၀ာဂ၈ႇႄျ") : "") + this._cb80eeb36f740f817ee53e6f;
         var _loc1_:TextFormat = this._33e17f3112751be16e47a218.defaultTextFormat;
         _loc1_.font = this._3cb1e953b6c1eca245ee3892 ? _0dea9d20559cb8ec5bb639be.IS_NEW_MESSAGE_FONT : _0dea9d20559cb8ec5bb639be.IS_READED_MESSAGE_FONT;
         this._33e17f3112751be16e47a218.defaultTextFormat = _loc1_;
      }
      
      public function _99b37171633e8785cb20c980() : void
      {
         this._79b892cbb5da6b83ebf7895b = -942835232 ^ -332203819 ^ 0x10003652 ^ -1006614376;
      }
      
      public function get isDeleted() : Boolean
      {
         return this._a03138d0aa5fe30023ecc0bc;
      }
      
      public function get isInbox() : Boolean
      {
         return this._ce5d7ccb3bed4875f3c530f7;
      }
      
      public function set isDeleted(param1:Boolean) : void
      {
         this._a03138d0aa5fe30023ecc0bc = param1;
         this._07c9b6f8965fb73893cc710a();
      }
   }
}

