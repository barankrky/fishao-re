package com.ax3.display.wrappers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.core.App;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._d438a210dda74088bd2df6f0;
   import com.ax3.fishao.model.vo._9cff77d5f188667f75b09b59;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils._8dbac3cb2bae16fc4e0e0f27;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class _0936f2bb14fbc5e7f1f78e94 implements IAssetWrapper, IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      public var searchLabel:TextField;
      
      public var searchField:TextField;
      
      public var searchButton:FrameButtonWrapper;
      
      public var prevPageClickHandler:Function;
      
      public var nextPageClickHandler:Function;
      
      public var activateUserHandler:Function;
      
      public var usernemeField:TextField;
      
      public var timeLeftField:TextField;
      
      public var statusField:TextField;
      
      public var list:_c9b409b69412832d920c473f;
      
      private var _asset:DisplayObjectContainer;
      
      private var _c5ca3eeb1d0953bc8216a3aa:App;
      
      private var _c81f8e7fe13948daabed3e19:String;
      
      private var _d83cd8e81ef6dd726e5a4bf3:Vector.<_9cff77d5f188667f75b09b59>;
      
      public function _0936f2bb14fbc5e7f1f78e94()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
      }
      
      public function initialize(param1:App, param2:String) : void
      {
         this._c5ca3eeb1d0953bc8216a3aa = param1;
         this._c81f8e7fe13948daabed3e19 = param2;
      }
      
      public function onAssetProcessComplete() : void
      {
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(this._c5ca3eeb1d0953bc8216a3aa.resourceManager,this._c81f8e7fe13948daabed3e19,_d438a210dda74088bd2df6f0);
         _loc1_.process(this.list.itemTemplate);
         this.list.itemFactory = _loc1_;
         this.list.gap = -1457336432 ^ 0x6678A012 ^ 0x6E725B63 ^ -1591200540;
         this.list.itemsPerPage = -1737725655 ^ 0x26B3E265 ^ 0x2E288919 ^ -1862860196;
         this.list.listItemClickHandler = this._e02afb79d2ce2fd0086b61a0;
         this.list.leftPageButton.handler = this._ffc430ae4e669224f194f71b;
         this.list.rightPageButton.handler = this._b9d05e4e20487df0f203188f;
         this.usernemeField.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劬勨劇剫勯刷剓刦動刴剝删剼労勜刜劕勜剚剕勔刾勻剹功剳勰劔勉劮勤刣別副勍創勋剴剐勢剞劲分利剉勉勳刈剓剢","剐劏勯勦勹勋別勎劇刦刦努刄剒勽刓"));
         this.timeLeftField.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剕勏剡剤剘剠劫勻刧劀劧劧勥刖列剙功刯削刌劼刎勛到刂勏剰刋劑勨劁切剙劰剛剀初剽助勛刈判劚刹剥刡刡刑勔務","勎劕劖刮劫副劶劐勌劁刋劷刺刅剐勸"));
         this.statusField.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჸ၈ႹဳဠႩ့჋ႈဿႜႼ႙ჹ၈ီၶၔႈიჴႎ႒ၤဨၻტႇႻჱდႀჽჼႡ။პဟჼႫၰၹ჏႓ცႄ","ဩၗ်ံ၊჆ႣၗှဟယၑႯოဏხ"));
         this.searchLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴥု჏ါၤႡဉံღၤႆႫဩჇჷფၕႸჟၟ႓ဗ჉ნ့ဩႜჹၤ႕နဒႸႎႳစ჊န჉ႦჄဝႈႊရჸဉჴႀჸ","ၾ႙ႽၤႛၟၩგჿႛၶႦႅ၏ၱဍ"));
         this.searchField.text = "";
         this.searchButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝勜勑初创劬剏勤刟劢勣刹刅剄刅初剁劮剛刀剷勹刳刾勠勧劺勿力利刅刘","劌剰剄刃刋勚剼剚剁力募劃剄剐劾勛"));
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function _b04ce7bbc1816c6333dbabd1(param1:Vector.<_9cff77d5f188667f75b09b59>, param2:int, param3:int) : void
      {
         this._d83cd8e81ef6dd726e5a4bf3 = param1;
         this.list.show(_8dbac3cb2bae16fc4e0e0f27._8ded50bff02ca5190c64a44c(param1),param2,param3);
      }
      
      private function _ffc430ae4e669224f194f71b(param1:Event) : void
      {
         var _loc2_:int = -425276491 ^ -1597827649 ^ 0x3C0E3B73 ^ 0x4E5A8B84;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4E85E4 ^ -515848473 ^ 0x76964469 ^ -1549178475))
            {
               case 0:
                  this.prevPageClickHandler();
                  _loc2_ = -805225003 ^ 0x2B24D157 ^ -216728683 ^ 0x3C0079E9;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.prevPageClickHandler != null)
                  {
                     _loc2_ = 0x778592C6 ^ 0x2A98CD9D ^ -1278758948 ^ -622092680;
                  }
                  else
                  {
                     _loc2_ = 0x40D33347 ^ -429150985 ^ 0x0DC3C5BB ^ -1622526731;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b9d05e4e20487df0f203188f(param1:Event) : void
      {
         var _loc2_:int = -265448100 ^ 0x4534C68A ^ 0x662C6559 ^ 0x61988A56;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-557830099 ^ -2111942711 ^ 0x5D0AEA5D ^ -1283905184))
            {
               case 0:
                  if(this.nextPageClickHandler != null)
                  {
                     _loc2_ = -654380074 ^ -1273426040 ^ -25341884 ^ 0x203710C1;
                  }
                  else
                  {
                     _loc2_ = 0x5F6E2658 ^ -1460865825 ^ 0x0228E9CE ^ 0x47078791;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.nextPageClickHandler();
                  _loc2_ = 0x231E87B2 ^ -1806315125 ^ 0x672FA0A3 ^ 0x62C94A42;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e02afb79d2ce2fd0086b61a0(param1:Event) : void
      {
         var _loc2_:_d438a210dda74088bd2df6f0 = _d438a210dda74088bd2df6f0(param1.currentTarget);
         var _loc3_:_9cff77d5f188667f75b09b59 = _9cff77d5f188667f75b09b59(_loc2_.data);
         if(this.activateUserHandler != null)
         {
            this.activateUserHandler(_loc3_);
         }
      }
   }
}

