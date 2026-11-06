package com.ax3.fishao.view.dialogs.trade.controllers
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.trade.model._3f231537217a2498942b645b;
   import com.ax3.fishao.view.dialogs.trade.model._664206d546fdcb718f944b31;
   import com.ax3.fishao.view.dialogs.trade.views._ebf406a8f8447cf62fd12368;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TextEvent;
   
   public class _384cdf1db362e78546d2feb0 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _7b2fbac2b345b5aaed0fb941:_ebf406a8f8447cf62fd12368;
      
      private var _495b3058c8338b5fc3d10a32:_664206d546fdcb718f944b31;
      
      private var _bb82f555e40546ecac8133de:String;
      
      private var _5798d39be08eef2954395f54:int;
      
      public function _384cdf1db362e78546d2feb0(param1:DisplayObjectContainer, param2:String)
      {
         this._bb82f555e40546ecac8133de = param2;
         this._7b2fbac2b345b5aaed0fb941 = new _ebf406a8f8447cf62fd12368(this,param1);
         super(this._7b2fbac2b345b5aaed0fb941);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._7b2fbac2b345b5aaed0fb941.buttonClose:
                  §§push(0x118173D2 ^ 0x032BD7CC ^ -1103085858 ^ -1393911104);
                  break;
               case this._7b2fbac2b345b5aaed0fb941.buttonOk:
                  §§push(-978529722 ^ -781660573 ^ -1222213585 ^ -1545430005);
                  break;
               default:
                  §§push(0x4C6645A3 ^ 0x2D1ADAEC ^ 0x21F32A5B ^ 0x408FB516);
            }
            switch(§§pop())
            {
               case 0:
                  this.hide();
                  break;
               case 1:
                  this._495b3058c8338b5fc3d10a32.quantity = this._5798d39be08eef2954395f54;
                  if(this._5798d39be08eef2954395f54 > (0x35222323 ^ 0x2891E582 ^ 0x0D9B2550 ^ 0x1028E3F1))
                  {
                     GameSwf.instance.managerTrade.tradeModel._a29ed57364e972f40eacc918(this._495b3058c8338b5fc3d10a32);
                  }
                  this.hide();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function _056a34724fea493e4f520aba(param1:Event) : void
      {
         this._1c834bfdbe3b818ed64e6bdf();
      }
      
      private function _9156be1a978b093868d8e430(param1:TextEvent) : void
      {
         this._1c834bfdbe3b818ed64e6bdf();
      }
      
      private function init() : void
      {
         this._7b2fbac2b345b5aaed0fb941.labelAmount.addEventListener(Event.CHANGE,this._056a34724fea493e4f520aba);
         this._7b2fbac2b345b5aaed0fb941.labelAmount.addEventListener(TextEvent.TEXT_INPUT,this._9156be1a978b093868d8e430);
         this._a19711e469f4e3c2b6c23b55();
         this.hide();
      }
      
      private function _a19711e469f4e3c2b6c23b55() : void
      {
         switch(this._bb82f555e40546ecac8133de)
         {
            case _3f231537217a2498942b645b.ETT_PLAYER:
               §§push(0x51841FB7 ^ -101840554 ^ 0x671A99E3 ^ -814706942);
               break;
            case _3f231537217a2498942b645b.ETT_NPC:
               §§push(-1018977856 ^ -184421861 ^ -1290059744 ^ -2057759750);
               break;
            default:
               §§push(0x18C77441 ^ 0x2FE3AE3A ^ 0x73CC8945 ^ 0x44E8533C);
         }
         switch(§§pop())
         {
            case 0:
               this._7b2fbac2b345b5aaed0fb941.message = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_DIALOG_AMOUNT_MESSAGE);
               break;
            case 1:
               this._7b2fbac2b345b5aaed0fb941.message = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_DIALOG_AMOUNT_MESSAGE_NPC);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ညဿკဍၩ၁ႻႦတင၂ფႜი၄ၹჸဈၯၗၙ၀ႴცစၰၮႍჸႈეဿၴႦီ႗ဋဌნოდჺႚ჉჈ფჽრშქႰႥႀქსႽေႡႛႣ၄ဨႳဖဗၻჍპၷ჈ရჺ႙რၫၥဩဋოဦကႽၰဨႸძုဴဗჱქၠၺၹြၤၕႺႺႾფႾ႐ႴჀဝိწႡဣၙႣჶကၧၛၷဦညႶၯ႖ჯჱჷჼဍဏჩႭၮႌწႝဨၽၲၳ၎့ჾიွၽဤွႵဳ့ჄႳ႖ူုအဎၫႸက၁ႍႦ჻ჽჂႯႥၼႶဎ","ၜႄი၄၃ႀၫၧ်Ⴢ჌ဥ၃Ⴎယႇ") + this._bb82f555e40546ecac8133de);
         }
      }
      
      public function show(param1:_664206d546fdcb718f944b31) : void
      {
         this._495b3058c8338b5fc3d10a32 = param1;
         this._5798d39be08eef2954395f54 = this._495b3058c8338b5fc3d10a32.quantity;
         this._7b2fbac2b345b5aaed0fb941.amount = this._5798d39be08eef2954395f54;
         this._7b2fbac2b345b5aaed0fb941.source.visible = true;
      }
      
      public function hide() : void
      {
         this._495b3058c8338b5fc3d10a32 = null;
         this._7b2fbac2b345b5aaed0fb941.source.visible = false;
      }
      
      private function _1c834bfdbe3b818ed64e6bdf() : void
      {
         var _loc1_:int = -2097323689 ^ 0x6BA41296 ^ -846863631 ^ 0x6910775C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-884296697 ^ -1273100450 ^ -1798080673 ^ -1505025429))
            {
               case 0:
                  return;
               case 1:
                  if(this._7b2fbac2b345b5aaed0fb941.labelAmount.text.length > (-2031897434 ^ 0x31E5F426 ^ 0x269D06B4 ^ -1852094924))
                  {
                     _loc1_ = -1925516454 ^ 0x6A3FAC94 ^ -1128701423 ^ 0x1670DBB0;
                  }
                  else
                  {
                     _loc1_ = 0x6CB4F924 ^ -1569972918 ^ 0x11F5FD8B ^ -1830682744;
                  }
                  break;
               case 2:
                  this._5798d39be08eef2954395f54 = parseInt(this._7b2fbac2b345b5aaed0fb941.labelAmount.text);
                  this._5798d39be08eef2954395f54 = limit(this._5798d39be08eef2954395f54,0x5F402D8E ^ -1400866810 ^ 0x62533963 ^ -1852609302,this._495b3058c8338b5fc3d10a32.quantity);
                  this._7b2fbac2b345b5aaed0fb941.amount = this._5798d39be08eef2954395f54;
                  _loc1_ = -1144954706 ^ -1816457456 ^ -1755624799 ^ -219298958;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

