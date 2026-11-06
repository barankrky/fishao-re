package com.ax3.fishao.view.dialogs.furniture_factory.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._cf95b72aafa93dfd44e980e7;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._81d4c4d141c5630a6f4e06d7;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._91443e554fdccabd3846f5da;
   import com.ax3.fishao.view.dialogs.collections.controllers._faae7106f5e851d80e0967dc;
   import com.ax3.fishao.view.dialogs.collections.model._5cb7e8cda98002c92e2581b2;
   import com.ax3.fishao.view.dialogs.collections.model._712e38656fcd526f5b4f4dfd;
   import com.ax3.fishao.view.dialogs.collections.model._a9131e6257bb33cc49417f53;
   import com.ax3.fishao.view.dialogs.furniture_factory._c77d525b20bc5f754c3cac44;
   import com.ax3.fishao.view.dialogs.furniture_factory.views._159660f20e136e10a432fb37;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class _e9b567863951cb4c59b55d84 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _b024b53bf7bf3ef9f09e7fb5:_159660f20e136e10a432fb37;
      
      private var _912249a5cfcf7305f66f4e14:_878b94e35d0285122d3e2b00;
      
      private var _84988355dce7cd8876c161a9:_c77d525b20bc5f754c3cac44;
      
      private var _730f6f2543b81067115d6410:_712e38656fcd526f5b4f4dfd;
      
      private var _44f5c387f4b06bb880966c4d:_cf95b72aafa93dfd44e980e7;
      
      private var _96ac6536e7a1eea2a9a2f886:_cf95b72aafa93dfd44e980e7;
      
      private var _332b55e00a0ee9aef57eeedc:Array;
      
      private var _988a5e8eda40921dcc49e5e8:Array;
      
      public function _e9b567863951cb4c59b55d84(param1:DisplayObjectContainer)
      {
         this._b024b53bf7bf3ef9f09e7fb5 = new _159660f20e136e10a432fb37(this,param1);
         super(this._b024b53bf7bf3ef9f09e7fb5);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:int = 0x0ABB6578 ^ -638757344 ^ -762210005 ^ 0x01C7AA73;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._b024b53bf7bf3ef9f09e7fb5.buttonOpen:
                  §§push(-525927227 ^ 0x41FCF59B ^ 0x706696F0 ^ -784556114);
                  break;
               case this._b024b53bf7bf3ef9f09e7fb5.buttonSkipTime:
                  §§push(0x36B6B792 ^ -651810972 ^ 0x5C0AC948 ^ -1281730113);
                  break;
               default:
                  §§push(0x5393EF3D ^ 0x51336C13 ^ 0x25C65A6E ^ 0x2766D942);
            }
            switch(§§pop())
            {
               case 0:
                  this._84988355dce7cd8876c161a9.getReward();
                  this._b024b53bf7bf3ef9f09e7fb5.buttonOpen.disable();
                  break;
               case 1:
                  if(app.user.fishcoins >= this._84988355dce7cd8876c161a9.skipTimePriceFishcoins)
                  {
                     this._84988355dce7cd8876c161a9.skipTime();
                     this._b024b53bf7bf3ef9f09e7fb5.buttonSkipTime.disable();
                  }
                  else
                  {
                     GameSwf.instance._e6f0a7b005cacf7751286e97();
                  }
                  break;
               default:
                  _loc3_ = this._b024b53bf7bf3ef9f09e7fb5.viewTabs.items.indexOf(param1);
                  if(_loc3_ != ConstantsBase.INDEX_NONE)
                  {
                     if(this._b024b53bf7bf3ef9f09e7fb5.viewTabs.tabActiveIndex != _loc3_)
                     {
                        this._b024b53bf7bf3ef9f09e7fb5.viewTabs.tabActiveIndex = _loc3_;
                        this._d6c126e3612f99804efd9313();
                     }
                  }
                  else
                  {
                     Debug.assert(false);
                  }
            }
         }
         return _loc4_;
      }
      
      private function _d6c126e3612f99804efd9313() : void
      {
         this._96ac6536e7a1eea2a9a2f886.view.source.visible = this._b024b53bf7bf3ef9f09e7fb5.viewTabs.tabActiveLabel == _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_ACTIVE);
         this._44f5c387f4b06bb880966c4d.view.source.visible = this._b024b53bf7bf3ef9f09e7fb5.viewTabs.tabActiveLabel == _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_COMPLETED);
      }
      
      private function init() : void
      {
         this._84988355dce7cd8876c161a9 = GameSwf.instance.managerFurnitureFactory;
         this._730f6f2543b81067115d6410 = GameSwf.instance.managerCollections;
         this._912249a5cfcf7305f66f4e14 = new _878b94e35d0285122d3e2b00(Debug.assertProperty(this._b024b53bf7bf3ef9f09e7fb5.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勺劮劉劐劢刲刖剎加刴力刣剫剓剘剅动勪刄刎勇剐則劷刔剘刳劐","功剧劸劇勭勀剑剁勢剞労刁剁勞剅划")));
         this._44f5c387f4b06bb880966c4d = new _cf95b72aafa93dfd44e980e7(Debug.assertProperty(this._b024b53bf7bf3ef9f09e7fb5.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剬切刅剗到势剒到劑刄務刴剽刽剗劀劸劳劆募刿勬劃勞勌勱劒劝励劮刞勵勑剤勦勛勹制剛剬劣剫刵剘剂刖","剛刁剭刾刹切劾刐刢剦剦劺加刵劘勩")),_91443e554fdccabd3846f5da.ESDT_VERTICAL);
         var _temp_3:* = (this._44f5c387f4b06bb880966c4d.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = -1144907847 ^ -1218182088 ^ -82590176 ^ -139078239;
         _temp_3.offset = new Point(_temp_1,_temp_1);
         (this._44f5c387f4b06bb880966c4d.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.gap = new Point(0x37FB1277 ^ 0x5A6861C4 ^ -1091559665 ^ -748458820,-1591641203 ^ 0x1DE81E34 ^ -1302085227 ^ 0x0EAAA429);
         (this._44f5c387f4b06bb880966c4d.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.additionalSize = new Point(0x2DB1128C ^ -1689526072 ^ 0x6B958521 ^ -579897499,-808767789 ^ 0x72CE919F ^ 0x3AA9CFD9 ^ -2018742127);
         this._96ac6536e7a1eea2a9a2f886 = new _cf95b72aafa93dfd44e980e7(Debug.assertProperty(this._b024b53bf7bf3ef9f09e7fb5.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挃捳掆掰挋揸掬掤捖挙挧掃掋挄掟捙捤指捒揀授握捤揩捶描揍按掶挌掸捷按掯捴挹挗挀捏挽掯掾排捬捂揾挂掲捨揲挲挾","捥揠掓揶挈捄掕揾挨挻描挝掀揮挴捏")),_91443e554fdccabd3846f5da.ESDT_VERTICAL);
         var _temp_6:* = (this._96ac6536e7a1eea2a9a2f886.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems;
         var _temp_5:* = §§findproperty(Point);
         var _temp_4:* = -1565162374 ^ -95274405 ^ 0x41FD1339 ^ 0x191AAD18;
         _temp_6.offset = new Point(_temp_4,_temp_4);
         (this._96ac6536e7a1eea2a9a2f886.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.gap = new Point(0x28738D41 ^ 0x3EB08EC2 ^ -1427142956 ^ -1137932969,-1775210254 ^ 0x30AFE642 ^ 0x3417C6BB ^ -1836560370);
         (this._96ac6536e7a1eea2a9a2f886.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.additionalSize = new Point(0x24CA3D6D ^ -762543923 ^ -2111376357 ^ 0x746049BB,-769814316 ^ 0x48D110BA ^ 0x51E831A1 ^ -886787637);
         this._458d092701449f5e6f8b0a31();
         this._09bcca27d65e822588343cb0();
         this._58058e38780245ee95eb2444();
         this._d6c126e3612f99804efd9313();
      }
      
      private function _58058e38780245ee95eb2444() : void
      {
         var _loc1_:_faae7106f5e851d80e0967dc = null;
         var _loc2_:_a9131e6257bb33cc49417f53 = null;
         this._4893f03652ae7709d13c7184();
         this._332b55e00a0ee9aef57eeedc = [];
         this._988a5e8eda40921dcc49e5e8 = [];
         this._730f6f2543b81067115d6410._29a7aafc75dcbdf339b4a6a2();
         var _loc3_:Array = [];
         var _loc4_:Array = [];
         for each(_loc2_ in this._730f6f2543b81067115d6410.collectionsCompleted)
         {
            if(_loc2_.type == _5cb7e8cda98002c92e2581b2.ECT_FURNITURE_FACTORY)
            {
               _loc1_ = new _faae7106f5e851d80e0967dc(_loc2_);
               this._332b55e00a0ee9aef57eeedc.push(_loc1_);
               _loc3_.push(_loc1_.view.source);
            }
         }
         this._44f5c387f4b06bb880966c4d.items = _loc3_;
         if(_loc3_.length == (-802709870 ^ -1346952171 ^ 0x50AC16FA ^ 0x2F3CAC7D))
         {
            this._b024b53bf7bf3ef9f09e7fb5.viewTabs._e139c99b48edb08e802d6e90(-403776760 ^ -141434639 ^ -2038467676 ^ -1778366372);
         }
         var _loc5_:Array = this._730f6f2543b81067115d6410.collectionsNotCompleted;
         for each(_loc2_ in _loc5_)
         {
            if(_loc2_.type == _5cb7e8cda98002c92e2581b2.ECT_FURNITURE_FACTORY)
            {
               _loc1_ = new _faae7106f5e851d80e0967dc(_loc2_);
               this._988a5e8eda40921dcc49e5e8.push(_loc1_);
               _loc4_.push(_loc1_.view.source);
            }
         }
         this._96ac6536e7a1eea2a9a2f886.items = _loc4_;
         if(_loc4_.length == (0x6EB18B9B ^ -1259469544 ^ -772778706 ^ 0x0BAFDBAD))
         {
            this._b024b53bf7bf3ef9f09e7fb5.viewTabs._e139c99b48edb08e802d6e90(0x7932ED05 ^ -450360194 ^ 0x41898EF8 ^ -577540221);
         }
      }
      
      private function _458d092701449f5e6f8b0a31() : void
      {
         var _loc1_:int = 0x32805B3A ^ 0x2F722AC5 ^ 0x260A6814 ^ 0x5C7B2692;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-291046249 ^ -13698848 ^ 0x2C9BCE0D ^ 0x5A90F501))
            {
               case 0:
                  if(this._b024b53bf7bf3ef9f09e7fb5.buttonSkipTime.visible)
                  {
                     _loc1_ = 0x08730950 ^ -16966794 ^ 0x2A1DB329 ^ -1156538763;
                  }
                  else
                  {
                     _loc1_ = 0x03251C8A ^ 0x1A8D2D5B ^ 0x505C1692 ^ 0x2E77183D;
                  }
                  break;
               case 1:
                  this._b024b53bf7bf3ef9f09e7fb5.buttonSkipTime.enable();
                  _loc1_ = 0x054105A7 ^ -21927659 ^ 0x04C13F0D ^ -1733137214;
                  break;
               case 2:
                  this._b024b53bf7bf3ef9f09e7fb5.buttonOpen.visible = this._84988355dce7cd8876c161a9.rewardTimeLeft == (-496530807 ^ 0x79F1B08D ^ -1313013229 ^ 0x2A2B3817);
                  this._b024b53bf7bf3ef9f09e7fb5.buttonSkipTime.visible = this._84988355dce7cd8876c161a9.rewardTimeLeft > (-1936434144 ^ 0x0E5213CE ^ -887646099 ^ 0x49D1D783);
                  this._b024b53bf7bf3ef9f09e7fb5.buttonSkipTime.coins = this._84988355dce7cd8876c161a9.skipTimePriceFishcoins;
                  if(this._b024b53bf7bf3ef9f09e7fb5.buttonOpen.visible)
                  {
                     _loc1_ = -1664100006 ^ -857705881 ^ 0x51169A8C ^ 0x66BA0EC9;
                  }
                  else
                  {
                     _loc1_ = 0x45A28BFF ^ -887586492 ^ -1615456935 ^ 0x768F209D;
                  }
                  break;
               case 3:
                  this._b024b53bf7bf3ef9f09e7fb5.buttonOpen.enable();
                  _loc1_ = -977468775 ^ -639067536 ^ 0x528A99D6 ^ 0x295C3E44;
                  break;
               case 4:
                  this._b024b53bf7bf3ef9f09e7fb5.buttonOpen.disable();
                  _loc1_ = -514238308 ^ 0x2AA2E66B ^ 0x0BA84FD2 ^ -1479487906;
                  break;
               case 5:
                  this._b024b53bf7bf3ef9f09e7fb5.buttonSkipTime.disable();
                  _loc1_ = 0x2EB0B67C ^ -70597014 ^ -2061285189 ^ 0x37DA07D0;
                  break;
               case 6:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _09bcca27d65e822588343cb0() : void
      {
         var _loc1_:String = null;
         var _loc2_:Boolean = this._84988355dce7cd8876c161a9.rewardTimeLeft == (-165271540 ^ -2049719625 ^ -916623405 ^ -1163360920);
         if(_loc2_)
         {
            _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_NPC_MESSAGE_OPEN);
         }
         else
         {
            _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_NPC_MESSAGE_SKIP_TIME);
            _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_PRICE,this._84988355dce7cd8876c161a9.skipTimePriceFishcoins);
         }
         this._b024b53bf7bf3ef9f09e7fb5.npcMessage = _loc1_;
      }
      
      private function _22fc93dcf1ca32816d80ab20() : void
      {
         var _loc1_:_faae7106f5e851d80e0967dc = null;
         var _loc2_:int = 0x04360AA6 ^ -25301653 ^ -1259488781 ^ 0x4EA65E3E;
         var _loc3_:int = this._84988355dce7cd8876c161a9.reward.item.resourceId;
         var _loc4_:Boolean = false;
         _loc2_ = 0x44E6E488 ^ -671411410 ^ -662159471 ^ 0x4B95C837;
         while(_loc2_ < this._988a5e8eda40921dcc49e5e8.length)
         {
            _loc1_ = this._988a5e8eda40921dcc49e5e8[_loc2_];
            if(_loc1_.entity.itemsIDs.indexOf(_loc3_) != ConstantsBase.INDEX_NONE)
            {
               this._96ac6536e7a1eea2a9a2f886._212441a4855840c8e96e9cf3(_loc2_);
               _loc4_ = true;
               this._b024b53bf7bf3ef9f09e7fb5.viewTabs.tabActiveLabel = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_ACTIVE);
               this._d6c126e3612f99804efd9313();
               break;
            }
            _loc2_++;
         }
         if(_loc4_)
         {
            return;
         }
         _loc2_ = -1539729270 ^ 0x436706C6 ^ 0x298C0B3D ^ -825059983;
         while(_loc2_ < this._332b55e00a0ee9aef57eeedc.length)
         {
            _loc1_ = this._332b55e00a0ee9aef57eeedc[_loc2_];
            if(_loc1_.entity.itemsIDs.indexOf(_loc3_) != ConstantsBase.INDEX_NONE)
            {
               this._44f5c387f4b06bb880966c4d._212441a4855840c8e96e9cf3(_loc2_);
               this._b024b53bf7bf3ef9f09e7fb5.viewTabs.tabActiveLabel = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_COMPLETED);
               this._d6c126e3612f99804efd9313();
               break;
            }
            _loc2_++;
         }
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_UPDATE:
               §§push(0x26CF893D ^ -1086667114 ^ -620519626 ^ 0x42F6D09D);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_GOT:
               §§push(-717968003 ^ 0x7F5D3A01 ^ -1494297167 ^ 0x0C8742CC);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE:
               §§push(0x0F25E548 ^ -1005237549 ^ -1067147816 ^ 0x0B543241);
               break;
            default:
               §§push(0x1DE0079B ^ -1092240527 ^ -262461052 ^ 0x535E956D);
         }
         switch(§§pop())
         {
            case 0:
               this._09bcca27d65e822588343cb0();
               this._458d092701449f5e6f8b0a31();
               this._912249a5cfcf7305f66f4e14.update(param1);
               break;
            case 1:
               this._b024b53bf7bf3ef9f09e7fb5._d9e4945867b18919965e4565();
               this._58058e38780245ee95eb2444();
               this._d6c126e3612f99804efd9313();
               this._458d092701449f5e6f8b0a31();
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_NPC_MESSAGE_REWARD);
               _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_RESOURCE,this._84988355dce7cd8876c161a9.reward.translationItem);
               this._b024b53bf7bf3ef9f09e7fb5.npcMessage = _loc2_;
               this._22fc93dcf1ca32816d80ab20();
               this._912249a5cfcf7305f66f4e14.update(param1);
               break;
            case 2:
               this._09bcca27d65e822588343cb0();
               this._458d092701449f5e6f8b0a31();
               this._912249a5cfcf7305f66f4e14.update(param1);
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揊捦按捈掵挪揙捴挈挢挒揥揘揠捌掜掄捉捉揀挼挎捕挕捑掜挡指揌掔捉援捘捴揱換捘捳揟排挄捫挄挬控授捏掜揲掶掔挮按揯揯挀挼揜揻挠捺揧挊揽掺掣揦捦挗捉捻掤捈揤握掼掆掸挸捰捚挘揵揷挅揦揠掺掌掤掘揪捖振揞揹揿掞捫揗挋挴揧捤掲授捎掁捽挓捛捝揤挋揫掟掝揅捠捾捱掰换揆掺揖捼掺挐捈捸掋揑揵挰挏推掄揃揚挎揊掬挐掇揁掕揅挟提","挃捧揮掏捁捨挭揓掰捙捄挐揋捚捈挌") + param1);
         }
      }
      
      private function _4893f03652ae7709d13c7184() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         for each(_loc1_ in this._332b55e00a0ee9aef57eeedc)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         for each(_loc1_ in this._988a5e8eda40921dcc49e5e8)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._4893f03652ae7709d13c7184();
         this._84988355dce7cd8876c161a9 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

