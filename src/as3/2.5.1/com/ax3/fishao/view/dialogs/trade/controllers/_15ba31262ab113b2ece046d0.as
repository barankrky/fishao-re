package com.ax3.fishao.view.dialogs.trade.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.trade.model._05c4e1b6af1696aeeffa56de;
   import com.ax3.fishao.view.dialogs.trade.model._664206d546fdcb718f944b31;
   import com.ax3.fishao.view.dialogs.trade.model._bbfe24a3df7967d705072009;
   import com.ax3.fishao.view.dialogs.trade.model._f3cf344e3850578c3978a02c;
   import com.ax3.fishao.view.dialogs.trade.views._44160b4f956135a557ea58c1;
   import com.ax3.fishao.view.wrappers.impl._4a9667f6b725c3d41c719647;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class _15ba31262ab113b2ece046d0 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _49ef53eb726559343a5db991:_44160b4f956135a557ea58c1;
      
      private var _725554f441952e0d58a7a805:int;
      
      private var _55442aebae83aa5a84f6ee20:int;
      
      private var _8c5320f1ec8be474c64cf100:String;
      
      private var _f48af80645b5219444bb2c3c:Array;
      
      private var _b5a2457438788661c8e9ccd2:_f3cf344e3850578c3978a02c;
      
      private var _a15079d3c45960e72e76b1ad:_4a9667f6b725c3d41c719647;
      
      public function _15ba31262ab113b2ece046d0(param1:DisplayObjectContainer)
      {
         this._49ef53eb726559343a5db991 = new _44160b4f956135a557ea58c1(this,param1);
         super(this._49ef53eb726559343a5db991);
         this.init();
      }
      
      private static function _e6f35f24534a9a2c34aaaa6a(param1:Array) : Vector.<String>
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in param1)
         {
            var _loc6_:String = _loc2_;
            switch(_bbfe24a3df7967d705072009.ETIT_BAIT === _loc6_ ? -634740159 ^ 0x3D62F663 ^ -447868649 ^ 0x02064535 : (_bbfe24a3df7967d705072009.ETIT_DECORATION === _loc6_ ? 0x1D1361C2 ^ -2042616790 ^ 0x61234FB7 ^ -93320610 : (_bbfe24a3df7967d705072009.ETIT_FISH === _loc6_ ? -1018630951 ^ -1692885924 ^ 0x2F6A62B6 ^ 0x773A1231 : (_bbfe24a3df7967d705072009.ETIT_FISHBUCKS === _loc6_ ? -1600557812 ^ 0x0DFA4276 ^ 0x4C466BCF ^ -517651274 : (_bbfe24a3df7967d705072009.ETIT_FRUIT === _loc6_ ? 0x1C4DCAD3 ^ 0x10AAA21F ^ -1694552734 ^ -1776794198 : (_bbfe24a3df7967d705072009.ETIT_SHELL === _loc6_ ? -200675499 ^ 0x3BAB2D84 ^ -909700012 ^ 0x0665D680 : (_bbfe24a3df7967d705072009.ETIT_LOOK === _loc6_ ? 0x5E08B7C6 ^ 0x5D76D3FB ^ 0x268F0D56 ^ 0x25F1696D : (_bbfe24a3df7967d705072009.ETIT_OTHER === _loc6_ ? 0x65BEE2A4 ^ -1056292213 ^ -853893742 ^ 0x69AE3DBA : (_bbfe24a3df7967d705072009.ETIT_ROD === _loc6_ ? 0x19B96880 ^ 0x2B9C3FD9 ^ -506579239 ^ -739548792 : (_bbfe24a3df7967d705072009.ETIT_FOSSIL === _loc6_ ? 0x3AABECF2 ^ 0x61A78115 ^ 0x7E22BE6D ^ 0x252ED383 : 0x791DF5C1 ^ 0x66BA836B ^ -212203192 ^ -318930968))))))))))
            {
               case 0:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_BAITS));
                  break;
               case 1:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_DECORATIONS));
                  break;
               case 2:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_FISHES));
                  break;
               case 3:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_FISHBUCKS));
                  break;
               case 4:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_FRUITS));
                  break;
               case 5:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_SHELLS));
                  break;
               case 6:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_LOOKS));
                  break;
               case 7:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_OTHER));
                  break;
               case 8:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_RODS));
                  break;
               case 9:
                  _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_FOSSILS));
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function set _26b0cde53b069cb6b455e8a2(param1:String) : void
      {
         if(param1 == this._8c5320f1ec8be474c64cf100)
         {
            return;
         }
         switch(param1)
         {
            case _bbfe24a3df7967d705072009.ETIT_BAIT:
               §§push(0x5BEB814F ^ -838876569 ^ -1917201792 ^ 0x1BAD91A8);
               break;
            case _bbfe24a3df7967d705072009.ETIT_DECORATION:
               §§push(0x52AAD99B ^ -227333432 ^ 0x12C33188 ^ -1306869030);
               break;
            case _bbfe24a3df7967d705072009.ETIT_FISH:
               §§push(0x3BC430D4 ^ -1972146089 ^ 0x6791ED66 ^ -702108185);
               break;
            case _bbfe24a3df7967d705072009.ETIT_FISHBUCKS:
               §§push(-41337857 ^ -959655671 ^ -48754595 ^ -966919512);
               break;
            case _bbfe24a3df7967d705072009.ETIT_LOOK:
               §§push(0x7CC355FC ^ 0x285A59BC ^ -1362777168 ^ -94590988);
               break;
            case _bbfe24a3df7967d705072009.ETIT_OTHER:
               §§push(0x6967B33F ^ 0x0E91682D ^ 0x18F5D568 ^ 0x7F030E7F);
               break;
            case _bbfe24a3df7967d705072009.ETIT_ROD:
               §§push(-571020373 ^ 0x41230BC2 ^ 0x779BB334 ^ -347188389);
               break;
            case _bbfe24a3df7967d705072009.ETIT_FOSSIL:
               §§push(0x260DE2B6 ^ -1207933915 ^ -130780504 ^ 0x6639F43C);
               break;
            case _bbfe24a3df7967d705072009.ETIT_FRUIT:
               §§push(0x2E55C17D ^ -1541070364 ^ -1139618539 ^ 0x36622D84);
               break;
            case _bbfe24a3df7967d705072009.ETIT_SHELL:
               §§push(-1631907755 ^ -38331799 ^ -72310676 ^ -1732466087);
               break;
            default:
               §§push(0x0BA6E108 ^ 0x3AFF7876 ^ 0x6F66FAE4 ^ 0x5E3F6390);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
               this._8c5320f1ec8be474c64cf100 = param1;
               this._b5a2457438788661c8e9ccd2.tradeItemsTypeCurrent = this._8c5320f1ec8be474c64cf100;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剋勾劻别剤刦剭勚動劾刊劭刂勱剆勢刼刕勛勀刱刼刕刮剘勨劾劐剩勅勑勐务劷刔劳刔劰剜劏剔勰勸勴劦刵剗剖劘剒劖刨刌剨剨刬動刋勔刚办刊刨力剐勖剘勠則剖劤効判劯刁勁切劜刏劓剰剧刘劕剦劙剭动","劳刅務剘刭剡刀劻劋勋刞勶勾勎制勑") + param1);
         }
      }
      
      private function get _ad85ea7d695e07ee134215b3() : Array
      {
         var _loc1_:int = this._725554f441952e0d58a7a805 * this._49ef53eb726559343a5db991.itemsOnPage;
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_;
         while(_loc3_ < this._f48af80645b5219444bb2c3c.length && _loc3_ < _loc1_ + this._49ef53eb726559343a5db991.itemsOnPage)
         {
            _loc2_.push(this._f48af80645b5219444bb2c3c[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:int = 0x5A0D4E69 ^ -1817452190 ^ 0x0549C451 ^ -856724646;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._49ef53eb726559343a5db991.buttonPagePrevious:
                  §§push(0x50E02324 ^ -1311999150 ^ 0x524E2244 ^ -1285391822);
                  break;
               case this._49ef53eb726559343a5db991.buttonPageNext:
                  §§push(0x4E1B1B43 ^ -445323866 ^ 0x54B35DEC ^ -2317560);
                  break;
               case this._49ef53eb726559343a5db991.viewDropdown:
                  §§push(0x32363F69 ^ -81853924 ^ 0x03D84D9E ^ -890146583);
                  break;
               default:
                  §§push(-205702111 ^ -1015146339 ^ 0x5D386CFB ^ 0x6DFB4844);
            }
            switch(§§pop())
            {
               case 0:
                  --this._725554f441952e0d58a7a805;
                  this._672789ef00844a02444116fd();
                  break;
               case 1:
                  ++this._725554f441952e0d58a7a805;
                  this._672789ef00844a02444116fd();
                  break;
               case 2:
                  this._725554f441952e0d58a7a805 = 0x1267FBDB ^ 0x4EDEE69F ^ -206676502 ^ -1357430610;
                  _loc3_ = this._49ef53eb726559343a5db991.viewDropdown.selectedItemIndex;
                  this._26b0cde53b069cb6b455e8a2 = this._b5a2457438788661c8e9ccd2.tradeItemsTypeList[_loc3_];
                  this._703c28b06a5094aac840e847();
                  this._672789ef00844a02444116fd();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._f48af80645b5219444bb2c3c = [];
         this._b5a2457438788661c8e9ccd2 = GameSwf.instance.managerTrade.tradeModel;
         this._26b0cde53b069cb6b455e8a2 = this._b5a2457438788661c8e9ccd2.tradeItemsTypeList[-590251089 ^ -1187386611 ^ 0x5E672EF3 ^ 0x3B8FBE51];
         var _loc1_:Vector.<String> = _e6f35f24534a9a2c34aaaa6a(this._b5a2457438788661c8e9ccd2.tradeItemsTypeList);
         this._a15079d3c45960e72e76b1ad = this._49ef53eb726559343a5db991.viewDropdown;
         this._a15079d3c45960e72e76b1ad.init();
         this._a15079d3c45960e72e76b1ad.text = _loc1_[-358657679 ^ 0x11519576 ^ 0x6E05506B ^ -1781820308];
         this._a15079d3c45960e72e76b1ad.create(_loc1_);
         this._703c28b06a5094aac840e847();
         this._672789ef00844a02444116fd();
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_TRADE_OFFER_CHANGED_OWNER === _loc2_ ? 0x7C7FF91E ^ -635886185 ^ 0x22BA41AC ^ -2065916635 : 0x3837046A ^ -1677691368 ^ -2109849618 ^ 0x26094D9D)
         {
            case 0:
               this._703c28b06a5094aac840e847();
               this._672789ef00844a02444116fd();
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function _703c28b06a5094aac840e847() : void
      {
         var _loc1_:_664206d546fdcb718f944b31 = null;
         var _loc2_:_0efd1708c978d0fe0983d06e = null;
         this._e191d7daa3b68086c1c72f36();
         var _loc3_:Array = this._b5a2457438788661c8e9ccd2.tradeItemsDictionary[this._8c5320f1ec8be474c64cf100];
         this._f48af80645b5219444bb2c3c = [];
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = new _0efd1708c978d0fe0983d06e(_loc1_,new gViewTradeItem());
            _loc2_.state = _05c4e1b6af1696aeeffa56de.ETIS_INVENTORY;
            this._f48af80645b5219444bb2c3c.push(_loc2_);
         }
         this._55442aebae83aa5a84f6ee20 = limit(Math.ceil(this._f48af80645b5219444bb2c3c.length / this._49ef53eb726559343a5db991.itemsOnPage),0x46466886 ^ 0x754E4456 ^ -752913629 ^ -535339022,int.MAX_VALUE);
      }
      
      private function _672789ef00844a02444116fd() : void
      {
         var _loc1_:_0efd1708c978d0fe0983d06e = null;
         var _loc2_:Array = [];
         var _loc3_:Array = this._ad85ea7d695e07ee134215b3;
         if(_loc3_.length == (-1458893006 ^ -111259996 ^ 0x4AE03668 ^ 0x1AB577FE) && this._725554f441952e0d58a7a805 != (0x48BB6358 ^ 0x4D3DB236 ^ -178595225 ^ -254014711))
         {
            --this._725554f441952e0d58a7a805;
            _loc3_ = this._ad85ea7d695e07ee134215b3;
         }
         for each(_loc1_ in _loc3_)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._49ef53eb726559343a5db991.items = _loc2_;
         this._49ef53eb726559343a5db991._b9df93918b8abc1a2d4f1a81(this._725554f441952e0d58a7a805 + (0x3DCAFA4E ^ -1871009445 ^ -760017544 ^ 0x7F035E6C),this._55442aebae83aa5a84f6ee20);
         this._4351ca3aecd8eeb63902618a();
      }
      
      private function _4351ca3aecd8eeb63902618a() : void
      {
         var _loc1_:int = 0x0F5F8906 ^ 0x63028839 ^ 0x14BD2CFD ^ -1396347396;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2130951017 ^ -2090220719 ^ -1200163903 ^ 0x6FC63438))
            {
               case 0:
                  this._49ef53eb726559343a5db991.buttonPagePrevious.disable();
                  _loc1_ = -856828159 ^ 0x53E15E37 ^ -1122105090 ^ -164118027;
                  break;
               case 1:
                  if(this._725554f441952e0d58a7a805 == (0x2A60D227 ^ 0x5B84C14A ^ 0x761E016D ^ 0x07FA1200))
                  {
                     _loc1_ = -46759951 ^ 0x25060B18 ^ -249805569 ^ -49713111;
                  }
                  else
                  {
                     _loc1_ = -622127329 ^ -524431360 ^ 0x7426C8E0 ^ -1705685052;
                  }
                  break;
               case 2:
                  if(this._725554f441952e0d58a7a805 == this._55442aebae83aa5a84f6ee20 - 1)
                  {
                     _loc1_ = 0x22CA26A5 ^ 0x2F623CC5 ^ -4062048 ^ 0x264F5EF9;
                  }
                  else
                  {
                     _loc1_ = -1301067450 ^ 0x6D27F292 ^ 0x2ABC5307 ^ 0x21CDA8EF;
                  }
                  break;
               case 3:
                  this._49ef53eb726559343a5db991.buttonPageNext.enable();
                  _loc1_ = -105794885 ^ 0x519C73C7 ^ -1520200916 ^ -647294358;
                  break;
               case 4:
                  this._49ef53eb726559343a5db991.buttonPagePrevious.enable();
                  _loc1_ = -1076921499 ^ -568230251 ^ 0x3C6D25C3 ^ -1985585138;
                  break;
               case 5:
                  return;
               case 6:
                  this._49ef53eb726559343a5db991.buttonPageNext.disable();
                  _loc1_ = -427211007 ^ -270417300 ^ -609534122 ^ 0x06E6FA01;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e191d7daa3b68086c1c72f36() : void
      {
         var _loc1_:_0efd1708c978d0fe0983d06e = null;
         if(this._f48af80645b5219444bb2c3c == null)
         {
            return;
         }
         for each(_loc1_ in this._f48af80645b5219444bb2c3c)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
            _loc1_ = null;
         }
         this._f48af80645b5219444bb2c3c = null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._e191d7daa3b68086c1c72f36();
         this._725554f441952e0d58a7a805 = undefined;
         this._55442aebae83aa5a84f6ee20 = undefined;
         this._8c5320f1ec8be474c64cf100 = null;
         this._b5a2457438788661c8e9ccd2 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

