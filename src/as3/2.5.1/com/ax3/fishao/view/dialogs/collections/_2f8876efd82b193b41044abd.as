package com.ax3.fishao.view.dialogs.collections
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._cf95b72aafa93dfd44e980e7;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._81d4c4d141c5630a6f4e06d7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._91443e554fdccabd3846f5da;
   import com.ax3.fishao.view.dialogs.collections.controllers._faae7106f5e851d80e0967dc;
   import com.ax3.fishao.view.dialogs.collections.model._5cb7e8cda98002c92e2581b2;
   import com.ax3.fishao.view.dialogs.collections.model._712e38656fcd526f5b4f4dfd;
   import com.ax3.fishao.view.dialogs.collections.model._a9131e6257bb33cc49417f53;
   import com.ax3.fishao.view.dialogs.collections.tabs._a02f229c228517bec7b7f341;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class _2f8876efd82b193b41044abd extends _a45803eb7845539c77cf3359
   {
      
      private var _312b38bc2c1dbfd9e1b405a9:_712e38656fcd526f5b4f4dfd;
      
      private var _53adfb36d3d46365bb44285b:Array;
      
      private var _006374a56f70a51e72af8661:Array;
      
      private var _f4642d16c02e5779de47ab98:_cf95b72aafa93dfd44e980e7;
      
      private var _0a590f1afbf138b967ef8ec9:_cf95b72aafa93dfd44e980e7;
      
      private var _c86fc3511ba772ccdd54dee6:_ab72f7798754bf7a51d8acb3;
      
      private var _2b5eecf2ca4b1afd7df6f06e:_a02f229c228517bec7b7f341;
      
      public function _2f8876efd82b193b41044abd()
      {
         super();
         this.init();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_COLLECTIONS;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this._f4642d16c02e5779de47ab98 = new _cf95b72aafa93dfd44e980e7(Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刓刎刖劵劷勴剄刾剧劕劶剝刡删划劽勷劂刨剌加勍剙刑動勋剨劊劇劥勬剦刍劋勌剷刅剼勥刈剆剖勶剗剬劖","劖剪勧勮剆剈刞勸勱券刖劐劾劉劐刀")),_91443e554fdccabd3846f5da.ESDT_VERTICAL);
         var _temp_3:* = (this._f4642d16c02e5779de47ab98.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x1E35640D ^ -920657477 ^ -1218044268 ^ 0x604C9B22;
         _temp_3.offset = new Point(_temp_1,_temp_1);
         (this._f4642d16c02e5779de47ab98.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.gap = new Point(0x44DD32ED ^ 0x05DF03B3 ^ -1844794738 ^ -754410544,-1132359526 ^ 0x3441FAED ^ 0x243C9000 ^ -1392706960);
         (this._f4642d16c02e5779de47ab98.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.additionalSize = new Point(-916874360 ^ -388177983 ^ -1808412398 ^ -1246718629,0x071CA153 ^ -555474561 ^ 0x100822D5 ^ -906976515);
         this._0a590f1afbf138b967ef8ec9 = new _cf95b72aafa93dfd44e980e7(Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剣刢剑劾剉剄劾剣勡勛創剉努勼劇前剤剼剀努分剥劻勻剧剎刕劕刣刍刻劏剖劎剽务剒刢务剫勴剔刾刵務刭劔则勄刻剭剜","勂刍勲勼剕勚划勄勊効剈劎剑剴剁制")),_91443e554fdccabd3846f5da.ESDT_VERTICAL);
         var _temp_6:* = (this._0a590f1afbf138b967ef8ec9.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems;
         var _temp_5:* = §§findproperty(Point);
         var _temp_4:* = -567484530 ^ 0x2949F188 ^ -840773740 ^ 0x3A87E192;
         _temp_6.offset = new Point(_temp_4,_temp_4);
         (this._0a590f1afbf138b967ef8ec9.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.gap = new Point(-1282053498 ^ -381332385 ^ -793025576 ^ -1972675327,-1715216638 ^ 0x1A7D54E4 ^ -187058885 ^ 0x77673EDA);
         (this._0a590f1afbf138b967ef8ec9.view as _81d4c4d141c5630a6f4e06d7).viewContainerItems.additionalSize = new Point(-147934439 ^ -422789164 ^ 0x1FBE1EE6 ^ 0x0E5C122B,-1182216219 ^ 0x1EF80AC4 ^ -691667823 ^ 0x71B539B4);
         this._c86fc3511ba772ccdd54dee6 = new _ab72f7798754bf7a51d8acb3(this,Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刟勝刧剀剤勥刉刲剶刘劼勸勋勰刁勁则勾勪勲劶勎刢剘刣劼","剳剕到劻剻劜劍勞务刽劐刨劶勇剼刑")));
         this._c86fc3511ba772ccdd54dee6.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TITLE);
         this._2b5eecf2ca4b1afd7df6f06e = new _a02f229c228517bec7b7f341(this);
         _asset.addChild(this._2b5eecf2ca4b1afd7df6f06e.source);
         this._2b5eecf2ca4b1afd7df6f06e._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_ACTIVE));
         this._2b5eecf2ca4b1afd7df6f06e._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_COMPLETED));
         this._2b5eecf2ca4b1afd7df6f06e.source.x = -1022487938 ^ -984867398 ^ -1712787108 ^ -1616183599;
         this._2b5eecf2ca4b1afd7df6f06e.source.y = -2046638495 ^ 0x0B02580E ^ 0x36C59473 ^ -1144714707;
         this._cf157b12ef4a7036baa2e107();
         this._f6d783fae65f0ef5acda2154();
         super._935ac2966ddad68dfc449202();
      }
      
      private function _dbb2430f1d099727e3e86c67(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         _loadingIndicator.stop();
         super.show();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:int = 0x06D07E8B ^ -1714754523 ^ -815610940 ^ 0x5078516A;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            _loc3_ = this._2b5eecf2ca4b1afd7df6f06e.items.indexOf(param1);
            if(_loc3_ != ConstantsBase.INDEX_NONE)
            {
               if(this._2b5eecf2ca4b1afd7df6f06e.tabActiveIndex != _loc3_)
               {
                  this._2b5eecf2ca4b1afd7df6f06e.tabActiveIndex = _loc3_;
                  this._f6d783fae65f0ef5acda2154();
               }
            }
         }
         return _loc4_;
      }
      
      private function _f6d783fae65f0ef5acda2154() : void
      {
         this._0a590f1afbf138b967ef8ec9.view.source.visible = this._2b5eecf2ca4b1afd7df6f06e.tabActiveIndex == (-1370825243 ^ 0x0DDB3028 ^ 0x73E8A06F ^ -797356638);
         this._f4642d16c02e5779de47ab98.view.source.visible = this._2b5eecf2ca4b1afd7df6f06e.tabActiveIndex == (-337342287 ^ 0x71E0D415 ^ 0x4A4C6D71 ^ -800577068);
      }
      
      private function init() : void
      {
         this._312b38bc2c1dbfd9e1b405a9 = GameSwf.instance.managerCollections;
         this._53adfb36d3d46365bb44285b = [];
         this._006374a56f70a51e72af8661 = [];
      }
      
      private function _cf157b12ef4a7036baa2e107() : void
      {
         var _loc1_:_faae7106f5e851d80e0967dc = null;
         var _loc2_:_a9131e6257bb33cc49417f53 = null;
         var _loc3_:Array = null;
         this._312b38bc2c1dbfd9e1b405a9._29a7aafc75dcbdf339b4a6a2();
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         for each(_loc2_ in this._312b38bc2c1dbfd9e1b405a9.collectionsCompleted)
         {
            if(_loc2_.type != _5cb7e8cda98002c92e2581b2.ECT_FURNITURE_FACTORY)
            {
               _loc1_ = new _faae7106f5e851d80e0967dc(_loc2_);
               this._53adfb36d3d46365bb44285b.push(_loc1_);
               _loc4_.push(_loc1_.view.source);
            }
         }
         this._f4642d16c02e5779de47ab98.items = _loc4_;
         if(_loc4_.length == (-1761718330 ^ -377573379 ^ -1740412988 ^ -406616065))
         {
            this._2b5eecf2ca4b1afd7df6f06e._e139c99b48edb08e802d6e90(0x24553D4C ^ 0x6D00C0D5 ^ -2002319178 ^ -1041042130);
         }
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         var _loc8_:Array = this._312b38bc2c1dbfd9e1b405a9.collectionsNotCompleted;
         for each(_loc2_ in _loc8_)
         {
            if(_loc2_.type != _5cb7e8cda98002c92e2581b2.ECT_FURNITURE_FACTORY)
            {
               if(_loc2_.isCanCollectOnCurrentLocation && !_loc2_.isLocked)
               {
                  _loc6_.push(_loc2_);
               }
               else
               {
                  _loc7_.push(_loc2_);
               }
            }
         }
         _loc6_.sort(_a9131e6257bb33cc49417f53._bb088c3c90501532d2425f8c);
         _loc3_ = _8e13ffc955ce803f9ca06283._95a5742acc364abb3ac13b14(_loc6_,_loc7_);
         for each(_loc2_ in _loc3_)
         {
            _loc1_ = new _faae7106f5e851d80e0967dc(_loc2_);
            this._006374a56f70a51e72af8661.push(_loc1_);
            _loc5_.push(_loc1_.view.source);
         }
         this._0a590f1afbf138b967ef8ec9.items = _loc5_;
      }
      
      override public function show() : void
      {
         _loadingIndicator.start();
         GameSwf.instance.managerFishes._8bf4de9d74518e406a443aa3(this._dbb2430f1d099727e3e86c67);
      }
      
      override public function close() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         for each(_loc1_ in this._53adfb36d3d46365bb44285b)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         for each(_loc1_ in this._006374a56f70a51e72af8661)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         this._c86fc3511ba772ccdd54dee6._90eac9ca552fe54c2ca0299f();
         this._c86fc3511ba772ccdd54dee6 = null;
         this._2b5eecf2ca4b1afd7df6f06e._90eac9ca552fe54c2ca0299f();
         this._2b5eecf2ca4b1afd7df6f06e = null;
         super.close();
      }
   }
}

