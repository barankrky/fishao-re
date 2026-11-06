package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.*;
   import com.ax3.fishao.model.interfaces._694cd5756add7463704d91ab;
   import com.greensock.TweenMax;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class _6ad6ddd07f4234a527c25452 extends Sprite implements IPopupGroup
   {
      
      private static const _6dd455739946a7f9db0847a8:Number = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剗刼剑刋勋功劕勨刅劢勌剾助勇剖剬刅剏劃剢劊剩勆勈","勊剝刐剱剹劣剽勨刽刲刹勃別劂前剌");
      
      private static const _06638f16fd951a6cc65dfbfe:Number = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ပၚ၇Ⴂჱ၅အ၉ဤဘႼႴႩფၼზါႺჯႊႭယႠႳ","ႃ႟၁ႪႥჩ႒ဲ၏ၘჾ၌ဵဣြႠ");
      
      private var _c5ad32b99d805ef4f2c6a6ac:int;
      
      private var _c25f971922e2527ac0d90033:Function;
      
      public function _6ad6ddd07f4234a527c25452(param1:int)
      {
         super();
         this._c5ad32b99d805ef4f2c6a6ac = param1;
         this._4f99221429ceadb09549a80b();
      }
      
      private function _4f99221429ceadb09549a80b() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = -175344748 ^ 0x5F38E0D8 ^ -428861606 ^ 0x4CC48416;
         while(_loc2_ < numChildren)
         {
            _loc1_ = getChildAt(_loc2_);
            if(!(_loc1_ is IBaseDialog))
            {
               this._327f25e8e0e7bed5cd377fc0(_loc1_ as Sprite);
            }
            _loc2_++;
         }
      }
      
      private function _327f25e8e0e7bed5cd377fc0(param1:Sprite) : void
      {
         var overlay:Sprite = param1;
         with(overlay.graphics)
         {
            clear();
            beginFill(0x5C689CDD ^ 0x56B86DA6 ^ 0x7F698894 ^ 0x759D7AEC,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刀効削勃劈分劼勘剴刽剅助勘分刹勢則剤劁剘劥劘刉剘","勦勝勯劷創剔剂剀勬刐劅勫勏勫勆劻"));
            var _temp_2:* = -128186677 ^ 0x35B14B43 ^ -1362773118 ^ 0x6328F60A;
            drawRect(_temp_2,_temp_2,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
            endFill();
         }
      }
      
      public function show(param1:IBaseDialog) : void
      {
         var _loc2_:int = -762195875 ^ -1019131179 ^ -1496654550 ^ -254561170;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7EE4A46B ^ 0x34771279 ^ -87613546 ^ -140682676))
            {
               case 0:
                  this._850eb404d0da320e5faa3574(param1);
                  param1.activate();
                  DisplayObject(param1).visible = true;
                  this._0583eea38ef2dfeb9624b03e(param1);
                  _loc2_ = 0x4E6A8150 ^ -716598935 ^ 0x78745D79 ^ -1533100406;
                  break;
               case 1:
                  this._5ceeb14fbee68aa1cad27712();
                  _loc2_ = 0x654F6F92 ^ 0x72ED8B8D ^ -678133528 ^ -2013292743;
                  break;
               case 2:
                  if(numChildren == (0x4A7A4D31 ^ -980402950 ^ -1949279043 ^ 0x043A2D76))
                  {
                     _loc2_ = -1169708688 ^ -1524194420 ^ -1500037095 ^ -29378264;
                  }
                  else
                  {
                     _loc2_ = 0x54D2454D ^ 0x4B477E ^ -1229304220 ^ -1511342183;
                  }
                  break;
               case 3:
                  DisplayObject(param1).visible = false;
                  _loc2_ = -152412351 ^ -268763444 ^ -1953104801 ^ -716394984;
                  break;
               case 4:
                  if(param1.isReady())
                  {
                     _loc2_ = -1143626570 ^ 0x0A05409F ^ 0x21D02AF1 ^ -674677488;
                  }
                  else
                  {
                     _loc2_ = 0x3DF5523E ^ -2065425501 ^ -306727209 ^ 0x136F0C81;
                  }
                  break;
               case 5:
                  if(param1 is _694cd5756add7463704d91ab)
                  {
                     _loc2_ = 0x23192B2C ^ 0x1178FDF2 ^ 0x699A538A ^ 0x1C32769B;
                  }
                  else
                  {
                     _loc2_ = -169219313 ^ -1688134593 ^ -1199338625 ^ -1849520250;
                  }
                  break;
               case 6:
                  addChild(DisplayObject(param1));
                  return;
               case 7:
                  var _temp_2:* = param1 as _694cd5756add7463704d91ab;
                  var _temp_1:* = -1264480602 ^ 0x0B5B799D ^ -884478597 ^ 0x74BD1A40;
                  addChild(_temp_2._5738167e3e1a0cc2189627b5(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT));
                  _loc2_ = 0x3E657B75 ^ -1138948301 ^ -1507203763 ^ 0x63986AC5;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _376517c2c0ba93ea171dcf72(param1:IBaseDialog) : void
      {
         var _loc2_:int = -454786619 ^ 0x67C6A614 ^ -1968306528 ^ -705917048;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-512540207 ^ -386008360 ^ -906330797 ^ 0x1C1468A3))
            {
               case 0:
                  if(param1 is _694cd5756add7463704d91ab)
                  {
                     _loc2_ = 0x31FDEE2E ^ 0x2269F647 ^ -1165002910 ^ 0x757BC1F1;
                  }
                  else
                  {
                     _loc2_ = -60608798 ^ -1889728467 ^ -258888547 ^ 0x5FCF24A9;
                  }
                  break;
               case 1:
                  this.show(param1);
                  return;
               case 2:
                  this._5ceeb14fbee68aa1cad27712();
                  _loc2_ = -650220406 ^ -902085425 ^ 0x401CC45C ^ -1887878431;
                  break;
               case 3:
                  var _temp_2:* = param1 as _694cd5756add7463704d91ab;
                  var _temp_1:* = -1946746208 ^ 0x4113880A ^ -679260212 ^ 0x1D67C566;
                  addChild(_temp_2._5738167e3e1a0cc2189627b5(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT));
                  _loc2_ = -1306694749 ^ -1392525463 ^ 0x5642CC7F ^ -1799309747;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _850eb404d0da320e5faa3574(param1:IBaseDialog) : void
      {
         var _temp_2:* = param1;
         var _temp_1:* = -18161969 ^ 0x509904A1 ^ -373660656 ^ 0x47C9BE7E;
         _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      public function close(param1:IBaseDialog) : void
      {
         this._95b01fc89b8428e512f4637a(param1);
         this._aa772664ebbe3e08ea0df9c3();
      }
      
      protected function _95b01fc89b8428e512f4637a(param1:IBaseDialog) : void
      {
         param1.visible = true;
         TweenMax.to(param1,_06638f16fd951a6cc65dfbfe,{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪劤刴勎勛劈刘刑劐办剾勔剧刓剚勑勒务","劉券剆刼剑勬剠剦劢刀剋剃剮刋剃刦")):0x10ED7CF8 ^ 0x46D20549 ^ -131269971 ^ -1374452964,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捰捥掷掭挳揁掦援揺挿揙掾掿揯挐掋捴掿","据挹挖掗挳掛挄揯捱捗掕捬揨挕捝挔")):_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挏揷挀掺提授振揇揗掎揿揉挷挷揘挲揉掁揌掇捂揪挤揞","捇振挬捘揺挮挱挶挒挱捌捐捷挛挱挻"),
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳၮ၂ႺჂღဳნ႗ၩჷဍရၪံၿး႘႐თႾႳၷၜ჈စფႢ","ၘჽၯ၁ဃၼထၫႧჳჂယ჏ၶလၖ")):this._51bdde60a0d111769511032b,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚剟劸劏刖劵刕功劶刓勵劮勆刐刱勼劜剜剳劢劍创劕劌劣刈剗別勅刢刢劳劎刿勻剉券刞力勠","剉勩刨剥別刌勈勨勋剑勿刓剻勳刼刱")):[param1]
         });
         param1.onCloseStart();
      }
      
      private function _5ceeb14fbee68aa1cad27712() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဇႏჄၟဒყძ၉၏၀၊ဋၱၬ၃Ⴑၣဘჱဣံႇ","Ⴝ჋რႚဋဴဥႁဗကႌရၹၯႈၴ");
         this._327f25e8e0e7bed5cd377fc0(_loc1_);
         addChild(_loc1_);
      }
      
      public function update() : void
      {
         this._aa772664ebbe3e08ea0df9c3();
      }
      
      private function _aa772664ebbe3e08ea0df9c3() : void
      {
         var _loc1_:DisplayObject = null;
         while(numChildren > (-1139519393 ^ -1508333939 ^ 0x393A56D0 ^ 0x2336A002) && !(getChildAt(numChildren - 1) is IBaseDialog))
         {
            _loc1_ = getChildAt(numChildren - 1);
            removeChild(_loc1_);
         }
      }
      
      protected function _0583eea38ef2dfeb9624b03e(param1:IBaseDialog) : void
      {
         param1.visible = true;
         (param1 as DisplayObject).alpha = -1272193917 ^ 0x130F20DF ^ 0x6A57A790 ^ -848077876;
         TweenMax.to(param1,_6dd455739946a7f9db0847a8,{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揷掿捙捍掱掁挊据挋掚捎揌挭揵揕掩挔援","接挒捱探掜揫挕挞掎捰揃掁揖揢掃掤")):0x517C3A98 ^ -575547364 ^ 0x28C73601 ^ -1542794108,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ညႴဇႄ჉ရးၠဃჵსၦ႕ჸီ႗်၁","ၺႺ်პ႐შၲဇႛဆၟဂၭဤၕ၄")):_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劯勱剞励刬劝则勏刎剳刓剤劦勀剛办创刖勼勶剓剼勉勶","劼勤劘勣劖剃剄刓刎劚剪劥刦劸勶勾"),
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("გဥჅဈၙငဲႵဧჴျယႧႵႃთ၉ტ჆၌ဝႌჳႱႌွხႨ","ၝဆ჎ႿါႱမႨძၲစၰထၤႝႚ")):this._77584df98cc666b85f9e267d,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႙ტთჶဆზဃ჈Ⴢ჋ႯၯဲပဨႿလဳႁၗႣვფၱဒခჇ္Ⴑ჈ႂ၇ၰ၀ဘဌႫ႕၏ၝ","၈ၪ႟ႉဵၦႥჁ၀ၹႊႝမႳლၶ")):[param1]
         });
         param1.onShowStart();
      }
      
      protected function _77584df98cc666b85f9e267d(param1:IBaseDialog) : void
      {
         var dialog:IBaseDialog = param1;
         try
         {
            dialog.onShowComplete();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
         }
      }
      
      protected function _51bdde60a0d111769511032b(param1:IBaseDialog) : void
      {
         var dialog:IBaseDialog = param1;
         if(contains(DisplayObject(dialog)))
         {
            removeChild(DisplayObject(dialog));
            if(this._c25f971922e2527ac0d90033 != null)
            {
               this._c25f971922e2527ac0d90033(this,dialog);
            }
         }
         try
         {
            dialog.deactivate();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
         }
         try
         {
            dialog.onCloseComplete();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
         }
         this._aa772664ebbe3e08ea0df9c3();
      }
      
      public function _f3a491b87225c3f8e348e5e1() : Boolean
      {
         return numChildren > (0x68B78091 ^ -1676371567 ^ -859298224 ^ 0x386B3F51);
      }
      
      public function _3d35206e41147b98a9825d65() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = 0x639059B9 ^ 0x2E7A2B5F ^ 0x2A8694F4 ^ 0x676CE612;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is _694cd5756add7463704d91ab && _loc1_ is IBaseDialog)
            {
               var _temp_3:* = _loc1_ as _694cd5756add7463704d91ab;
               var _temp_2:* = -1765045073 ^ -641116382 ^ 0x04428643 ^ 0x4B405DCE;
               _temp_3._2ddbcfb45d33c703275ab63d(_temp_2,_temp_2,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
               this._850eb404d0da320e5faa3574(IBaseDialog(_loc1_));
            }
            else if(_loc1_ is IBaseDialog)
            {
               this._850eb404d0da320e5faa3574(IBaseDialog(_loc1_));
               this._4f99221429ceadb09549a80b();
            }
            _loc3_++;
         }
      }
      
      public function layerIndex() : int
      {
         return this._c5ad32b99d805ef4f2c6a6ac;
      }
      
      public function _bbe5c1fabbede1c6f2b4112d() : IBaseDialog
      {
         var _loc1_:IBaseDialog = null;
         var _loc2_:int = numChildren;
         var _loc3_:* = int(_loc2_ - 1);
         while(_loc3_ >= (0x44ED0195 ^ 0x192517E3 ^ -565040089 ^ -2087044527))
         {
            _loc1_ = getChildAt(_loc3_) as IBaseDialog;
            if(_loc1_ != null && !_loc1_.isClosing)
            {
               return _loc1_;
            }
            _loc3_--;
         }
         return null;
      }
      
      public function set closeAnimationCompleteHandler(param1:Function) : void
      {
         this._c25f971922e2527ac0d90033 = param1;
      }
      
      public function _e1d2c58a3c57547feb11522f(param1:Array = null) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 == null)
         {
            param1 = [];
         }
         var _loc3_:* = int(numChildren - 1);
         while(_loc3_ >= (0x6F0806FE ^ -2062827324 ^ -1855680440 ^ 0x7B675672))
         {
            if(_loc3_ < numChildren)
            {
               _loc2_ = getChildAt(_loc3_);
               if(_loc2_ is IBaseDialog && !this._0edab707889bac46c7b92cb1(_loc2_,param1))
               {
                  this.close(IBaseDialog(_loc2_));
               }
            }
            _loc3_--;
         }
      }
      
      private function _0edab707889bac46c7b92cb1(param1:DisplayObject, param2:Array) : Boolean
      {
         var _loc3_:Class = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_ != null && param1 is _loc3_)
            {
               return true;
            }
         }
         return false;
      }
   }
}

