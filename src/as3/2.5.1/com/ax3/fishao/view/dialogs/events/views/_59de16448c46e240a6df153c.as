package com.ax3.fishao.view.dialogs.events.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.events.model._9d2dc0500fb727297903d3c5;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _59de16448c46e240a6df153c extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _5707fbf92059f531f70cf4cc:DisplayObjectContainer;
      
      private var _18145cafc818a839e36ec76e:Array;
      
      private var _28b1cdac68bd380ad722c19a:uint;
      
      private var _4e165934682c2a851377d976:TextField;
      
      private var _c3c1da178e2f3e8fb307a84a:FrameButtonWrapper;
      
      private var _0d7312fc58927025c763b283:FrameButtonWrapper;
      
      private var _8aad5838eb6d50e6488b1a0d:TextField;
      
      private var _b95292dc6fdfbcac6cf56fee:TextField;
      
      private var _6486d0b9ac161d279bc457ee:TextField;
      
      private var _8b57a8d19ee118c830b823a1:TextField;
      
      private var _b820dd8a8382395e5fd44ea4:_73899a4de8f83c8d2c26f545;
      
      public function _59de16448c46e240a6df153c(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._5707fbf92059f531f70cf4cc = param2;
         super(param1,this._5707fbf92059f531f70cf4cc);
         this.init();
      }
      
      public function get buttonPrev() : FrameButtonWrapper
      {
         return this._c3c1da178e2f3e8fb307a84a;
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._0d7312fc58927025c763b283;
      }
      
      public function get labelPage() : TextField
      {
         return this._4e165934682c2a851377d976;
      }
      
      public function get itemsOnPage() : uint
      {
         return this._28b1cdac68bd380ad722c19a;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:Point = null;
         var _loc3_:_ebeac595a62fba6d6fcea1c2 = null;
         if(this._18145cafc818a839e36ec76e == param1)
         {
            return;
         }
         this._18145cafc818a839e36ec76e = param1;
         var _loc4_:Point = new Point(-110043408 ^ 0x4426396E ^ 0x459770FF ^ -121530527,-628004799 ^ -469751624 ^ -812939169 ^ -249902972);
         _loc2_ = new Point(_loc4_.x,_loc4_.y);
         var _loc5_:int = 0x557F568F ^ -1305355912 ^ -890374079 ^ 0x2DA377B6;
         while(_loc5_ < this._18145cafc818a839e36ec76e.length)
         {
            if(_loc5_ % this._28b1cdac68bd380ad722c19a == (0x5F048B62 ^ -117372948 ^ -1488380265 ^ 0x014C9219))
            {
               _loc2_.y = _loc4_.y;
            }
            _loc3_ = this._18145cafc818a839e36ec76e[_loc5_];
            this._5707fbf92059f531f70cf4cc.addChild(_loc3_.source);
            _loc3_.source.x = _loc2_.x;
            _loc3_.source.y = _loc2_.y;
            _loc2_.y += _loc3_.source.height;
            _loc5_++;
         }
      }
      
      public function set eventType(param1:String) : void
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH_SHINIES:
               §§push(-503271269 ^ -1949620165 ^ -336604848 ^ -2111550992);
               break;
            case _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH_WITH_STAR:
               §§push(-1519569214 ^ 0x350CCD03 ^ -935741217 ^ 0x5858431F);
               break;
            case _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH_WITH_TYPE:
               §§push(0x20214A8A ^ 0x22A91F40 ^ 0x597CFEAD ^ 0x5BF4AB65);
               break;
            case _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH:
               §§push(0x7A86D440 ^ -407290452 ^ -1683228382 ^ 0x069410CD);
               break;
            case _9d2dc0500fb727297903d3c5.EET_WIN_MOST_TOURNAMENTS:
               §§push(0x7FA692C6 ^ -1976927541 ^ 0x1E759D74 ^ -335972995);
               break;
            case _9d2dc0500fb727297903d3c5.EET_COLLECT_MOST_SHELLS:
               §§push(0x200D4A8D ^ 0x40A633C7 ^ 0x7B1F2522 ^ 0x1BB45C6D);
               break;
            case _9d2dc0500fb727297903d3c5.EET_USE_MOST_GADGETS:
               §§push(0x4C49E48E ^ 0x0DD79B4D ^ -1295268829 ^ -212485146);
               break;
            case _9d2dc0500fb727297903d3c5.EET_COLLECT_MOST_FRUITS:
               §§push(-1246480166 ^ -1940749040 ^ 0x0C26518B ^ 0x35C0EC46);
               break;
            case _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH:
               §§push(-2059949244 ^ 0x31AD0FE5 ^ 0x46B90010 ^ -232545095);
               break;
            case _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH_WITH_TYPE:
               §§push(-775793995 ^ 0x4260F7C4 ^ -697686859 ^ 0x45C881CD);
               break;
            case _9d2dc0500fb727297903d3c5.EET_SPEND_MOST_FISHCOINS:
               §§push(0x2EA9F6A5 ^ 0x3AD17620 ^ -1198862121 ^ -1393405864);
               break;
            case _9d2dc0500fb727297903d3c5.EET_SPEND_MOST_FISHBUCKS:
               §§push(-276104274 ^ 0x39B8524F ^ 0x6222EDD0 ^ -1274002374);
               break;
            case _9d2dc0500fb727297903d3c5.EET_GAIN_MOST_EXP:
               §§push(0x382EA4AF ^ -1240598113 ^ 0x4FE4AA9E ^ -1043859550);
               break;
            default:
               §§push(0x6AFA2292 ^ -1323754836 ^ -414601572 ^ 0x3CAA96AF);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_CAUGHT;
               break;
            case 4:
            case 5:
            case 6:
            case 7:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_COUNT;
               break;
            case 8:
            case 9:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_SIZE;
               break;
            case 10:
            case 11:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_SPEND;
               break;
            case 12:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_EXP;
               break;
            default:
               Debug.assert(false);
         }
         if(param1 == _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH)
         {
            this._6486d0b9ac161d279bc457ee.width = -418017189 ^ -411457284 ^ -1937743743 ^ -1930667914;
            this._8b57a8d19ee118c830b823a1.visible = true;
         }
         else
         {
            this._6486d0b9ac161d279bc457ee.width = 0x76A6E954 ^ -1704835357 ^ -654500173 ^ 0x3439B01C;
            this._8b57a8d19ee118c830b823a1.visible = false;
         }
         this._6486d0b9ac161d279bc457ee.text = _c2ad9d37d7be0097d6d2e977.get(_loc2_);
         this._8aad5838eb6d50e6488b1a0d.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_POSITION);
         this._b95292dc6fdfbcac6cf56fee.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_NAME);
         this._8b57a8d19ee118c830b823a1.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_NAME_FISH);
         this._b820dd8a8382395e5fd44ea4.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_MEMBERS_REWARD);
      }
      
      private function init() : void
      {
         var labelReward:TextField = null;
         this._18145cafc818a839e36ec76e = [];
         this._28b1cdac68bd380ad722c19a = 0x397B0A51 ^ -1483211388 ^ -309579091 ^ 0x7360C570;
         this._4e165934682c2a851377d976 = Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劁切勘勰劕勦勗剤剁刧劶剧勒勧刄剔勍功勆剬剑剏剁創剣剋","初剙勎劎刿剠剝劅勂劬勄功别勽剡刈"),TextField);
         this._0d7312fc58927025c763b283 = new FrameButtonWrapper();
         this._0d7312fc58927025c763b283.process(Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗剶勱剉刲剉勷劤刿勱劃剦动刓剧劜勭刎剽刚剆剽勐劄刈勠到刊","劼剛剢勌劚刓划刕勥劒剚刁刀剶刿刣"),DisplayObjectContainer));
         this._0d7312fc58927025c763b283.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_0d7312fc58927025c763b283,param1);
         };
         this._c3c1da178e2f3e8fb307a84a = new FrameButtonWrapper();
         this._c3c1da178e2f3e8fb307a84a.process(Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挌挒挍挸掁捼挼捭捻揃挨捃揤提掀换挲捝损挍挢揆揿捣揹捗揿揲","掶掹揶捄挥掟揠挧挴掶揹掍揿掖揌揶"),DisplayObjectContainer));
         this._c3c1da178e2f3e8fb307a84a.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_c3c1da178e2f3e8fb307a84a,param1);
         };
         this._8aad5838eb6d50e6488b1a0d = Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刲刼勲刂划刁刅勺劝前前刋剀努刂到勍劜刓删剥劝勢刪刻制剑勏剎列刬劫利剰","剏劎剋勶勂励刚刴剞剆刈劫勅刼劗刵"),TextField);
         this._b95292dc6fdfbcac6cf56fee = Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹဢფဃႅၬအၢႺႦწგჵჂჴჾ၅ႡႵဴႲဒႶჇီႌ၉ၢႝႣၧၬၘ႒","ჟဿီႁႂဈႵလဨႫဖၤၐს჊ထ"),TextField);
         this._6486d0b9ac161d279bc457ee = Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("削刖功切勠剬剶分勉勓创劯剰剩勸勎劈劊劥剡労勆剥勴刳剟勮剮勈勇刟刘劗办","勂劽勢劾刨剂劀勜劐刍刍刯劊劮劎刍"),TextField);
         this._8b57a8d19ee118c830b823a1 = Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ღჱႌრၞႻ၍႕ၒၔჵဝ၎ႵြၛဩဠႏკჁႲၕ၉ၚၽჄႸაჁ၎ဲყლ","წၖშფჍၮယႋရგსႤჿჇႻვ"),TextField);
         labelReward = Debug.assertProperty(this._5707fbf92059f531f70cf4cc,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勦刁勬刕剩勥劑勦勂判剘劤到勢刂刄剦効刮勴剚利劤刳剩剽勩勰勂刴","創勴勚刨劗劒刐剝劵勬剾勹劄剸勄删"),TextField);
         this._b820dd8a8382395e5fd44ea4 = new _73899a4de8f83c8d2c26f545(labelReward);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._0d7312fc58927025c763b283.handler = null;
         this._c3c1da178e2f3e8fb307a84a.handler = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

