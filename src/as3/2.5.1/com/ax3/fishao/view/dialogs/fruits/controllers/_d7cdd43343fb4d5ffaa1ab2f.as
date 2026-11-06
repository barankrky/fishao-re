package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.fruits._a98277cf6d130b0c84f83078;
   import com.ax3.fishao.view.dialogs.fruits.model._273a0e8d279da2c95b553430;
   import com.ax3.fishao.view.dialogs.fruits.model._85e520cd64b9acef6dc31a91;
   import com.ax3.fishao.view.dialogs.fruits.views._049d495dc07dcf5a023d5f5c;
   import com.ax3.fishao.view.dialogs.fruits.views._59a0cd753094663c05cca48e;
   import com.ax3.fishao.view.dialogs.fruits.views._761ffec6a0a5dfb59e47c189;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _d7cdd43343fb4d5ffaa1ab2f extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _5ac6401ac173bd83db4901c6:_59a0cd753094663c05cca48e = this._24397db4c8c5d94759980d69();
      
      private var _e36e156fcc7d4627c1d1e678:_273a0e8d279da2c95b553430;
      
      private var _7924f8de9cf09340ca4366c3:String;
      
      private var _d7bed497c696f43eb69d1081:_a98277cf6d130b0c84f83078;
      
      public function _d7cdd43343fb4d5ffaa1ab2f(param1:_273a0e8d279da2c95b553430, param2:String)
      {
         this._e36e156fcc7d4627c1d1e678 = param1;
         this._7924f8de9cf09340ca4366c3 = param2;
         super(this._5ac6401ac173bd83db4901c6);
         this.init();
      }
      
      private function _24397db4c8c5d94759980d69() : _59a0cd753094663c05cca48e
      {
         var _loc1_:_59a0cd753094663c05cca48e = null;
         switch(this._7924f8de9cf09340ca4366c3)
         {
            case _85e520cd64b9acef6dc31a91.EFIT_INVENTORY:
               §§push(-1472595041 ^ -1497908934 ^ 0x7848A0D2 ^ 0x76C6E277);
               break;
            case _85e520cd64b9acef6dc31a91.EFIT_SELECTED:
               §§push(0x1B2C7ED6 ^ 0x3EBCC29C ^ -1469198180 ^ -1912771369);
               break;
            default:
               §§push(-2117387502 ^ -1132619680 ^ 0x25C30DCB ^ 0x1875AEBB);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = new _761ffec6a0a5dfb59e47c189(this);
               break;
            case 1:
               _loc1_ = new _049d495dc07dcf5a023d5f5c(this);
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勤刁募切剧劕刦刼勇劺劘勠助剤剉劬刋劊勓剪别刟勥勑勠勨剠剺勓勘勭剛刾効劅剕勃剅勇劓効助剣剅刐勀劀剙刂勖勄剪刜切刬剃刜刣劄勵剑刿劽剠勏勳剬剫劬劵刀勖剺劣勝刔劻剃刂刯勱努剸刘刧割判劦剆劧刭劰勍劃初勭劽劅剎勑刵勞勑剱勆勪刪務刮剌别创剋勯","労勡劺努劶创勝前勏刐剨剼刺勤劖刯") + this._7924f8de9cf09340ca4366c3);
         }
         return _loc1_;
      }
      
      public function get entity() : _273a0e8d279da2c95b553430
      {
         return this._e36e156fcc7d4627c1d1e678;
      }
      
      public function set amount(param1:int) : void
      {
         this._e36e156fcc7d4627c1d1e678.amount = param1;
         this._cf01e99c671e988056ae2f13();
      }
      
      public function get amount() : int
      {
         return this._e36e156fcc7d4627c1d1e678.amount;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._5ac6401ac173bd83db4901c6.source:
                  §§push(0x25763FA7 ^ -964117293 ^ 0x6492AF87 ^ -2022953741);
                  break;
               case this._5ac6401ac173bd83db4901c6.buttonRemove:
                  §§push(0x54B6ADD3 ^ -704950673 ^ -1794864001 ^ 0x14496FC2);
                  break;
               default:
                  §§push(-880264219 ^ -1276309186 ^ 0x6A95BC02 ^ 0x12F096DB);
            }
            switch(§§pop())
            {
               case 0:
                  if(this._7924f8de9cf09340ca4366c3 == _85e520cd64b9acef6dc31a91.EFIT_INVENTORY && this._e36e156fcc7d4627c1d1e678.amount > (-1943038404 ^ -1990458704 ^ -1578880507 ^ -1533565303))
                  {
                     this._d7bed497c696f43eb69d1081._9a7f06030243bbd3dd4938c5(this._e36e156fcc7d4627c1d1e678);
                  }
                  break;
               case 1:
                  this._d7bed497c696f43eb69d1081._98be45c3f269ae750423fa8d(this._e36e156fcc7d4627c1d1e678);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function _a16cb2fae79eb7e07c9f99a4(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x391A5978 ^ 0x333563CD ^ 0x6F645778 ^ -2146766333;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4AD7557D ^ -2007113677 ^ -1460138168 ^ -1892473398))
            {
               case 0:
                  return;
               case 1:
                  this._4f254116765eb1a39d6712be(this._5ac6401ac173bd83db4901c6.source,param1);
                  return;
               case 2:
                  if(this._5ac6401ac173bd83db4901c6.state == ButtonState.DISABLED)
                  {
                     _loc2_ = -1578271959 ^ -139523275 ^ -281793494 ^ 0x5C37C3FA;
                  }
                  else
                  {
                     _loc2_ = 0x448BBF6E ^ 0x238EA201 ^ -121986180 ^ 0x7AFE21DE;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _5157ee13409d2e9ed52c9ec2(param1:MouseEvent) : void
      {
         var _loc2_:int = -1554016819 ^ -357650492 ^ 0x0DAEDB66 ^ 0x452D2283;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x0CA5EE4B ^ 0x676CA5F5 ^ -234804425 ^ -1732598939))
            {
               case 0:
                  if(this._5ac6401ac173bd83db4901c6.state == ButtonState.DISABLED)
                  {
                     _loc2_ = -711206893 ^ 0x61470343 ^ -1041156119 ^ 0x745F2F54;
                  }
                  else
                  {
                     _loc2_ = -1702139336 ^ -802664135 ^ 0x0F9A61EA ^ 0x444B9905;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._5ac6401ac173bd83db4901c6.state = ButtonState.OVER;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6675a94353ca05ae6f2bfb3a(param1:MouseEvent) : void
      {
         var _loc2_:int = -912125095 ^ 0x67C5863F ^ -921394262 ^ -169825818;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-818588782 ^ 0x7547C388 ^ -2109119999 ^ -1431802575))
            {
               case 0:
                  if(this._5ac6401ac173bd83db4901c6.state == ButtonState.DISABLED)
                  {
                     _loc2_ = 0x7065AA43 ^ 0x08C3FF60 ^ -171332609 ^ 0x1FFC61F4;
                  }
                  else
                  {
                     _loc2_ = 0x22F1FAEF ^ 0x2ACC9F7E ^ 0x128B49A3 ^ -2010795239;
                  }
                  break;
               case 1:
                  this._5ac6401ac173bd83db4901c6.state = ButtonState.OVER;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _748affd8079d73551118e88e(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x61A7E408 ^ 0x4B095282 ^ 0x38B4B44A ^ -472854571;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-926897632 ^ -1141362853 ^ -1016893489 ^ 0x419127A3))
            {
               case 0:
                  this._5ac6401ac173bd83db4901c6.state = ButtonState.NORMAL;
                  return;
               case 1:
                  return;
               case 2:
                  if(this._5ac6401ac173bd83db4901c6.state == ButtonState.DISABLED)
                  {
                     _loc2_ = 0x32258E22 ^ 0x484668F4 ^ 0x5158980C ^ -621694004;
                  }
                  else
                  {
                     _loc2_ = -1181421819 ^ -782585651 ^ -1428686639 ^ 0x33D36A0E;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._d7bed497c696f43eb69d1081 = GameSwf.instance.managerFruits;
         this._914e05ea079fe00399f45c66();
         this._1e862d36d23aba1995f1326a();
         this._78d6d7b98d9c7125679697e3();
         this._62bc45537af4a13fa8d144c1();
         this._cf01e99c671e988056ae2f13();
      }
      
      private function _1e862d36d23aba1995f1326a() : void
      {
         var _loc1_:_a4e47350c89a50d87a148c28 = null;
         this._5ac6401ac173bd83db4901c6.imagePlaceholder.removeChildren();
         if(this._e36e156fcc7d4627c1d1e678.imageUrl != null)
         {
            _loc1_ = new _a4e47350c89a50d87a148c28(null);
            _loc1_.width = this._5ac6401ac173bd83db4901c6.imagePlaceholderSize.x;
            _loc1_.height = this._5ac6401ac173bd83db4901c6.imagePlaceholderSize.y;
            app.resourceManager.replaceBitmapDataFromURL(_loc1_,this._e36e156fcc7d4627c1d1e678.imageUrl);
            this._5ac6401ac173bd83db4901c6.imagePlaceholder.addChild(_loc1_);
         }
      }
      
      private function _78d6d7b98d9c7125679697e3() : void
      {
         var _loc1_:int = -1155495762 ^ -50625451 ^ -878981556 ^ 0x26E7E554;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1973144213 ^ -1778934277 ^ 0x7BFACDAB ^ -825343272))
            {
               case 0:
                  if(this._e36e156fcc7d4627c1d1e678.id > (-2121166753 ^ 0x3E11D0DC ^ -190439919 ^ 0x4B265E92))
                  {
                     _loc1_ = 0x1C0BB865 ^ -1271309489 ^ -801254406 ^ -760735950;
                  }
                  else
                  {
                     _loc1_ = -1409106777 ^ -235677114 ^ -774025735 ^ 0x268B0CF9;
                  }
                  break;
               case 1:
                  this._5ac6401ac173bd83db4901c6.viewTooltipHandleArea._09d32aad035d4c6f4097c78b();
                  this._5ac6401ac173bd83db4901c6.viewTooltipHandleArea.tooltipText = _c2ad9d37d7be0097d6d2e977.get(_67282af25befe9778e5c8dd1.FRUIT.name + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("励剾刲刹刖創劘動劺刑","剷劮劎勊刿勨勎券剖勠劏勎刴删刬劷") + this._e36e156fcc7d4627c1d1e678.id);
                  _loc1_ = -1121263635 ^ 0x5798DBC4 ^ -1211036831 ^ -138139479;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _62bc45537af4a13fa8d144c1() : void
      {
         var _loc1_:int = 0x5EDB4B4A ^ -191600473 ^ 0x2A8C1A21 ^ 0x68A7A49C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1728375848 ^ 0x7C9CFD66 ^ -1324580255 ^ -1123028594))
            {
               case 0:
                  return;
               case 1:
                  if(this._5ac6401ac173bd83db4901c6.buttonRemove != null)
                  {
                     _loc1_ = -1974171633 ^ -941920975 ^ 0x4DC40461 ^ -399541236;
                  }
                  else
                  {
                     _loc1_ = -2115566739 ^ 0x1476B92C ^ 0x06CC5789 ^ 0x7B397099;
                  }
                  break;
               case 2:
                  this._5ac6401ac173bd83db4901c6.buttonRemove.visible = this._e36e156fcc7d4627c1d1e678.id > (-1988760168 ^ 0x1C555924 ^ -1284776812 ^ 0x264B6828);
                  _loc1_ = 0x23E7060C ^ -37092170 ^ -567315586 ^ -395907947;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _cf01e99c671e988056ae2f13() : void
      {
         var _loc1_:int = -377732780 ^ 0x6390A19F ^ 0x6A0B0E26 ^ -1302352226;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x1BD19188 ^ -345792708 ^ -1798723336 ^ 0x36C3E63E))
            {
               case 0:
                  this._e17d8570269eae92ee9d8cab();
                  _loc1_ = 0x3149091D ^ 0x6E0741C6 ^ -1251391314 ^ -1197522941;
                  break;
               case 1:
                  if(this._7924f8de9cf09340ca4366c3 == _85e520cd64b9acef6dc31a91.EFIT_INVENTORY)
                  {
                     _loc1_ = -678262724 ^ -276892669 ^ -1995527490 ^ -480602383;
                  }
                  else
                  {
                     _loc1_ = 0x0BD2F25A ^ -1670085365 ^ -486943058 ^ 0x27E7E189;
                  }
                  break;
               case 2:
                  this._5ac6401ac173bd83db4901c6.amount = this._e36e156fcc7d4627c1d1e678.amount;
                  if(this._e36e156fcc7d4627c1d1e678.amount == (-223424652 ^ 0x67495940 ^ -532255174 ^ 0x75A1F80E))
                  {
                     _loc1_ = -1295247588 ^ 0x1C323214 ^ -1524166042 ^ 0x5961771F;
                  }
                  else
                  {
                     _loc1_ = 0x4BB51980 ^ 0x59E7E948 ^ 0x0B1136D1 ^ 0x4BFB866B;
                  }
                  break;
               case 3:
                  this.disable();
                  _loc1_ = 0x6E2FAFB3 ^ 0x32705029 ^ 0x15D3E7D3 ^ 0x1B34583F;
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function disable() : void
      {
         var _loc1_:int = -1498339119 ^ 0x4B0677B5 ^ 0x682F2671 ^ -882975129;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x55FF444B ^ 0x0A8F8B6B ^ 0x18E22424 ^ 0x09544C77))
            {
               case 0:
                  return;
               case 1:
                  (this._5ac6401ac173bd83db4901c6.source as Sprite).buttonMode = false;
                  (this._5ac6401ac173bd83db4901c6.source as Sprite).useHandCursor = false;
                  this._5ac6401ac173bd83db4901c6.state = ButtonState.DISABLED;
                  if(this._5ac6401ac173bd83db4901c6.buttonRemove != null)
                  {
                     _loc1_ = 0x74B1F349 ^ 0x09A34BE3 ^ 0x4B93E693 ^ 0x7847F948;
                  }
                  else
                  {
                     _loc1_ = 0x0AF28641 ^ -1247973471 ^ 0x39A136F0 ^ -938968989;
                  }
                  break;
               case 2:
                  this._5ac6401ac173bd83db4901c6.buttonRemove.visible = false;
                  _loc1_ = 0x6A576F01 ^ 0x2343ADFF ^ 0x4CE6DBF9 ^ 0x4B34BE74;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e17d8570269eae92ee9d8cab() : void
      {
         var _loc1_:int = -1313910975 ^ 0x7EEDD319 ^ -2026981112 ^ 0x41433349;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-828238089 ^ -2063149933 ^ -1173829894 ^ -125627769))
            {
               case 0:
                  (this._5ac6401ac173bd83db4901c6.source as Sprite).buttonMode = true;
                  (this._5ac6401ac173bd83db4901c6.source as Sprite).useHandCursor = true;
                  this._5ac6401ac173bd83db4901c6.state = ButtonState.DEFAULT;
                  if(this._5ac6401ac173bd83db4901c6.buttonRemove != null)
                  {
                     _loc1_ = -1587457515 ^ -1704326220 ^ 0x76A5CBAC ^ 0x44818415;
                  }
                  else
                  {
                     _loc1_ = -272362359 ^ 0x4496B15A ^ 0x786ECD35 ^ -636256515;
                  }
                  break;
               case 1:
                  this._5ac6401ac173bd83db4901c6.buttonRemove.visible = true;
                  _loc1_ = -1416973859 ^ 0x01F9C3F2 ^ 0x06AE1725 ^ -1510837487;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _914e05ea079fe00399f45c66() : void
      {
         this._5ac6401ac173bd83db4901c6.source.addEventListener(MouseEvent.CLICK,this._a16cb2fae79eb7e07c9f99a4,false,-816626997 ^ 0x5DA1B05A ^ 0x5E257181 ^ -858291440,true);
         this._5ac6401ac173bd83db4901c6.source.addEventListener(MouseEvent.MOUSE_MOVE,this._5157ee13409d2e9ed52c9ec2,false,-1649590852 ^ -2135391287 ^ -208655521 ^ -293235414,true);
         this._5ac6401ac173bd83db4901c6.source.addEventListener(MouseEvent.ROLL_OVER,this._6675a94353ca05ae6f2bfb3a,false,0x7ACF3FA6 ^ -1452573632 ^ 0x407000C0 ^ -1814805722,true);
         this._5ac6401ac173bd83db4901c6.source.addEventListener(MouseEvent.ROLL_OUT,this._748affd8079d73551118e88e,false,-95657139 ^ 0x6950F1A3 ^ -1905552013 ^ 0x1D77079D,true);
      }
      
      private function _6ff614f125f68f49b7b97c60() : void
      {
         this._5ac6401ac173bd83db4901c6.source.removeEventListener(MouseEvent.CLICK,this._a16cb2fae79eb7e07c9f99a4);
         this._5ac6401ac173bd83db4901c6.source.removeEventListener(MouseEvent.MOUSE_MOVE,this._5157ee13409d2e9ed52c9ec2);
         this._5ac6401ac173bd83db4901c6.source.removeEventListener(MouseEvent.ROLL_OVER,this._6675a94353ca05ae6f2bfb3a);
         this._5ac6401ac173bd83db4901c6.source.removeEventListener(MouseEvent.ROLL_OUT,this._748affd8079d73551118e88e);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._e36e156fcc7d4627c1d1e678 = null;
         this._6ff614f125f68f49b7b97c60();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

