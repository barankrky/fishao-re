package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._d248fcdc0f7611518f3784e3;
   import com.ax3.fishao.control.ExtendedMovieList;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishes._cd108dc25fb4e5ceaadd7a9d;
   import com.ax3.fishao.view.dialogs.fishes.model._21587f0ac0bcbbbfdcd63026;
   import com.ax3.fishao.view.wrappers.impl._d0a8af7675ce093102e12974;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.empty;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _16e26a611afe5208717ab607 extends _24ef35c501259e7e980077ee
   {
      
      public static var showFishId:int = 0x78CB37DB ^ 0x0A498A6B ^ 0x528C1512 ^ -537831587;
      
      private static const _11884d7ef5d75fc0f3b04477:int = 0x3D7FB9EC ^ -23918688 ^ -1806551179 ^ 0x57BE892D;
      
      private var _33196115c9e7f4b935f65c3e:ExtendedMovieList;
      
      private var _36c360feb585cc6ad92230cb:Boolean;
      
      private var _9b5620cfe3c3423bc37ff473:String;
      
      private var _ae1ece92de7070952c5e0031:RegExp;
      
      private var _7b667ebc5eacc12dddf0c93d:_cd108dc25fb4e5ceaadd7a9d;
      
      public function _16e26a611afe5208717ab607()
      {
         super();
         this._7b667ebc5eacc12dddf0c93d = GameSwf.instance.managerFishes;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         fishListVScroll.moveHandler = this._623e3e05c55d516f6efd390d;
         fishListVScroll.mouseScrollArea = fishListContainer;
         main.notepadScroll = notepadSliderVScroll;
         main.mainInterfaceScroll = fishDexVScroll;
         main.mouseScrollArea = fishInfoContainer;
         main.visible = false;
         search.serchCallback = this.sort;
         notCaught.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("据揙掐挨揓捭掎揺捿捸排挐揽揻揇探捒掩挍捲挟揧捃掘揬挽掀捻挙挨挷採挼捚指按掶挎揱捺掗按掆挐","推捌挋捉掕挅挮揵挓揅控採挍捯掭掓"));
         viewCatchInfoButton.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("რ၁ၴၖ჏ႇၰႰႯႍჭဴဦჂႡჴ႙჋Ⴘ၆ეၖჅထၢ჌ჸၯოႳဣႬွဤჽဆძჷဎႂႰ႟ჵၒပဂဂႴသႂၼჁუဃ","჻თ၉ိႛဲႌၧ႗ႨၒၮჵჱႸၤ"));
         viewCatchInfoButton.handler = this._e30cba1f2b838200b97978d6;
         search.textField.tabIndex = 0x5A430AA2 ^ -1704177083 ^ -4886663 ^ 0x3F9A379F;
         notepadTextField.tabIndex = 0x6CFEFCE9 ^ 0x52E5203A ^ 0x4CC65189 ^ 0x72DD8D58;
         GameSwf.currentLocationDialog.fishdexDialog = this;
      }
      
      protected function _e30cba1f2b838200b97978d6(param1:MouseEvent) : void
      {
         var _loc2_:_aaf40c474cdac784463304b5 = app.dialogFactory._6f440513281998ff9a55299c();
         _loc2_._fb2737826eacd0c722842d87(_fishId);
         _loc2_.show();
      }
      
      override public function activate() : void
      {
         super.activate();
         this._9b5620cfe3c3423bc37ff473 = null;
         this._ae1ece92de7070952c5e0031 = null;
         _loadingIndicator.start();
         GameSwf.instance.managerFishes._8bf4de9d74518e406a443aa3(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._90c48dbfdc54d00410a1fd91));
      }
      
      private function _90c48dbfdc54d00410a1fd91(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this.updateList();
         _loadingIndicator.stop();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function sort(param1:String) : void
      {
         var _loc2_:int = -806954833 ^ -1722156791 ^ 0x0F8C3865 ^ -101654358;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x33A97EF1 ^ 0x3C8E8357 ^ 0x07E271ED ^ -1475971807))
            {
               case 0:
                  this._ae1ece92de7070952c5e0031 = new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捞振挱掾捡揃挆挴挦捪","掳挮挶採揃捛揱挟揫捛挚揉捨掎掍掩") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ပჩၡၺ႑ၩှჯႨၒခ်၊ရ","၎ဲႴယნႸၥဉ႔ჯဂၡპფ჉ဲ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剞劁勈劄動劵剥勋劦刑","勫助勑务动劕别剉刽劝剳勘剏勼勳刢"));
                  _loc2_ = 0x662826B6 ^ -1392773881 ^ 0x18DB3DF5 ^ 0x72CB172F;
                  break;
               case 1:
                  this.updateList();
                  return;
               case 2:
                  this._ae1ece92de7070952c5e0031 = null;
                  _loc2_ = 0x4D21B7A7 ^ -666185946 ^ 0x0D981843 ^ 0x383099A9;
                  break;
               case 3:
                  this._9b5620cfe3c3423bc37ff473 = param1;
                  if(!empty(this._9b5620cfe3c3423bc37ff473))
                  {
                     _loc2_ = 0x09201E12 ^ 0x38BE9F55 ^ 0x0C9553C4 ^ -1647825943;
                  }
                  else
                  {
                     _loc2_ = -987135532 ^ 0x5D7E5AE6 ^ -1469349872 ^ -1862294966;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function updateList() : void
      {
         var _loc1_:_cff30366d510ea862540bfef = null;
         var _loc2_:Vector.<DisplayObject> = null;
         var _loc3_:int = 0x681E6D3C ^ -60754578 ^ -1706604154 ^ 0x0E39D1D4;
         var _loc4_:DisplayObject = null;
         var _loc5_:_21587f0ac0bcbbbfdcd63026 = null;
         var _loc6_:Vector.<_cff30366d510ea862540bfef> = Vector.<_cff30366d510ea862540bfef>(app.fishDict.getAll());
         _loc6_.sort(_cff30366d510ea862540bfef._f5502442600f90ab60bf8136);
         if(_loc6_.length == (0x4BC89C2C ^ -564938648 ^ 0x0D6E6C04 ^ -1728755648))
         {
            return;
         }
         var _loc7_:Array = this._7b667ebc5eacc12dddf0c93d._beedd347b0befc05b4231987(_loc6_);
         var _loc8_:Array = GameSwf.instance.managerFishes.fishesUser;
         _loc8_.sort(_cd108dc25fb4e5ceaadd7a9d._f5502442600f90ab60bf8136);
         var _loc9_:Vector.<int> = new Vector.<int>();
         if(_state == _d248fcdc0f7611518f3784e3.READY)
         {
            _loc2_ = new Vector.<DisplayObject>();
            _loc3_ = -742680052 ^ -970623114 ^ -1760880346 ^ -2104101796;
            for each(_loc5_ in _loc8_)
            {
               _loc9_.push(_loc5_.id);
            }
            if(empty(this._ae1ece92de7070952c5e0031))
            {
               for each(_loc1_ in _loc7_)
               {
                  if(_loc9_.indexOf(_loc1_.id) == (-842196202 ^ 0x26BC73C8 ^ -1068031044 ^ -723929955))
                  {
                     _loc4_ = _fishListButton._a54f7898880d608c7e1dc342();
                     _d0a8af7675ce093102e12974(_loc4_).setData(_loc1_,null);
                     _loc2_.push(_loc4_);
                  }
                  else
                  {
                     if(_loc1_.id == showFishId)
                     {
                        _loc3_ = int(_loc2_.length);
                     }
                     for each(_loc5_ in _loc8_)
                     {
                        if(_loc5_.id == _loc1_.id)
                        {
                           break;
                        }
                     }
                     _loc4_ = _fishListButton._a54f7898880d608c7e1dc342();
                     _d0a8af7675ce093102e12974(_loc4_).setData(_loc1_,_loc5_);
                     _loc2_.push(_loc4_);
                  }
               }
            }
            else
            {
               for each(_loc5_ in _loc8_)
               {
                  _loc1_ = _cff30366d510ea862540bfef(app.fishDict.get(_loc5_.id));
                  if(_loc1_ != null)
                  {
                     if(this._1c3fc36f988602cf788863a2(_loc1_.displayName))
                     {
                        _loc4_ = _fishListButton._a54f7898880d608c7e1dc342();
                        _d0a8af7675ce093102e12974(_loc4_).setData(_loc1_,_loc5_);
                        _loc2_.push(_loc4_);
                     }
                  }
               }
            }
            fishListVScroll.visible = _loc2_.length > _11884d7ef5d75fc0f3b04477;
            fishListVScroll.setHandlerSize(_11884d7ef5d75fc0f3b04477 / _loc2_.length,_11884d7ef5d75fc0f3b04477);
            var _temp_5:* = this;
            var _temp_4:* = §§findproperty(ExtendedMovieList);
            var _temp_3:* = -972572040 ^ -2120844652 ^ 0x7B79E42A ^ 0x3CE824C7;
            var _temp_2:* = -21211197 ^ -120978404 ^ 0x3E93759D ^ -954541635;
            var _temp_1:* = 0x63AE0BA9 ^ -1482717036 ^ 0x42861AE7 ^ -2034787878;
            _temp_5._33196115c9e7f4b935f65c3e = new ExtendedMovieList(_temp_3,_temp_2,_temp_1,_temp_1,true);
            this._33196115c9e7f4b935f65c3e.setList(_loc2_,_loc3_);
            this._01e4df3bba908c084f47ba3a(_loc3_,_loc2_.length - _11884d7ef5d75fc0f3b04477);
            if(_loc3_ < _loc2_.length)
            {
               this._c20afa7b4af2b7cb47aae8d0(_d0a8af7675ce093102e12974(_loc2_[_loc3_]));
            }
            this._33196115c9e7f4b935f65c3e.showBackgroundFunction = _d0a8af7675ce093102e12974.showBackgroundFunction;
            this._33196115c9e7f4b935f65c3e.clearBackgroundFunction = _d0a8af7675ce093102e12974.clearBackgroundFunction;
            this._33196115c9e7f4b935f65c3e.isBackgroundActiveFunction = _d0a8af7675ce093102e12974.isBackgroundActiveFunction;
            listSet._ad847eaed7ca239e8fdde3cd(this._33196115c9e7f4b935f65c3e,this._c20afa7b4af2b7cb47aae8d0);
            fishListVScroll.listSize = this._33196115c9e7f4b935f65c3e.height;
         }
         else
         {
            this._36c360feb585cc6ad92230cb = true;
         }
      }
      
      private function _01e4df3bba908c084f47ba3a(param1:int, param2:int) : void
      {
         this._33196115c9e7f4b935f65c3e.scrollTo(param1,limit(param1,-2053078346 ^ -1994220442 ^ 0x5388850A ^ 0x5F0A9BDA,param2));
         var _loc3_:Number = param1 / param2;
         _loc3_ = limit(_loc3_,-1963016078 ^ -857818987 ^ 0x52467F5B ^ 0x146607BC,-2003461263 ^ -1178151099 ^ -373145790 ^ -661556361);
         fishListVScroll.percent = _loc3_;
      }
      
      private function _1c3fc36f988602cf788863a2(param1:String) : Boolean
      {
         var _loc2_:int = -812078999 ^ 0x255C20A5 ^ 0x31AACBAB ^ -224618335;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x17C699DE ^ 0x4D67B591 ^ -353335379 ^ -1717342172))
            {
               case 0:
                  if(this._ae1ece92de7070952c5e0031 != null)
                  {
                     _loc2_ = 0x3BF49604 ^ 0x49594C84 ^ -556848795 ^ -2054150110;
                  }
                  else
                  {
                     _loc2_ = -1291176243 ^ 0x3AB3FA1D ^ -1657591473 ^ 0x3D783E5B;
                  }
                  break;
               case 1:
                  return this._ae1ece92de7070952c5e0031.test(param1);
               case 2:
                  return true;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _623e3e05c55d516f6efd390d(param1:Number) : void
      {
         var _loc2_:int = this._33196115c9e7f4b935f65c3e.height - (-1126826857 ^ 0x04A153DC ^ 0x03707CD6 ^ -1157311925);
         this._33196115c9e7f4b935f65c3e.y = _loc2_ * ((0x26A4CA75 ^ 0x2739DC46 ^ 0x20CCCD63 ^ 0x2151DB51) - param1) - _loc2_;
      }
      
      public function _c20afa7b4af2b7cb47aae8d0(param1:_d0a8af7675ce093102e12974) : void
      {
         var _loc2_:int = -125043326 ^ -1627545957 ^ 0x63FFC9F6 ^ -651371961;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x68A71FAF ^ 0x5CC13FC1 ^ -470214152 ^ 0x0B3A493C))
            {
               case 0:
                  main._d4b1c56b0151193ecf216f7d();
                  return;
               case 1:
                  main.setData(param1.fishInfo,param1.userCaughtFish,_badge);
                  viewFishBoard._0635705624c28933f13a4690(param1.userCaughtFish,param1.fishInfo);
                  stars._5423e95666ef5077a898c118(param1.fishInfo.rating);
                  _loc2_ = 0x3AD50556 ^ 0x28BECD39 ^ -1364287912 ^ 0x6060269D;
                  break;
               case 2:
                  notCaught.visible = !param1.isActive;
                  viewCatchInfoButton.visible = !param1.isActive;
                  main.interfaceActive = param1.isActive;
                  _fishId = param1.fishInfo.id;
                  if(param1.isActive)
                  {
                     _loc2_ = -40866168 ^ -1793741401 ^ -1126127077 ^ 0x08C0199F;
                  }
                  else
                  {
                     _loc2_ = -490027701 ^ -1117240289 ^ 0x7896EBE9 ^ -74376681;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         showFishId = 0x52CFF786 ^ 0x0BD7DE2C ^ 0x1DDD3072 ^ -1153767897;
         this._ae1ece92de7070952c5e0031 = null;
         this._9b5620cfe3c3423bc37ff473 = null;
         search._93cdaaa5ac2cae09b2912d6a();
      }
      
      override public function close() : void
      {
         var _loc1_:int = -1024511745 ^ 0x5FF4AEC6 ^ 0x79A7A05D ^ 0x56A344EF;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x71034394 ^ -539165208 ^ -991054957 ^ -668108956))
            {
               case 0:
                  super.close();
                  if(GameSwf.currentLocationDialog != null)
                  {
                     _loc1_ = -821460728 ^ -2136810820 ^ 0x5EC22993 ^ -1552545618;
                  }
                  else
                  {
                     _loc1_ = 0x79F97467 ^ 0x20C969FE ^ -1049926483 ^ 0x2A4403BE;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  GameSwf.currentLocationDialog._37d251080bf5452c4699dab9();
                  _loc1_ = 0x483F7CC0 ^ -641954477 ^ -85290964 ^ -646571211;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

