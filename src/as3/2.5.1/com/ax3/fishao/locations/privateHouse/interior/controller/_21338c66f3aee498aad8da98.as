package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.panels._a6816d8c6262739dbd73ec1e;
   import com.ax3.fishao.locations.privateHouse.interior.model._2486fa5f7cd2f56ad6f3cb62;
   import com.ax3.fishao.locations.privateHouse.interior.model._61273d3106d0e511b3de3353;
   import com.ax3.fishao.locations.privateHouse.interior.model._92a02af1a67b5d02208e6348;
   import com.ax3.fishao.locations.privateHouse.interior.model._982f2b0d82c7f64c01e267ee;
   import com.ax3.fishao.locations.privateHouse.interior.model._ab4ccf9b7110f9feab05f612;
   import com.ax3.fishao.locations.privateHouse.interior.model._b96ff5cb658b59458748ed64;
   import com.ax3.fishao.locations.privateHouse.interior.view._f29541d8cf47a475e2082879;
   import com.ax3.fishao.locations.privateHouse.model._b875153a0747e250fd4a5c0c;
   import com.ax3.fishao.utils._07e71053f9295660fff37b70;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _21338c66f3aee498aad8da98 extends _33aca7ac1e49b5f2d10a6bbc
   {
      
      protected var _entity:_982f2b0d82c7f64c01e267ee;
      
      protected var _view:_f29541d8cf47a475e2082879 = new _f29541d8cf47a475e2082879(this);
      
      private var _d510780707fc662a5abdc853:Boolean;
      
      protected var _landingRect:_b875153a0747e250fd4a5c0c;
      
      private var _288c75fbac7ed68787fb402a:Boolean;
      
      protected var _editorPanel:_a6816d8c6262739dbd73ec1e;
      
      private var _f41541f71a8ae02d0bd44228:Point;
      
      private var _ea1edf9b7b6e58a5943e3b94:Point;
      
      private var _71e082f206f970d68d2635ba:Boolean;
      
      public function _21338c66f3aee498aad8da98(param1:_982f2b0d82c7f64c01e267ee, param2:_afb131a8b7579a7c44d03bf8)
      {
         this._entity = param1;
         super(param1,this._view,param2);
         this.init();
      }
      
      public function get isLandingPossible() : Boolean
      {
         return this._bf3eddb6c523e36b17074445(this._entity.position);
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._d510780707fc662a5abdc853 = param1;
         this._3656e5daef8d397e9befd757();
      }
      
      override public function set buildMode(param1:Boolean) : void
      {
         this._288c75fbac7ed68787fb402a = param1;
         this._b182aa5d6d4a91e99b73cdfc();
      }
      
      protected function _bf3eddb6c523e36b17074445(param1:Point) : Boolean
      {
         var _loc2_:int = 0x4929258A ^ 0x06F289EB ^ -1420349017 ^ -460546618;
         var _loc3_:Boolean = true;
         var _loc4_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         var _loc5_:int = _92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(this._entity.rotation) ? this._entity.valueObject.size_x : this._entity.valueObject.size_y;
         var _loc6_:int = _92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(this._entity.rotation) ? this._entity.valueObject.size_y : this._entity.valueObject.size_x;
         var _loc7_:int = param1.x;
         while(_loc7_ < param1.x + _loc5_)
         {
            _loc2_ = param1.y;
            while(_loc2_ < param1.y + _loc6_)
            {
               if(_loc7_ >= _loc4_.length || _loc2_ >= _loc4_[0x339AB811 ^ 0x4FDF32A1 ^ 0x6FF7BE18 ^ 0x13B234A8].length)
               {
                  _loc3_ = false;
                  break;
               }
               if(_loc4_[_loc7_][_loc2_] != null && _loc4_[_loc7_][_loc2_] != this)
               {
                  _loc3_ = false;
                  break;
               }
               _loc2_++;
            }
            _loc7_++;
         }
         return _loc3_;
      }
      
      protected function _b182aa5d6d4a91e99b73cdfc() : void
      {
         var _loc1_:int = 0x6870D91A ^ -1394816438 ^ -1804289489 ^ 0x5241C93F;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6ACF9F0F ^ 0x19A30A7C ^ 0x35CA9299 ^ 0x443F67AA))
            {
               case 0:
                  if(!this._288c75fbac7ed68787fb402a)
                  {
                     _loc1_ = -895195961 ^ 0x3C4B1036 ^ -1375866461 ^ 0x598BE513;
                  }
                  else
                  {
                     _loc1_ = -289945758 ^ 0x0B515958 ^ -1874304764 ^ 0x77379F7C;
                  }
                  break;
               case 1:
                  this.isSelected = false;
                  _loc1_ = 0x24DBA741 ^ -494712221 ^ 0x053A913A ^ -1040507814;
                  break;
               case 2:
                  this._view.handleClick = !this._288c75fbac7ed68787fb402a;
                  this._view.currentView.isMouseEnabled = !this._288c75fbac7ed68787fb402a;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _3656e5daef8d397e9befd757() : void
      {
         var _loc1_:int = 0x15AE4731 ^ -426466968 ^ -762857014 ^ -946818329;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x1DBE3073 ^ 0x1002A2FE ^ 0x371946C0 ^ -595052228))
            {
               case 0:
                  this._landingRect._92352776a862376dfd140cb6();
                  this._view.filter = _61273d3106d0e511b3de3353.EIIFT_GLOW;
                  _loc1_ = -1956629286 ^ 0x54D4D2F0 ^ -144495795 ^ -822468587;
                  break;
               case 1:
                  this._view.filter = _61273d3106d0e511b3de3353.EIIFT_NONE;
                  _loc1_ = 0x19B3862F ^ -1843520030 ^ -1081949859 ^ -771573786;
                  break;
               case 2:
                  return;
               case 3:
                  this._view.currentView.isMouseEnabled = true;
                  this._landingRect._8cef8bd0fb9d52ec62080dda(this._entity.width,this._entity.height);
                  this._landingRect.moveTo(this._entity.position.x,this._entity.position.y);
                  this._landingRect.show();
                  this._86b846903d819fd382e5b8ad();
                  this._0343f451eda5e1fd5efe61b4();
                  this._editorPanel.show();
                  _loc1_ = -358629714 ^ 0x24C4B7BE ^ -57226572 ^ -723505454;
                  break;
               case 4:
                  if(this._bf3eddb6c523e36b17074445(this._entity.position))
                  {
                     _loc1_ = -1202274026 ^ -1083681258 ^ 0x5ECBDE8D ^ -1076321028;
                  }
                  else
                  {
                     _loc1_ = -303681043 ^ -988651622 ^ 0x2FA09B80 ^ -512157563;
                  }
                  break;
               case 5:
                  if(this._d510780707fc662a5abdc853)
                  {
                     _loc1_ = -764495768 ^ 0x2CB13986 ^ 0x58698A32 ^ 0x409BE6A9;
                  }
                  else
                  {
                     _loc1_ = 0x51A57BFA ^ -1052574081 ^ -1580540741 ^ -687819703;
                  }
                  break;
               case 6:
                  this._landingRect.hide();
                  this._editorPanel.hide();
                  this._ab435369f4c408fbd62d5d7a();
                  if(!this._bf3eddb6c523e36b17074445(this._entity.position))
                  {
                     _loc1_ = -662389797 ^ -339938724 ^ 0x4C5294DA ^ -1723387858;
                  }
                  else
                  {
                     _loc1_ = 0x63758A28 ^ 0x45124A91 ^ -506674335 ^ 0x2186EEA8;
                  }
                  break;
               case 7:
                  this._view.currentView.handleMouseDown = this._d510780707fc662a5abdc853;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         switch(this._entity.location)
         {
            case _b96ff5cb658b59458748ed64.EIIL_PRIVATE_HOUSE:
               §§push(0x1B427FC4 ^ -1051258215 ^ 0x16D0AED4 ^ -859454583);
               break;
            case _b96ff5cb658b59458748ed64.EIIL_DECORATION_SHOP:
               §§push(0x43954449 ^ -2102061261 ^ 0x06E65854 ^ -943322321);
               break;
            default:
               §§push(0x6FEA4DE6 ^ 0x2A6563E7 ^ 0x30B5895E ^ 0x753AA75D);
         }
         switch(§§pop())
         {
            case 0:
               if(!_controllerInterior.locationDialog.buildMode)
               {
                  _controllerInterior.selectedItem = this;
                  _controllerInterior._2a3d39c886519db672fcbda7();
               }
               break;
            case 1:
               GameSwf.instance._99745ded2682acc368640b08(param2 as MouseEvent);
         }
         return _loc3_;
      }
      
      override public function _adef58f9002aa2a71e1a50b0(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._adef58f9002aa2a71e1a50b0(param1,param2);
         if(!this._288c75fbac7ed68787fb402a)
         {
            return _loc3_;
         }
         this._240e252a2c49dc1d4075d1a0(param2);
         return _loc3_;
      }
      
      override public function _7ca229f4ec64f1a817fc6ff2(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._7ca229f4ec64f1a817fc6ff2(view,param2);
         this._c9740a4a274059e5e3e060a6(param2);
         return _loc3_;
      }
      
      override public function _6f13cdf51d77d3ffa790eb14(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._6f13cdf51d77d3ffa790eb14(param1,param2);
         this._b565152cba116e137513dad3();
         return _loc3_;
      }
      
      public function _c9740a4a274059e5e3e060a6(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x197EF56C ^ -1367652673 ^ 0x43B08929 ^ 0x1B89118B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-157447579 ^ 0x7989A156 ^ -868014973 ^ -1402264384))
            {
               case 0:
                  return;
               case 1:
                  if(!this._71e082f206f970d68d2635ba)
                  {
                     _loc2_ = 0x05CE7376 ^ -2093223637 ^ -745720025 ^ -1169908214;
                  }
                  else
                  {
                     _loc2_ = 0x395A6EFB ^ 0x76FB724B ^ 0x421C6A4D ^ -494838385;
                  }
                  break;
               case 2:
                  this._view.currentView.x = param1.stageX + this._ea1edf9b7b6e58a5943e3b94.x;
                  this._view.currentView.y = param1.stageY + this._ea1edf9b7b6e58a5943e3b94.y;
                  this._5dc1a1b72ed3c9f77895798e(this._f41541f71a8ae02d0bd44228);
                  this._landingRect.moveTo(this._f41541f71a8ae02d0bd44228.x,this._f41541f71a8ae02d0bd44228.y);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _e595f8672a6c8efe1b8666f7(param1:Event = null) : void
      {
         switch(this._entity.location)
         {
            case _b96ff5cb658b59458748ed64.EIIL_PRIVATE_HOUSE:
               §§push(0x7D940043 ^ -793989102 ^ 0x1B8456FC ^ -1229134163);
               break;
            case _b96ff5cb658b59458748ed64.EIIL_DECORATION_SHOP:
               §§push(0x4112F8A0 ^ 0x7F1A7F29 ^ -1691792461 ^ -1524511685);
               break;
            default:
               §§push(0x6E39EC60 ^ 0x024DB9BB ^ 0x03B5CD9A ^ 0x6FC19843);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               this._view.handleClick = true;
         }
         super._e595f8672a6c8efe1b8666f7(param1);
      }
      
      protected function _78e8c6b16ceb4e1108511694(param1:Event) : void
      {
         this._entity.rotation = _92a02af1a67b5d02208e6348.next(this._entity.rotation);
         this._5c24b48057acf2417e04f1c2();
      }
      
      protected function _20d2d99a3b1a508ac3c33eb8(param1:Event) : void
      {
         this._entity.rotation = _92a02af1a67b5d02208e6348._c3ef0ba7aef76fa8efd7e51a(this._entity.rotation);
         this._5c24b48057acf2417e04f1c2();
      }
      
      protected function _5c24b48057acf2417e04f1c2() : void
      {
         this._b06aa937961029d7ca9aa59a();
         this.isSelected = true;
         this._5dc1a1b72ed3c9f77895798e(this._entity.position);
      }
      
      public function _5161131d2df96c91201f48c4(param1:Event = null) : void
      {
         var _loc2_:int = -1807545077 ^ -1343240706 ^ 0x6F421680 ^ -1015400875;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-861789644 ^ -1939776993 ^ -1724918525 ^ 0x4E78450A))
            {
               case 0:
                  _controllerInterior._e49cd9ea41175b7c610e0f93();
                  param1.stopPropagation();
                  _controllerInterior.save();
                  return;
               case 1:
                  return;
               case 2:
                  if(!this.isLandingPossible)
                  {
                     _loc2_ = 0x4FAA4030 ^ -2060022987 ^ 0x0A6D30DA ^ 0x576513FC;
                  }
                  else
                  {
                     _loc2_ = -17731501 ^ -1660942424 ^ -1629225639 ^ 0x6A866280;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _8f93a00e206a5a43c3a2b5c2(param1:Event = null) : void
      {
         _controllerInterior._e49cd9ea41175b7c610e0f93();
         param1.stopPropagation();
         this.removeItem();
         _controllerInterior.save();
      }
      
      override public function _a75c6619e7e273a1005770ee() : void
      {
         this._a19dd12146a985324a1b5688();
         this._b06aa937961029d7ca9aa59a();
      }
      
      private function init() : void
      {
         this._landingRect = new _b875153a0747e250fd4a5c0c();
         _controllerInterior.locationLayers._bottom2Layer.addChild(this._landingRect);
         this._landingRect.hide();
         _graphicsToLoad = -891857554 ^ -1218724055 ^ 0x3FF319B3 ^ 0x427FF3F8;
         this._view.currentRotation = this._entity.rotation;
         this._editorPanel = _controllerInterior.locationLayers.privateHouseEditorPanel;
         this._editorPanel.hide();
         this._f41541f71a8ae02d0bd44228 = new Point();
         this._ea1edf9b7b6e58a5943e3b94 = new Point();
      }
      
      override public function load(param1:DisplayObjectContainer, param2:String, param3:String, param4:int = 0, param5:int = 0) : void
      {
         var _loc6_:int = this._entity._edd1932502b113106ece6d65(param2);
         var _loc7_:int = -this._entity._9375815b2ca05b71439a4b0f(param2,param3);
         super.load(param1,param2,param3,_loc6_,_loc7_);
      }
      
      override protected function addItem() : void
      {
         var _loc1_:int = 0x71851FE9 ^ -1134540696 ^ 0x344587D7 ^ -920279139;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x73266554 ^ -1194679729 ^ -1942522927 ^ 0x775EC301))
            {
               case 0:
                  this._view._0f22b0ff67cf444454e16c17();
                  if(!this._bf3eddb6c523e36b17074445(this._entity.position))
                  {
                     _loc1_ = 0x647764CE ^ 0x39E59A24 ^ 0x1EB34E3C ^ 0x73A4C71C;
                  }
                  else
                  {
                     _loc1_ = 0x7D778A63 ^ 0x2247A1A8 ^ 0x49008A4E ^ 0x26B5D64C;
                  }
                  break;
               case 1:
                  Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挞捅揁捯揷揯捌掃捿掶揘捀挬挼挲挵挅挧揘挞挤揙揓捾挲揗揰揅挐揗揃揾捠提捝挫掛捋捜掜挙揬掰捻揤捕挒揥捳探挮挺揜损掮揝捧掶捆掔捏揔掦捳挐掊挩揸掵揈採挔捍掽挫捍捪掳掬捐掫挰挟揔揀掆挕描揖揯挬掾捸掠挔挴掾探挪揦提插捶捗掙挀捳挈掘揦捠挊挸挦捴掝掐换捀捋揦掚接措捒掿掎捝掯捫揩挄捗揆掬掼探挂掂掭捔掤揨挒掘揇揘掯掵掣揜揃","掆掐掍揑揲捬揰掃揥挼挦掞握揨授揊"));
                  this._b89728eb3e979796c3c237fb();
                  return;
               case 2:
                  this._view._0ad9c1fdb902a66dc9200334(_controllerInterior.locationLayers.mainLayer);
                  this._e3782da039dd41e819628711();
                  this._b06aa937961029d7ca9aa59a();
                  this._view.currentView.hide();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _e3782da039dd41e819628711() : void
      {
         var _loc1_:int = -798035823 ^ -56898887 ^ 0x4A3E5E6A ^ 0x66CB6442;
         var _loc2_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         var _loc3_:int = _92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(this._entity.rotation) ? this._entity.valueObject.size_x : this._entity.valueObject.size_y;
         var _loc4_:int = _92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(this._entity.rotation) ? this._entity.valueObject.size_y : this._entity.valueObject.size_x;
         var _loc5_:int = this._entity.position.x;
         while(_loc5_ < this._entity.position.x + _loc3_)
         {
            _loc1_ = this._entity.position.y;
            while(_loc1_ < this._entity.position.y + _loc4_)
            {
               if(_loc5_ >= _loc2_.length && _loc1_ >= _loc2_[-1523997611 ^ -120804005 ^ -1270163249 ^ -374353471].length)
               {
                  Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸劐勚刽効刿剷剧勖剉剠剿剢剦劚剫劌勷剥勇劌刃勥勝勪剖勈剠刚剄勱勃制刁劷劃勢勤刬勇勅刏勃剶勔劻勝則劢剁剋删刿剟劫努剙刪勧劶劼剼剖勬勃刪勜勰劕劏副勶刃剻动刻刞勳勮勎勈劘劄剌剠剋勤劫刌劕剺劣","劫勻劂刦劝剈勒勤劧刐勿助剣労创劒"));
                  break;
               }
               _loc2_[_loc5_][_loc1_] = this;
               _loc1_++;
            }
            _loc5_++;
         }
      }
      
      private function _b06aa937961029d7ca9aa59a() : void
      {
         var _loc1_:int = -1570322034 ^ 0x4E4CE4B8 ^ -1526804156 ^ 0x48D4FC72;
         this._view.currentRotation = this._entity.rotation;
         var _loc2_:String = this._entity.rotation;
         _loc1_ = this._entity._9375815b2ca05b71439a4b0f(_loc2_,_2486fa5f7cd2f56ad6f3cb62.EIIAT_ISO) + this._entity._19e60c95054bdb84d878bf71(_loc2_);
         this._view.currentView.setPosition(_2486fa5f7cd2f56ad6f3cb62.EIIAT_ISO,this._entity.position,_loc1_);
         _loc1_ = this._entity._9375815b2ca05b71439a4b0f(_loc2_,_2486fa5f7cd2f56ad6f3cb62.EIIAT_OBSTACLE) + this._entity._19e60c95054bdb84d878bf71(_loc2_);
         this._view.currentView.setPosition(_2486fa5f7cd2f56ad6f3cb62.EIIAT_OBSTACLE,this._entity.position,_loc1_);
         _loc1_ = this._entity._9375815b2ca05b71439a4b0f(_loc2_,_2486fa5f7cd2f56ad6f3cb62.EIIAT_SHADOW) + this._entity._19e60c95054bdb84d878bf71(_loc2_);
         this._view.currentView.setPosition(_2486fa5f7cd2f56ad6f3cb62.EIIAT_SHADOW,this._entity.position,_loc1_);
      }
      
      protected function _5dc1a1b72ed3c9f77895798e(param1:Point) : void
      {
         var _loc2_:int = 0x4E1325EE ^ 0x5DA497F4 ^ 0x19500E70 ^ 0x69A79688;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x43FECECA ^ -402563259 ^ 0x2F121F6D ^ -408050685))
            {
               case 0:
                  return;
               case 1:
                  this._landingRect._1eed798b856d9ebe2204505b();
                  this._view.filter = _61273d3106d0e511b3de3353.EIIFT_RED;
                  _loc2_ = 0x538465B2 ^ 0x686CF7CB ^ 0x41640BED ^ 0x19CCB375;
                  break;
               case 2:
                  this._landingRect._92352776a862376dfd140cb6();
                  this._view.filter = _61273d3106d0e511b3de3353.EIIFT_GLOW;
                  _loc2_ = -1845945280 ^ -278264533 ^ 0x7EDB166C ^ 0x630825E6;
                  break;
               case 3:
                  this._752d05b40ef6e937f96443e4();
                  if(this._bf3eddb6c523e36b17074445(param1))
                  {
                     _loc2_ = -1070382950 ^ 0x7EA5FB11 ^ -738747080 ^ 0x0E210C50;
                  }
                  else
                  {
                     _loc2_ = 0x5F629365 ^ -1804131272 ^ 0x10830A98 ^ -1193896155;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _a19dd12146a985324a1b5688() : void
      {
         var _loc1_:int = -578244887 ^ 0x10167DDB ^ -1619448227 ^ 0x52E7FD6F;
         var _loc2_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         this._475ba1d94c984ed742428251();
         var _loc3_:int = _92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(this._entity.rotation) ? this._entity.valueObject.size_x : this._entity.valueObject.size_y;
         var _loc4_:int = _92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(this._entity.rotation) ? this._entity.valueObject.size_y : this._entity.valueObject.size_x;
         var _loc5_:int = this._entity.position.x;
         while(_loc5_ < this._entity.position.x + _loc3_)
         {
            _loc1_ = this._entity.position.y;
            while(_loc1_ < this._entity.position.y + _loc4_)
            {
               if(_loc2_[_loc5_][_loc1_] != _ab4ccf9b7110f9feab05f612.EFCT_BLOCKED)
               {
                  _loc2_[_loc5_][_loc1_] = this;
               }
               _loc1_++;
            }
            _loc5_++;
         }
      }
      
      protected function _475ba1d94c984ed742428251() : void
      {
         var _loc1_:int = 0x619FCC90 ^ -2133940340 ^ 0x7897C8 ^ -517341996;
         var _loc2_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         var _loc3_:int = -598309496 ^ 0x1AAC2759 ^ -279496114 ^ 0x29AD989F;
         while(_loc3_ < _loc2_.length)
         {
            _loc1_ = 0x75A1B8F8 ^ -997978277 ^ 0x452FE5CF ^ -200650132;
            while(_loc1_ < _loc2_[-1961743062 ^ -1066325322 ^ 0x1624DE72 ^ 0x5D47D9EE].length)
            {
               if(_loc2_[_loc3_][_loc1_] == this)
               {
                  _loc2_[_loc3_][_loc1_] = null;
               }
               _loc1_++;
            }
            _loc3_++;
         }
      }
      
      public function _9fc09ec9cd14fd5e825e7028(param1:int, param2:int) : Boolean
      {
         return isCompletelyLoaded && this._view.currentView._9fc09ec9cd14fd5e825e7028(param1,param2);
      }
      
      protected function _86b846903d819fd382e5b8ad() : void
      {
         this._editorPanel.counterclockwise.handler = this._20d2d99a3b1a508ac3c33eb8;
         this._editorPanel.clockwise.handler = this._78e8c6b16ceb4e1108511694;
         this._editorPanel.confirmPlacing.handler = this._5161131d2df96c91201f48c4;
         this._editorPanel.removeItem.handler = this._8f93a00e206a5a43c3a2b5c2;
      }
      
      protected function _ab435369f4c408fbd62d5d7a() : void
      {
         var _loc1_:int = -2055095254 ^ -991444093 ^ -1091430483 ^ -1659365641;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-345620224 ^ -2136389750 ^ 0x7C9CC0D0 ^ 0x75DFB8AC))
            {
               case 0:
                  this._editorPanel.removeItem.removeEventListener(MouseEvent.CLICK,this._8f93a00e206a5a43c3a2b5c2);
                  _loc1_ = -2127336641 ^ 0x72B79523 ^ 0x36B25706 ^ -1480927250;
                  break;
               case 1:
                  this._editorPanel.clockwise.removeEventListener(MouseEvent.CLICK,this._78e8c6b16ceb4e1108511694);
                  _loc1_ = -882798495 ^ -1349481312 ^ -1493049636 ^ -1585660696;
                  break;
               case 2:
                  return;
               case 3:
                  if(this._editorPanel.confirmPlacing.hasEventListener(MouseEvent.CLICK))
                  {
                     _loc1_ = -1424176808 ^ -369230601 ^ 0x743045AD ^ 0x545D0EF3;
                  }
                  else
                  {
                     _loc1_ = 0x36034301 ^ -989079913 ^ 0x4921371B ^ -660218753;
                  }
                  break;
               case 4:
                  if(this._editorPanel.removeItem.hasEventListener(MouseEvent.CLICK))
                  {
                     _loc1_ = 0x49B23F29 ^ 0x69200611 ^ 0x130A1EA7 ^ 0x51145969;
                  }
                  else
                  {
                     _loc1_ = 0x68406CC8 ^ -1878178696 ^ -2045280871 ^ 0x1CD62BDD;
                  }
                  break;
               case 5:
                  if(this._editorPanel.counterclockwise.hasEventListener(MouseEvent.CLICK))
                  {
                     _loc1_ = -1512926949 ^ -1380703380 ^ -2033996131 ^ -332832236;
                  }
                  else
                  {
                     _loc1_ = 0x45604706 ^ 0x2F8832AC ^ -503746631 ^ -375560989;
                  }
                  break;
               case 6:
                  if(this._editorPanel.clockwise.hasEventListener(MouseEvent.CLICK))
                  {
                     _loc1_ = -1324073195 ^ 0x33B65F77 ^ 0x482FBEEE ^ -1476288389;
                  }
                  else
                  {
                     _loc1_ = -958178895 ^ -1871414150 ^ 0x6EC35DAF ^ 0x5AD80691;
                  }
                  break;
               case 7:
                  this._editorPanel.removeItem.removeEventListener(MouseEvent.CLICK,this._5161131d2df96c91201f48c4);
                  _loc1_ = 0x2369E34B ^ -1194468332 ^ 0x28790C5A ^ -783200777;
                  break;
               case 8:
                  this._editorPanel.counterclockwise.removeEventListener(MouseEvent.CLICK,this._20d2d99a3b1a508ac3c33eb8);
                  _loc1_ = 0x58960462 ^ 0x609FBCC4 ^ -601039607 ^ -2035737761;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _0343f451eda5e1fd5efe61b4() : void
      {
         var _loc1_:int = -623568397 ^ -961246420 ^ -607898582 ^ -945445131;
         var _loc2_:int = -1958523588 ^ -788129289 ^ -1695492878 ^ -1061846983;
         var _loc3_:int = -637581022 ^ -1808437863 ^ -1957634922 ^ -962922451;
         var _loc4_:int = 0x05E259B0 ^ 0x1DA6DBFA ^ 0x704BF3C0 ^ 0x680F718A;
         var _loc5_:int = 0x495BD190 ^ 0x385F96D0 ^ 0x2A69D0E7 ^ -1816415013;
         loop0:
         while(true)
         {
            switch(_loc5_ ^ (0x401FF8DB ^ -1215834153 ^ -1890859148 ^ -1341797628))
            {
               case 0:
                  _loc1_ = this._entity._9375815b2ca05b71439a4b0f(this._view.currentRotation,_2486fa5f7cd2f56ad6f3cb62.EIIAT_ISO);
                  _loc2_ = this._entity._19e60c95054bdb84d878bf71(this._view.currentRotation);
                  _loc3_ = this._view.currentView.x + this._view.widthMax / (0x1DCC6DC8 ^ -1977543110 ^ -1953625726 ^ 0x1C637272) - this._editorPanel.width / (-1297808513 ^ -1419051116 ^ 0x3F638E08 ^ 0x26AC72E1) + this._entity.offsetXMin;
                  _loc4_ = this._view.currentView.y + this._entity.offsetYMin - (_loc1_ + _loc2_) - this._editorPanel.height - (0x4E3B445B ^ 0x5F145C24 ^ 0x3F3A1B20 ^ 0x2E15035A);
                  if(_loc3_ < (-596980539 ^ -798703128 ^ -1264653578 ^ -1198463011))
                  {
                     _loc5_ = 0x07D0C787 ^ -1023820570 ^ 0x627CFD0B ^ 0x6F83A512;
                  }
                  else
                  {
                     _loc5_ = -23370412 ^ 0x4EE02711 ^ -378371495 ^ -1847598237;
                  }
                  break;
               case 1:
                  _loc3_ = (0x09D1901A ^ 0x7AE0E35B ^ -864613037 ^ -1085899702) - this._editorPanel.width - (-1964324480 ^ 0x624D21BB ^ -966496205 ^ 0x2EC39802);
                  _loc5_ = 0x74FC0F63 ^ -8908551 ^ -1377839690 ^ -292689582;
                  break;
               case 2:
                  this._editorPanel.moveTo(_loc3_,_loc4_);
                  return;
               case 3:
                  if(_loc3_ > (-1501047642 ^ -551737656 ^ -2046311948 ^ -6475326) - this._editorPanel.width - (-1423801019 ^ 0x57B42C41 ^ -1320227010 ^ 0x4DD84630))
                  {
                     _loc5_ = -114333531 ^ 0x1518B76A ^ -1903512579 ^ -1435807921;
                  }
                  else
                  {
                     _loc5_ = 0x1AB863CE ^ -1372439235 ^ 0x0143CBB7 ^ 0x7D1FB63A;
                  }
                  break;
               case 4:
                  _loc3_ = 0x258574F0 ^ 0x331BF6E5 ^ 0x644CB061 ^ 0x72D23272;
                  _loc5_ = 0x3FA099DB ^ -690293580 ^ 0x323C934C ^ 0x1390DD5C;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _240e252a2c49dc1d4075d1a0(param1:MouseEvent) : void
      {
         this._71e082f206f970d68d2635ba = true;
         this._view.currentView.isOnDrag = this._71e082f206f970d68d2635ba;
         this._editorPanel.hide();
         this._view.currentView.handleMouseUp = true;
         this._ea1edf9b7b6e58a5943e3b94.x = this._view.currentView.x - param1.stageX;
         this._ea1edf9b7b6e58a5943e3b94.y = this._view.currentView.y - param1.stageY;
         _controllerInterior.locationDialog._3e9e33e3b84308df062d9743();
         _controllerInterior.locationDialog.stage.addEventListener(MouseEvent.MOUSE_MOVE,this._c9740a4a274059e5e3e060a6);
      }
      
      protected function _b565152cba116e137513dad3(param1:MouseEvent = null) : void
      {
         var _loc2_:int = 0x34474643 ^ 0x38066168 ^ 0x2EF93558 ^ -968807322;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1256093954 ^ 0x6BB8F75C ^ 0x2706CF94 ^ 0x1D668020))
            {
               case 0:
                  this._entity.position.x = this._f41541f71a8ae02d0bd44228.x;
                  this._entity.position.y = this._f41541f71a8ae02d0bd44228.y;
                  _loc2_ = -1995401262 ^ -550094690 ^ -1631553060 ^ 0x2C1FE882;
                  break;
               case 1:
                  this._landingRect.moveTo(this._f41541f71a8ae02d0bd44228.x,this._f41541f71a8ae02d0bd44228.y);
                  this._0343f451eda5e1fd5efe61b4();
                  this._editorPanel.show();
                  _controllerInterior.locationDialog._5a0c488ad8daf63849d99757();
                  _controllerInterior.locationDialog.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._c9740a4a274059e5e3e060a6);
                  return;
               case 2:
                  this._a19dd12146a985324a1b5688();
                  _loc2_ = -1116978959 ^ -1216116664 ^ 0x3A26DBEA ^ -735040188;
                  break;
               case 3:
                  this._71e082f206f970d68d2635ba = false;
                  this._view.currentView.isOnDrag = this._71e082f206f970d68d2635ba;
                  this._view.currentView.handleMouseUp = false;
                  if(this._bf3eddb6c523e36b17074445(this._f41541f71a8ae02d0bd44228))
                  {
                     _loc2_ = -2097422169 ^ 0x36E2C726 ^ -2115317668 ^ -787822133;
                  }
                  else
                  {
                     _loc2_ = 0x102FBDCF ^ -1252067905 ^ 0x0A2048EE ^ 0x4BA83E8C;
                  }
                  break;
               case 4:
                  this._b06aa937961029d7ca9aa59a();
                  this._5dc1a1b72ed3c9f77895798e(this._entity.position);
                  if(this.isLandingPossible)
                  {
                     _loc2_ = 0x75708B7F ^ 0x1873939F ^ -2054925202 ^ 0x0C7E729A;
                  }
                  else
                  {
                     _loc2_ = -1211723632 ^ 0x4D84A20A ^ 0x7E4B1425 ^ 0x60F018A8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _752d05b40ef6e937f96443e4() : Point
      {
         var _loc1_:int = -724540171 ^ -1380445939 ^ -1488104047 ^ -567992215;
         var _loc2_:int = -627332171 ^ 0x49EDAAD5 ^ -1566774323 ^ 0x31EAEAAD;
         var _loc3_:int = 0x11F11C8C ^ -250729503 ^ 0x5D94BA0F ^ -1117024926;
         var _loc4_:int = 0x406489C1 ^ 0x592BF903 ^ -283014593 ^ -160498947;
         var _loc5_:int = -471214880 ^ -1376367914 ^ 0x400B94F9 ^ 0x0E140ACF;
         var _loc6_:int = 0x71EBB6A9 ^ -1768451517 ^ -445255259 ^ 0x0209D54F;
         var _loc7_:int = -1702350453 ^ -1834071341 ^ -2102660774 ^ 0x2B451107;
         loop0:
         while(true)
         {
            switch(_loc7_ ^ (-184008335 ^ 0x744816FA ^ -494127134 ^ -1039860882))
            {
               case 0:
                  this._f41541f71a8ae02d0bd44228.y = -738914271 ^ 0x675B335F ^ -214905629 ^ 0x479EEF9D;
                  _loc7_ = 0x74E79504 ^ -708285355 ^ -1867736712 ^ -1874068689;
                  break;
               case 1:
                  return this._f41541f71a8ae02d0bd44228;
               case 2:
                  _loc1_ = this._entity._9375815b2ca05b71439a4b0f(this._view.currentRotation,_2486fa5f7cd2f56ad6f3cb62.EIIAT_ISO);
                  _loc2_ = this._entity._19e60c95054bdb84d878bf71(this._view.currentRotation);
                  _loc3_ = _07e71053f9295660fff37b70._b4af572575ace2e0d81c610b(this._view.currentView.x,-703870136 ^ -461077899 ^ 0x6F3ADBD1 ^ 0x5DB592DE);
                  _loc4_ = _07e71053f9295660fff37b70._b4af572575ace2e0d81c610b(this._view.currentView.y - (_loc1_ + _loc2_),0x2ED3F066 ^ -1492482989 ^ -1320356383 ^ 0x389581E6);
                  this._f41541f71a8ae02d0bd44228.x = _loc3_ / (0x426AD863 ^ 0x541472B1 ^ 0x6D08E647 ^ 0x7B764CA7);
                  this._f41541f71a8ae02d0bd44228.y = (_loc4_ - (0x7819D4AE ^ -1135768818 ^ 0x74401AAF ^ -1340848593)) / (-1664292478 ^ -1358149300 ^ 0x547B78EF ^ 0x67BBD813);
                  _loc5_ = this._entity.width;
                  _loc6_ = this._entity.height;
                  if(this._f41541f71a8ae02d0bd44228.x + _loc5_ > (0x6074C36D ^ -1357553449 ^ -1103602890 ^ 0x7159F880))
                  {
                     _loc7_ = -109494157 ^ -815298361 ^ -1353931792 ^ 0x389AF044;
                  }
                  else
                  {
                     _loc7_ = 0x569CBC64 ^ 0x390AA053 ^ 0x63A1D4F9 ^ -1375775796;
                  }
                  break;
               case 3:
                  this._f41541f71a8ae02d0bd44228.y = (-1495608689 ^ 0x2AA23FA1 ^ 0x40065B30 ^ -864111086) - _loc6_;
                  _loc7_ = 0x7D648946 ^ -698290960 ^ -642769974 ^ -746789507;
                  break;
               case 4:
                  this._f41541f71a8ae02d0bd44228.x = 0x636003A2 ^ 0x7E76C5CF ^ -166150251 ^ -351372808;
                  _loc7_ = -249041782 ^ -1991652565 ^ -611520777 ^ 0x022A5259;
                  break;
               case 5:
                  if(this._f41541f71a8ae02d0bd44228.x < (0x79EB770D ^ 0x0D06F358 ^ -2043344913 ^ -220691526))
                  {
                     _loc7_ = 0x77727F28 ^ -607762237 ^ -2022756650 ^ -1978432962;
                  }
                  else
                  {
                     _loc7_ = -905153506 ^ 0x2C3B8E25 ^ 0x324B411D ^ 0x75B42029;
                  }
                  break;
               case 6:
                  if(this._f41541f71a8ae02d0bd44228.y < (-135425563 ^ 0x70D9531D ^ 0x5872B012 ^ -549031190))
                  {
                     _loc7_ = -464344701 ^ -692939879 ^ -1706063828 ^ 0x09672931;
                  }
                  else
                  {
                     _loc7_ = 0x102E189D ^ 0x444074E4 ^ -937569466 ^ 0x3DBB2439;
                  }
                  break;
               case 7:
                  this._f41541f71a8ae02d0bd44228.x = (0x35422CEA ^ 0x4D7D07BC ^ 0x74CCEE1A ^ 0x0CF3C540) - _loc5_;
                  _loc7_ = 0x4B3AF026 ^ 0x091152BF ^ 0x6FCF9648 ^ -1943228461;
                  break;
               case 8:
                  if(this._f41541f71a8ae02d0bd44228.y + _loc6_ > (0x27A35B43 ^ 0x6E59022B ^ 0x210D19DF ^ 0x68F740BB))
                  {
                     _loc7_ = -988486882 ^ 0x61C78681 ^ 0x1207B169 ^ 0x171C4FF2;
                  }
                  else
                  {
                     _loc7_ = 0x551EA050 ^ -756611314 ^ -670739501 ^ -30118004;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b89728eb3e979796c3c237fb() : void
      {
         var _loc1_:Boolean = _controllerInterior.locationDialog.isOwnHouse;
         super.removeItem(_loc1_);
         if(_loc1_)
         {
            _controllerInterior.save();
         }
      }
      
      override public function removeItem(param1:Boolean = true) : void
      {
         this.isSelected = false;
         this._475ba1d94c984ed742428251();
         this._view._2470e86c95bcc4626cc127cf(_controllerInterior.locationLayers.mainLayer);
         super.removeItem(param1);
      }
   }
}

