package com.ax3.fishao.view.wrappers.impl.profile.fishesPanel
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._f2026c31da0de9afb771d1b0;
   import com.ax3.fishao.model.profile.fishesPanelData._8198c263c46b0f902aafc288;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.*;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._cc10ca05aac4527c75bdb2e7;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._2a3778bd7cef0b0147cc5678;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._a5b8b5a0e66fa8f31d236147;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._bdbf5ff4e1b06b31215378bb;
   import com.ax3.utils._c634086f06b75a9f5753b96e;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _5a30c6d8029ddb3d32e05845 extends _9d02c280d3d4b261c7a094d9 implements IAssetWrapperRecursive
   {
      
      private static const _affc40be1007a29a1256e0ba:int = 0x30D683D1 ^ 0x3C49454A ^ 0x55F58FA8 ^ 0x596A49E6;
      
      private static const _d088aea9ebd541722c55a4ff:int = 0x2939DB0C ^ -16755250 ^ 0x63CC2B76 ^ -1242192436;
      
      private static const _23945d7dbe56bcfa120416a7:int = -695863177 ^ -462449281 ^ -1048875814 ^ -208600878;
      
      private static const _74da8c448437c36f3658105d:int = -1163536763 ^ 0x1A319F15 ^ -1265158738 ^ 0x14037C8C;
      
      private static const _87a22340a65025611cc440f4:int = -383359812 ^ -1570815220 ^ 0x7E10E939 ^ 0x3569CE8B;
      
      private static const _3081370223e650584c612445:int = 0x47E85EC7 ^ -1811745544 ^ 0x26087194 ^ -169682007;
      
      public var header1Text:_f2026c31da0de9afb771d1b0;
      
      public var totalFishesText:_f2026c31da0de9afb771d1b0;
      
      public var header2Text:_f2026c31da0de9afb771d1b0;
      
      public var countFishesText:_f2026c31da0de9afb771d1b0;
      
      public var pagesTextField:TextField;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      protected var _itemFactory:_b6959442d774100015b69ffa;
      
      private var _a4d07bc0e9fe591c16926656:_2a3778bd7cef0b0147cc5678;
      
      private var _13778bbd502c8a3a23d8f968:_8198c263c46b0f902aafc288;
      
      public function _5a30c6d8029ddb3d32e05845()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         this._itemFactory = new _b6959442d774100015b69ffa(_app.resourceManager,_swfFileName,_4539bb99a6c845bc8acc0023);
         this._itemFactory.process(_asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝勛勌劷券剹勛勈剴勚劺勤剮刷刎剻剭助勥剜劖勥劰勅勴剔勅勎","刱勆剸刡则剱劶劍劔劗勠刁力劅刮刬")));
         this._13778bbd502c8a3a23d8f968 = new _8198c263c46b0f902aafc288();
         this._acea3cc226b0b5539cd582c7();
      }
      
      private function _acea3cc226b0b5539cd582c7() : void
      {
         this.header1Text.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴇ჻ၔၨဈကိႫဤკჽိ၊ႇၤဧႪခ၀ბႱჾၫ႗ယႋၽၳဋၞႯლံჅ၌အ","႟კუၖ჎ၑနჳၫႩႳႢၦႏლႦ"));
         this.header2Text.text = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဋၩႽၪှჂპႲ်႟","ၒၦၜၚეႭჳჳႣჵၪႈဆဌဍქ") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿揎掱捕挚揑捧挲捾捻挀揳挚掣挠捓挊挚揻捐捇揔挰掮","掍掭挊揺挟挺授掦揿挂捵挙捺揩捞挬"));
         this._5b12e57b9b13098ca9b9c1fd();
      }
      
      public function _e699660e8922a03272def493() : void
      {
         var _loc1_:int = -2085157101 ^ -1156632907 ^ -1910852776 ^ -84493457;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1787015484 ^ -2062113327 ^ 0x6841DC95 ^ 0x347F1611))
            {
               case 0:
                  if(this._13778bbd502c8a3a23d8f968.caughtFishes > (0x3DA01EFA ^ 0x6DC448E0 ^ -1851249407 ^ -1043563749))
                  {
                     _loc1_ = -77987436 ^ -2027852954 ^ 0x56E2A159 ^ 0x66CDEA39;
                  }
                  else
                  {
                     _loc1_ = -223283539 ^ 0x5426F32F ^ 0x105EDE1C ^ -90375666;
                  }
                  break;
               case 1:
                  this.header1Text.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刌劶刻劋劷勢勇創剿剜劔剔剆剥効劓刁勥券刜劏劏勘剺創刟刽劏勅勽刮刃勅勾刅剑刬勢劚勷劾剻刓剎別刊劆劇","勁剺劚刽剞刈剢動刄勦刞刺初劒剽劚"));
                  this.totalFishesText.text = "";
                  this.countFishesText.text = "";
                  this.header2Text.text = "";
                  _loc1_ = -1191365996 ^ 0x70BC74E2 ^ 0x0C81BCBB ^ -2003510434;
                  break;
               case 2:
                  _c634086f06b75a9f5753b96e._4fde0f2daf03ea0d6f7697a1(new <DisplayObject>[this.header1Text.displayObject,this.totalFishesText.displayObject,this.header2Text.displayObject,this.countFishesText.displayObject],_panelRectangle);
                  this._a4d07bc0e9fe591c16926656.elements = this._13778bbd502c8a3a23d8f968.userCaughtFishesList;
                  _06764c2cef0a83e404316a1f();
                  return;
               case 3:
                  this.header1Text.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၲ၆ჼၘ႕ဦჟ၃ဟၚვჶဓჽၮဟေႶ႖မჷႽ၍ၿႁႀ჎ႝჼလჿიႊႍჭံ","წႣႼဲၰံჸ႕ႃჇငჩ၄၆ၤတ"));
                  this.header2Text.text = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙别剗勯剃勅劉劶劈剨","務功剙劫勡劘勺剘劸加劂務剬劋劝刚") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捠掻捷挛掷揆掤掹揉接挔捉揞揤揩挑揘掩挷掆挥捁揬挆","挘挑揤损措捒捴挖捹揼握掭指揔挤排"));
                  this.totalFishesText.text = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჭႵ჋჈ႃႂၩႀႶღ","ၠწည႟Ⴘၓဘၢრယးဪၟႚ႔჌") + this._13778bbd502c8a3a23d8f968.caughtFishes.toString();
                  this.countFishesText.text = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("効勋劬判刊刦勺劺刞割","剒勝制劣勾勾功别办剫剙刵勭勼刉動") + this._13778bbd502c8a3a23d8f968.totalFishes.toString();
                  _loc1_ = 0x5A6C6E2D ^ 0x027B1012 ^ 0x7C4031F3 ^ 0x68036E5F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _5b12e57b9b13098ca9b9c1fd() : void
      {
         var _loc1_:_bdbf5ff4e1b06b31215378bb = new _bdbf5ff4e1b06b31215378bb(this.pagesTextField,this.rightPageButton,this.leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:_a5b8b5a0e66fa8f31d236147 = new _a5b8b5a0e66fa8f31d236147(_asset,_affc40be1007a29a1256e0ba,_d088aea9ebd541722c55a4ff,_23945d7dbe56bcfa120416a7,_74da8c448437c36f3658105d,_87a22340a65025611cc440f4,_3081370223e650584c612445);
         var _loc3_:_cc10ca05aac4527c75bdb2e7 = new _cc10ca05aac4527c75bdb2e7(this._itemFactory);
         this._a4d07bc0e9fe591c16926656 = new _2a3778bd7cef0b0147cc5678(_loc1_,_loc2_,_loc3_);
         this._a4d07bc0e9fe591c16926656.autosize = TextFieldAutoSize.RIGHT;
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._13778bbd502c8a3a23d8f968.load(_login,this._e699660e8922a03272def493);
      }
   }
}

