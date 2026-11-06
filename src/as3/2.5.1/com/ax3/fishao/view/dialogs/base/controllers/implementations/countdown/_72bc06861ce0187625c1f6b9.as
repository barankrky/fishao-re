package com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._706b9e8a05fa6a971551d21d;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._9a5809d10c706185473ce85a;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._be33a8ab0fb8e47e034034ed;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._fe670b59adc2f0662a6f2bd1;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _72bc06861ce0187625c1f6b9 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _d6e7c3de8155631511682472:_9a5809d10c706185473ce85a;
      
      private var _ca28c84bb58af420f19ab148:String;
      
      private var _95a73f99a58882b0ba299039:String;
      
      private var _6d99317dc67a080f6c642d09:Array;
      
      private var _abc9ac9aad07541106398d07:uint;
      
      private var _24cd44b16848479663d29fa5:uint;
      
      private var _3e7f53bcdabdb45b499694b0:String;
      
      private var _a83f03b63d8529bf778ae818:Function;
      
      private var _9521bcb0f7ca4b7f6ac7040b:int;
      
      public function _72bc06861ce0187625c1f6b9(param1:DisplayObjectContainer, param2:uint, param3:uint)
      {
         this._abc9ac9aad07541106398d07 = param2;
         this._24cd44b16848479663d29fa5 = param3;
         this._d6e7c3de8155631511682472 = new _9a5809d10c706185473ce85a(this,param1);
         super(this._d6e7c3de8155631511682472);
         this.init();
      }
      
      public function set type(param1:String) : void
      {
         this._ca28c84bb58af420f19ab148 = param1;
         this._4dec008566d01c16c306252b();
      }
      
      public function get type() : String
      {
         return this._ca28c84bb58af420f19ab148;
      }
      
      public function set description(param1:String) : void
      {
         this._d6e7c3de8155631511682472.description = param1;
      }
      
      public function set onCompleteFunction(param1:Function) : void
      {
         this._a83f03b63d8529bf778ae818 = param1;
      }
      
      public function get onCompleteFunction() : Function
      {
         return this._a83f03b63d8529bf778ae818;
      }
      
      public function set timeLeft(param1:uint) : void
      {
         this._abc9ac9aad07541106398d07 = param1;
         this._5d59ba1ce7be3125320c2150();
      }
      
      public function set items(param1:Array) : void
      {
         this._28fe30df309d32bb8cfb2c35();
         this._6d99317dc67a080f6c642d09 = param1;
         this._d9a7785d036c4687b5d7abce();
         this._df33bea1cb381e049e343034();
      }
      
      public function get itemsLimit() : int
      {
         return this._9521bcb0f7ca4b7f6ac7040b;
      }
      
      public function set membersScoreType(param1:String) : void
      {
         this._3e7f53bcdabdb45b499694b0 = param1;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._d6e7c3de8155631511682472.buttonMaximize:
                  §§push(-514842922 ^ 0x54C75C3F ^ -1252281987 ^ 0xCCF394);
                  break;
               case this._d6e7c3de8155631511682472.buttonMinimize:
                  §§push(0x013C12A4 ^ 0x6E597BBC ^ -1780636434 ^ -88551945);
                  break;
               default:
                  §§push(0x337F9230 ^ -341148183 ^ 0x512F7F2D ^ -1980067594);
            }
            switch(§§pop())
            {
               case 0:
                  this._95a73f99a58882b0ba299039 = _be33a8ab0fb8e47e034034ed.ECS_MAXIMIZED;
                  this._63dc907328981da9940968e3();
                  break;
               case 1:
                  this._95a73f99a58882b0ba299039 = _be33a8ab0fb8e47e034034ed.ECS_MINIMIZED;
                  this._63dc907328981da9940968e3();
                  break;
               default:
                  Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捻挼掊揍挡掴掃捧揥揻揭掠揹掾掃掳掜揨揎挂揩按捐挴挜掯握捖捪揟挕揓捿捲捩掝挣措揊捧捻挴揩探掠捹揉掵挪捓掣採捇挓揰揵捘揄掱捴挼揨掀捹接掝探掂採捅掇挝揂揱掱揎揰揺掇掌挵捷揌掟捞描捂挮掔挭掰援挃挩捄挾揾挭挿揣挂挚挵挾捦捧捱捗掱掓挆探揯掲捁捐挐揕掷揔挘捬挊掯排掦捣掹挅挿掓捆推揌揶挔挺挆","挿掋授揲揘捜掞挷揉挄揪揀挆挷揉捇") + param1.toString());
            }
         }
         return _loc3_;
      }
      
      override public function _adef58f9002aa2a71e1a50b0(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._adef58f9002aa2a71e1a50b0(param1,param2);
         if(!_loc3_)
         {
            var _loc4_:_ebeac595a62fba6d6fcea1c2 = param1;
            switch(this._d6e7c3de8155631511682472 === _loc4_ ? 0x1D2118A8 ^ -763366983 ^ 0x74082793 ^ -1151938942 : 0x25A83A26 ^ 0x5BB100A7 ^ -1516833855 ^ -611333823)
            {
               case 0:
                  (this._d6e7c3de8155631511682472.source as Sprite).startDrag();
                  break;
               default:
                  Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙劏剥労剷刎劷勻勂劌勋劄勉劳剬劅勘劸劇劲劰剗勰剥剪勊効勹効勢剶勵办勖勠初勫别刎剕勮刚剃剑劗勜勥勏剡分剉剻勪剎剥勹功剆剻劅劒勖助勛勨剥刚劉剏刴勛劾剸勏剼删勀勤剸削剡剌勓勸勌勞刾刜劖劐分劽剁剥勿刷剜剀刣勁勇勔创刄剈刳勜劎努刼勠劬勱勔勵刐勱刷刌勉剮勰劗剹勴劫刞勴刜剧判劉剖勅刾勚剐勂勮刵刖剿勨刹動刂","剔劌剗劍創刵功剸劏勽務勅勷剛刾勭") + param2.target.toString());
            }
         }
         return _loc3_;
      }
      
      override public function _6f13cdf51d77d3ffa790eb14(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._adef58f9002aa2a71e1a50b0(param1,param2);
         if(!_loc3_)
         {
            var _loc4_:_ebeac595a62fba6d6fcea1c2 = param1;
            switch(this._d6e7c3de8155631511682472 === _loc4_ ? -2036400478 ^ -1232714743 ^ -183890070 ^ -988629567 : -299769420 ^ 0x5487E591 ^ -2035933529 ^ 0x3C001A83)
            {
               case 0:
                  (this._d6e7c3de8155631511682472.source as Sprite).stopDrag();
                  break;
               default:
                  Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝეၟၡဣ၁၂ჀီညჄ၀ု၊ဓၶစၘ၆ွၭဉဲ၃ဝၽჰၜဩ့჻ჴၔႴဟႶႸჳ႗ဪჺჼၦၑႶჽၕမဂႜၷგသლ჎ႏႴႿვ႓ჁႆႳ၀ႛლဪဥဩჀဉၮၲჯႽူႥၣႻႠၹၖ႑ႃၺ၏႔ႁၦၿဂၪძႪ၅ვၺ၌ႏ၇ၩၼၜၟဎဿ။႒ဣჽၹီ႓ძၖႂჁၦ჈ဌ၁ဍხာႥႳაီ၎ႆပႯႥჟႥჸခზ","ႳႣპၩႩၕြჰლဪჷၧၬရ჆჋") + param2.target.toString());
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._6d99317dc67a080f6c642d09 = [];
         this._9521bcb0f7ca4b7f6ac7040b = -667657183 ^ 0x66DEEB5F ^ -414064448 ^ 0x59BB57BB;
         this._95a73f99a58882b0ba299039 = _be33a8ab0fb8e47e034034ed.ECS_MINIMIZED;
         (this._d6e7c3de8155631511682472.source as Sprite).buttonMode = true;
         this._63dc907328981da9940968e3();
         this._5d59ba1ce7be3125320c2150();
      }
      
      private function _63dc907328981da9940968e3() : void
      {
         switch(this._95a73f99a58882b0ba299039)
         {
            case _be33a8ab0fb8e47e034034ed.ECS_MAXIMIZED:
               §§push(0x274C3496 ^ -908884139 ^ 0x0E3822BE ^ -525889155);
               break;
            case _be33a8ab0fb8e47e034034ed.ECS_MINIMIZED:
               §§push(-1094541283 ^ -1769453270 ^ -184493745 ^ -582340487);
               break;
            default:
               §§push(0x7757A2E8 ^ 0x4FB3808B ^ -1086805302 ^ -2015590229);
         }
         switch(§§pop())
         {
            case 0:
               this._d6e7c3de8155631511682472.viewMinimized.visible = false;
               this._d6e7c3de8155631511682472.viewMaximized.visible = true;
               this._d6e7c3de8155631511682472.buttonMinimize.visible = true;
               this._d6e7c3de8155631511682472.buttonMaximize.visible = false;
               break;
            case 1:
               this._d6e7c3de8155631511682472.viewMinimized.visible = true;
               this._d6e7c3de8155631511682472.viewMaximized.visible = false;
               this._d6e7c3de8155631511682472.buttonMinimize.visible = false;
               this._d6e7c3de8155631511682472.buttonMaximize.visible = true;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剏剪勈剙劗剷力剛劚劾劔別劄剀剟制勯勔勺劷别刼剴刧剢勻前努切劰劀助勜劸剧勛勖劒动刭剗副刼勦删劼刃刁剿刭勵勑勷剭劕剫剻切刂剛劔刭勶刮勋劓刘創劔列勮剢刁剛剛刮刺勬劇刌劝勦勘刴勜剿刿劬勶勄刺勈创剾募到勉剺刡勡刾劐勊则勂劀勩刦劏券劽剴劊勿剓別務刵剠剤劰勲劭刳劕勁勎刚刏勳割到勀剤剀刣勉募勄劌劬刄勔劋劽務刽助勇劦剃剣劏勐刀剑劓勢剈劐剩劄刻劈","刾勾勍勰办刖剽劆力勩剑勋切剉劇剥") + this._95a73f99a58882b0ba299039.toString());
         }
      }
      
      private function _4dec008566d01c16c306252b() : void
      {
         switch(this._ca28c84bb58af420f19ab148)
         {
            case _706b9e8a05fa6a971551d21d.ECT_TOURNAMENT:
               §§push(0x4780D9D1 ^ 0x4829486A ^ -366310727 ^ -444392702);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_MAINTANENCE:
               §§push(0x1DB1B314 ^ 0x3A35609C ^ 0x0EE0D9F8 ^ 0x29640A71);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_MINIGAME_BOB:
               §§push(0x1A10F07A ^ 0x76BFF79F ^ 0x0540568D ^ 0x69EF516A);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_MINIGAME_STEVE:
               §§push(0x6CC23D41 ^ -287102222 ^ 0x51F8B936 ^ -740708730);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_RAFT_WAITING:
               §§push(0x74B53C55 ^ -26584631 ^ 0x3259C3F4 ^ -1199135124);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_RAFT_FISHING:
               §§push(-1801691734 ^ 0x7FC79886 ^ -326693136 ^ 0x07DCCBD9);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_TROUT_FARM:
               §§push(-654069876 ^ 0x3D6E28E1 ^ -561188042 ^ 0x3AE1745D);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_BOAT:
               §§push(0x3B46578B ^ -1372389553 ^ 0x707AA542 ^ -452063871);
               break;
            case _706b9e8a05fa6a971551d21d.ECT_PYRAMID:
               §§push(0x649BC1D7 ^ 0x47533252 ^ 0x0AC5B339 ^ 0x290D40B4);
               break;
            default:
               §§push(-681674696 ^ -21258487 ^ -1526037928 ^ -1930468000);
         }
         switch(§§pop())
         {
            case 0:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_TOURNAMENT);
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            case 1:
               this._d6e7c3de8155631511682472.labelTime.y = 0x433E37B0 ^ -1259721255 ^ 0x55128EE4 ^ -1564044142;
               this._d6e7c3de8155631511682472.viewProgress.source.y = -1880847469 ^ -1538382349 ^ -1923921310 ^ -1493572579;
               this._d6e7c3de8155631511682472.labelDescription.y = 0x3A417C23 ^ -1571525342 ^ -389753348 ^ 0x70D1C4F0;
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_MAINTANENCE);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_MAINTANENCE;
               break;
            case 2:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_MINIGAME_BOB);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            case 3:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_MINIGAME_STEVE);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            case 4:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_RAFT_WAITING);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            case 5:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_RAFT_FISHING);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            case 6:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_TROUT_FARM);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            case 7:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_BOAT);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            case 8:
               this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COUNTDOWN_PYRAMID);
               this._6139e54aa9d9976449df7130();
               this._d6e7c3de8155631511682472.iconType = _fe670b59adc2f0662a6f2bd1.ECIT_CLOCK;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剤勗刷動刦剪剀勜勐勪劾前劄勀劅務刾劀勗勓剤勋剶剓務劯劖剝刔勞剷劵劻刊力劫劳効刨刋剈勰到刊劆刑劻刧勍剞剔则別効剆劄删刳劀創勸剩劲刾劂刑勜勃勌劲动剩勮劧剿劻前劤勞劼刎勷剪刕剟勼剰剟勜劧劣勓勣勞勜剦刻利剝刿剪刺刑剎劥剳勄創剄刎剬剝刃刃刢力刼勦割勓劅劖劆剜刊勬勅募剑剟剉刎勤刌創刉剠劗势剉刴勭創勿刞刡划剷剌剬刳刦","別勷勶剱劑劮勁剦剋割刴划剏剩劽劾") + this._ca28c84bb58af420f19ab148.toString());
         }
      }
      
      private function _5d59ba1ce7be3125320c2150() : void
      {
         var _loc1_:int = int(this._abc9ac9aad07541106398d07 / (0x19753384 ^ -1699228928 ^ 0x203DD6EF ^ -1543555497));
         var _loc2_:int = this._abc9ac9aad07541106398d07 % (0x3AF79C0C ^ 0x48C4A6A6 ^ 0x47296640 ^ 0x351A5CD6);
         this._d6e7c3de8155631511682472.labelTime.text = (_loc1_ < (0x21B44F1F ^ 0x16C8AD94 ^ 0x152C0B01 ^ 0x2250E980) ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剜剱刉劥剟劽刬劘劙勜","剶劝勄劘創刭劌劃劫劗创劗刵则剮劌") : "") + _loc1_.toString() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挩挆揃揋挙掱揈挦捍揃","揋捵揞揤掰掃据挭揪挃掁挴挟揨损挛") + (_loc2_ < (0x1F899188 ^ -264422451 ^ -1861128802 ^ 0x7EA5C7D1) ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("推挂揍捖挧捸挪挃揮掛","掸捘挲挽捿挚揶揝挮挓掘捀捻挅换揞") : "") + _loc2_.toString();
         this._d6e7c3de8155631511682472.viewProgress.percent = limit(int((0x31B936D6 ^ -848419365 ^ -1540881695 ^ 0x58FF1188) * this._abc9ac9aad07541106398d07 / this._24cd44b16848479663d29fa5),0x4BA0F949 ^ 0x2B86BBE8 ^ 0x36FE870D ^ 0x56D8C5AD,-1847029906 ^ -1651485514 ^ -479485164 ^ -283936600);
         if(_loc1_ == (0x3504FE09 ^ -1900908103 ^ -1135384342 ^ 0x07E5E75A))
         {
            if(_loc2_ >= (0x73074611 ^ 0x7095AFAB ^ 0x6853F0E6 ^ 0x6BC1195D) && _loc2_ <= (-180200110 ^ 0x580D447D ^ -119774556 ^ 0x55937B81))
            {
               _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_062_UI_Timer_count_normal);
            }
            else if(_loc2_ == (0x4D5133DB ^ -287216409 ^ -1233853979 ^ 0x15C4BED9))
            {
               _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_062_UI_Timer_count_end);
            }
         }
      }
      
      private function _d9a7785d036c4687b5d7abce() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._6d99317dc67a080f6c642d09)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._d6e7c3de8155631511682472.items = _loc2_;
      }
      
      private function _df33bea1cb381e049e343034() : void
      {
         var _loc1_:_c4969a6bb20461a897733432 = null;
         for each(_loc1_ in this._6d99317dc67a080f6c642d09)
         {
            _loc1_._6d5360dc76898e470b88eb2e();
         }
      }
      
      public function _6139e54aa9d9976449df7130() : void
      {
         this._d6e7c3de8155631511682472.buttonMaximize.visible = false;
      }
      
      private function _28fe30df309d32bb8cfb2c35() : void
      {
         var _loc1_:_c4969a6bb20461a897733432 = null;
         for each(_loc1_ in this._6d99317dc67a080f6c642d09)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
            _loc1_ = null;
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._a83f03b63d8529bf778ae818 = null;
         this._ca28c84bb58af420f19ab148 = null;
         this._95a73f99a58882b0ba299039 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

