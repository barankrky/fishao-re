package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._91443e554fdccabd3846f5da;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _81d4c4d141c5630a6f4e06d7 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static const _e9f0e61042addf7d290419b3:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ეჯ႟იႽၢმიၛႸဲဤအႱჩႇၬო჏႔ၝႰႨ႖ჟဍ჌ႜ","ၡრၗ႞ၱ჊ႷၵႅႾႡჇြႜშ၆");
      
      private static const _ee66c7e0cadf7eb065dcf42a:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴠთქႄႋႆၪၜ၎ဧႡညႮဦ჎კၕၙဪს჎ၡဧႮဇ჈჎Ⴝဎ။პႡ႘႓","ჼႉძႰ၎ဋခსငၽၫ္ဌ႐ုၞ");
      
      private var _0055ecd3cdc2223fe68ef38c:DisplayObjectContainer;
      
      private var _d96f930d04590607db3522a3:DisplayObjectContainer;
      
      private var _acd80618ddfa638900450953:Point;
      
      private var _22c2aaa626c3299c9567a173:Sprite;
      
      private var _aec4fac068729ebc564804bb:_1e21f5ea8cd03625232da448;
      
      private var _f2b57d93d00ab44d4780376a:_4206a2e01b3ad1275896520f;
      
      private var _2be084ae47265338dbddb3f6:String;
      
      private var _d530f19793385377965d1121:Number;
      
      public function _81d4c4d141c5630a6f4e06d7(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer, param3:String)
      {
         this._2be084ae47265338dbddb3f6 = param3;
         this._0055ecd3cdc2223fe68ef38c = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._aec4fac068729ebc564804bb.items = param1;
         var _loc2_:Number = 0x226DE6BA ^ 0x776EF277 ^ -1962548864 ^ -569969331;
         switch(this._2be084ae47265338dbddb3f6)
         {
            case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
               §§push(-552633016 ^ 0x5D797639 ^ 0x1E7AE1F5 ^ -1676875132);
               break;
            case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
               §§push(0x3C6AC684 ^ 0x4763101C ^ -545436556 ^ -1535862035);
               break;
            default:
               §§push(0x460DF4F6 ^ 0x9BE9B0 ^ 0x219960B3 ^ 0x670F7DF7);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = this._acd80618ddfa638900450953.x / this._aec4fac068729ebc564804bb.source.width;
               break;
            case 1:
               _loc2_ = this._acd80618ddfa638900450953.y / this._aec4fac068729ebc564804bb.source.height;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勔勃勴剽初加剿刏刐剞剜别剢勹勱勸刲勍劇勣功剰剝勂刓勉刴勢剅列勌剧剪勝剾分勵刓剅剦刾勚刦剈刷劕勵刷剬劁勯勡劆勢勜劔刻勜勖励努劇剴剾剧剤刨剂剘劍刃劋勫副剧劼勝剜刜勫加努劙剨勲券刵剃刔删剢勝劗劌勚刅勲剁刖利動刕劜助劷勳刞劓動勹勎刹勛剤刚删判剚勤切劂創割刕劳剎劷勶剱勪勄劻剠刺創剋刑劒刼剐利勲労刧剣勤刼刑剴剶勰勑刪刳剛刂刯劓劋勾刏劐","劝剘劶剅剧剪劘勯削剿刟劋動刬勯劳") + this._2be084ae47265338dbddb3f6);
         }
         this._f2b57d93d00ab44d4780376a.bodySizeRelated = _loc2_;
      }
      
      public function get itemsCount() : int
      {
         return this._aec4fac068729ebc564804bb.itemsCount;
      }
      
      public function set position(param1:Number) : void
      {
         this._d530f19793385377965d1121 = param1;
         this._f2b57d93d00ab44d4780376a.position = param1;
         this._d29c17df8c33b637afafa6a0();
      }
      
      public function get position() : Number
      {
         return this._d530f19793385377965d1121;
      }
      
      public function get viewScroll() : _4206a2e01b3ad1275896520f
      {
         return this._f2b57d93d00ab44d4780376a;
      }
      
      public function get viewContainerItems() : _1e21f5ea8cd03625232da448
      {
         return this._aec4fac068729ebc564804bb;
      }
      
      private function init() : void
      {
         this._aec4fac068729ebc564804bb = new _1e21f5ea8cd03625232da448(controller);
         this._aec4fac068729ebc564804bb.size = new Point(0x76D584C9 ^ 0x63C6AB59 ^ 0x68E25439 ^ 0x7DF17BA8,int.MAX_VALUE);
         this._aec4fac068729ebc564804bb.offset = new Point(0x2C839DB1 ^ 0x7FAAC9ED ^ -571267207 ^ -1898286299,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("გါင႙჏၊Ⴞၧ႒ၽီဇဈ჎წკဥႭဟჲယၔဖႏ","ჅၫჍႧჴထႱ႕ဨ့ဇ႐ဗჃၶၝ"));
         this._aec4fac068729ebc564804bb.gap = new Point(-1475202417 ^ 0x6D166719 ^ 0x5532EF4D ^ -1875461413,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劔勏刌刢剢勦勊刧励刻刎劀勁励劼勣剝勏劜前劻勎勦劦","刐勱剕力勝剘剆勹劽勶劲剗労劑勸剥"));
         this._d96f930d04590607db3522a3 = Debug.assertProperty(this._0055ecd3cdc2223fe68ef38c,_ee66c7e0cadf7eb065dcf42a);
         this._acd80618ddfa638900450953 = new Point(this._d96f930d04590607db3522a3.width,this._d96f930d04590607db3522a3.height);
         var _temp_3:* = this._d96f930d04590607db3522a3;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = -1700143614 ^ 0x5D7FD8B1 ^ 0x2CD81E21 ^ -351397742;
         _temp_3.scrollRect = new Rectangle(_temp_1,_temp_1,this._acd80618ddfa638900450953.x,this._acd80618ddfa638900450953.y);
         this._d96f930d04590607db3522a3.removeChildren();
         this._22c2aaa626c3299c9567a173 = new Sprite();
         var _temp_5:* = this._22c2aaa626c3299c9567a173.graphics;
         var _temp_4:* = -994497451 ^ -1845457399 ^ 0x1482E251 ^ 0x423B400D;
         _temp_5.beginFill(_temp_4,_temp_4);
         var _temp_7:* = this._22c2aaa626c3299c9567a173.graphics;
         var _temp_6:* = 0x44E1D72F ^ 0x3E5873A5 ^ -789703859 ^ -1437091897;
         _temp_7.drawRect(_temp_6,_temp_6,this._acd80618ddfa638900450953.x,this._acd80618ddfa638900450953.y);
         this._22c2aaa626c3299c9567a173.graphics.endFill();
         this._22c2aaa626c3299c9567a173.cacheAsBitmap = true;
         this._0055ecd3cdc2223fe68ef38c.addChildAt(this._22c2aaa626c3299c9567a173,this._0055ecd3cdc2223fe68ef38c.getChildIndex(this._d96f930d04590607db3522a3));
         this._d96f930d04590607db3522a3.addChild(this._aec4fac068729ebc564804bb.source);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._0055ecd3cdc2223fe68ef38c,_e9f0e61042addf7d290419b3);
         this._f2b57d93d00ab44d4780376a = new _4206a2e01b3ad1275896520f(controller,_loc1_,this._2be084ae47265338dbddb3f6);
         this._f2b57d93d00ab44d4780376a.offset = new Point(0x190A37DC ^ -720242765 ^ 0x1D9D6079 ^ -779706347,0x18582472 ^ 0x0C6BAB5C ^ 0x5A6791A3 ^ 0x4E541E89);
         this._d29c17df8c33b637afafa6a0();
      }
      
      private function _d29c17df8c33b637afafa6a0() : void
      {
         var _loc1_:Number = 0x47772ECB ^ 0x06711193 ^ 0x70E304C2 ^ 0x31E53B9A;
         var _loc2_:Number = 0x4CE8530D ^ 0x11A894B9 ^ 0x4B95096E ^ 0x16D5CEDA;
         switch(this._2be084ae47265338dbddb3f6)
         {
            case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
               §§push(0x43BE18C3 ^ 0x4E74E1B2 ^ 0x34E85AA8 ^ 0x3922A3D9);
               break;
            case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
               §§push(-1484700551 ^ -1302128117 ^ -1542593764 ^ -1309688465);
               break;
            default:
               §§push(0x66FA7EC5 ^ 0x39C829BF ^ -1187965621 ^ -435994061);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = (this._aec4fac068729ebc564804bb.width - this._acd80618ddfa638900450953.x) * this._f2b57d93d00ab44d4780376a.position;
               break;
            case 1:
               _loc2_ = (this._aec4fac068729ebc564804bb.height - this._acd80618ddfa638900450953.y) * this._f2b57d93d00ab44d4780376a.position;
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捁捍挅掫揶掓措挥揟捤掰挧挩掼揳揆掶捅捹揟掆捆揾掶捁掽揠捔捊握挻掌挽掤捷捴挦揗掑掊揈捐捝捡捨挪捸掺掳揌捩揿捎揺挪挰掽捵捶掄捖捝挂揢挚挃捋揺捤挠掕捻掷掝揶捬掽挋捋捈捎捄揰掲掎挨捨掂捛捞挍揦揩捈揮捻揃捄掮挕捒揥掺挴揟挭掐挒掶挳捝掃捥揊捀捲捠捷捈捉挌揆揜捪捽捕揾捫掣捩推指按掔挟捫捂捠挀捃捯捝掕挦提捒捱掲捜掓掩掄据揼挘揝捝揹採挮掖捗挤揭挭捵掕捽掕挧捣挑","挱掠捌揟掸採捩揦掹挎握掃揫掽揄揵") + this._2be084ae47265338dbddb3f6);
         }
         this._d96f930d04590607db3522a3.scrollRect = new Rectangle(_loc1_,_loc2_,this._acd80618ddfa638900450953.x,this._acd80618ddfa638900450953.y);
      }
      
      public function _8f5fabf1115fbc7a7d6ce3e8(param1:int) : void
      {
         var _loc2_:Point = this._aec4fac068729ebc564804bb._21c43c65bc970f6b12cfb6b0(param1);
         switch(this._2be084ae47265338dbddb3f6)
         {
            case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
               §§push(-1296388734 ^ -410965383 ^ 0x71B4E51B ^ 0x248F62E0);
               break;
            case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
               §§push(-121212213 ^ -1335878748 ^ -1943215959 ^ -997553721);
               break;
            default:
               §§push(-345216064 ^ 0x61393896 ^ -1727227784 ^ 0x1359CB2C);
         }
         switch(§§pop())
         {
            case 0:
               this.position = (_loc2_.x - this._aec4fac068729ebc564804bb.offset.x) / (this._aec4fac068729ebc564804bb.source.width - this._acd80618ddfa638900450953.x + this._aec4fac068729ebc564804bb.offset.x + this._aec4fac068729ebc564804bb.additionalSize.x);
               break;
            case 1:
               this.position = (_loc2_.y - this._aec4fac068729ebc564804bb.offset.y) / (this._aec4fac068729ebc564804bb.source.height - this._acd80618ddfa638900450953.y + this._aec4fac068729ebc564804bb.offset.y + this._aec4fac068729ebc564804bb.additionalSize.y);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("်ၙႠွ၎Ⴔჴဳრၦပၤ႟჊ါ၉ဖၽမ႔ႊ႘၎ဲႃၻပჰ၆შႍၜၺဒၻလზါႿၩပႫქჲၑჶ၆ိ႒၆ჃႍညမဉႸယၳ႞းဓ჉Ⴃဗယငာၕეရ၏რဥႝႺဏၬၠၴၮႪႎၴကსၬ၏၉႒჊ဠႜဨဓာျၰბჃၧႤၭဟဵ၌၇ჭၛ႒ၖ်ူူဣဩႧဃၲၟძတႂဝႹႠႶၴბჶၟႦსၮ႕၊ၕႠ႗Ⴐၭဴႂၬၡၓ႘ါႱဥ႟ၼპ႟ၻၽბယၸၰჽႋႫ","ႪႝႰၫ჋჈ၨႡၓႏႎჅ჆Ⴍႇၔ") + this._2be084ae47265338dbddb3f6);
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._aec4fac068729ebc564804bb._90eac9ca552fe54c2ca0299f();
         this._f2b57d93d00ab44d4780376a._90eac9ca552fe54c2ca0299f();
         this._acd80618ddfa638900450953 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

