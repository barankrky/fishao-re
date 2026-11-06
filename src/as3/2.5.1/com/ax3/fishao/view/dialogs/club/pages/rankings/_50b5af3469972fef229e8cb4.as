package com.ax3.fishao.view.dialogs.club.pages.rankings
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.model._ece4f37c607dd0c90d333eca;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_input._00a78eeb9c4e2487e66b434b;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._8504a663c275f49191c30b9b;
   import com.ax3.fishao.view.dialogs.club.pages.management.item._040218377c365e46d06a257c;
   import com.ax3.fishao.view.dialogs.club.pages.management.item._d785bc68c4c97e61dc7e51fc;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   
   public class _50b5af3469972fef229e8cb4 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _be26cb2353fc6afe2f48365c:_8504a663c275f49191c30b9b;
      
      private var _d844d694f3d5c75dd967466d:_040218377c365e46d06a257c;
      
      private var _0f3b06dfcd3d35032c5561f4:String;
      
      private var _e212b4537961c621cd79b19d:_00a78eeb9c4e2487e66b434b;
      
      private var _8681a217b15e51a47b55febb:_73899a4de8f83c8d2c26f545;
      
      public function _50b5af3469972fef229e8cb4(param1:_e2bbbb1ef110bb0aa28b913f, param2:DisplayObjectContainer, param3:String)
      {
         super(param1,param2);
         this._0f3b06dfcd3d35032c5561f4 = param3;
         this.init();
      }
      
      public function get viewDropDown() : _040218377c365e46d06a257c
      {
         return this._d844d694f3d5c75dd967466d;
      }
      
      public function get viewPagination() : _8504a663c275f49191c30b9b
      {
         return this._be26cb2353fc6afe2f48365c;
      }
      
      public function get viewInput() : _00a78eeb9c4e2487e66b434b
      {
         return this._e212b4537961c621cd79b19d;
      }
      
      public function set rankingType(param1:String) : void
      {
         this._8681a217b15e51a47b55febb.text = _c2ad9d37d7be0097d6d2e977.get(param1);
      }
      
      private function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:_d785bc68c4c97e61dc7e51fc = null;
         var _loc3_:Vector.<String> = _ece4f37c607dd0c90d333eca.all;
         this._be26cb2353fc6afe2f48365c = new _8504a663c275f49191c30b9b(controller,Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴄဪ၎ႚႸႨၫიჲჽဥႁႌမၿဌႯဘြၕတဆသႆბ჏႖ဩ႓პჯႋჭჱၨ႒","ါ჏ဉჵႢၨဝႏ၇ဍჩနၔჸცၻ")));
         this._d844d694f3d5c75dd967466d = new _040218377c365e46d06a257c();
         this._d844d694f3d5c75dd967466d.process(Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劄剑剥勈勃刃劌劍刢剥切劊勓劶刼刯刾勣勓劄刓劖勈劄剮剒則劙勠勠刹剄","勷剫劤勚剭劌勠刋別刘勯勲剜剴劖勔")));
         this._d844d694f3d5c75dd967466d.selectedItemIndex = 0x39C095A3 ^ -698871789 ^ 0x1107005C ^ -23099924;
         this._d844d694f3d5c75dd967466d.selectedType = _loc3_[-1419682085 ^ 0x1B930681 ^ -1844737637 ^ 0x22F9D1C1];
         var _loc4_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(app.resourceManager,this._0f3b06dfcd3d35032c5561f4,_d785bc68c4c97e61dc7e51fc);
         this._d844d694f3d5c75dd967466d._c5d5235acc70f20f98ab98c9(_loc4_);
         this._d844d694f3d5c75dd967466d.create(_loc3_);
         var _loc5_:Array = this._d844d694f3d5c75dd967466d.items;
         var _loc6_:int = 0x4AE8D6ED ^ 0x1E480AAF ^ -908221285 ^ -1652721447;
         while(_loc6_ < _loc3_.length)
         {
            _loc1_ = _loc3_[_loc6_];
            _loc2_ = _loc5_[_loc6_];
            _loc2_.type = _loc1_;
            _loc6_++;
         }
         this._e212b4537961c621cd79b19d = new _00a78eeb9c4e2487e66b434b(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捊捯掋掂捲揂挫揎挍揸插捣掉捌挍捙掌挃揬揅捃揗挓接挥揢援掬揠掴掖挷揮损捛捷捨捛挲掠","捞按掤掕掌挦掰掄揑掖掔捧插捪捬捓")));
         this._e212b4537961c621cd79b19d.label.text = "";
         this._b32a3909ddf5f27724ce8689();
      }
      
      private function _b32a3909ddf5f27724ce8689() : void
      {
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("換挿揱揦捫掉挧捝掲捛捡挷捨捷挢掱挛揍捷捌挀揸推授捧掯揹捓掰挂","挟揾揋揧援掰挟捯挌挌捡挰揢捠捪揥"),_85b2141a2303f6545d411d7a.EST_SEARCH_A_CLUB);
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捡掅捄挥揀揑捱揝捕捼挖揨掇掩揃掝挳捙挻挙持捌揱挍掇捝","捌掟挴揤掭捅挴措捐捣揬挽揄揫挖掣"),_85b2141a2303f6545d411d7a.EST_CLUB_RANKINGS_NOTE);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劂勝劮刳劄勦劶剽剩削剭剒勰创剀勮剈刹刍勼剰剮劆刖剂劄劚刁勯勍剗剼勦劾列办","刘刓労勢勭力剸刞剃刺勖刳剴刊劙刘"));
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挊捸掂换掐掿插揞揙据揻捖排挙按挃捯掘捓挥揑捙挛捐捽揭","掩揗挆掯持捬挥指捳揥揸掮揄控揶捭"),_85b2141a2303f6545d411d7a.EST_CLUB_COLUMN_CLUB,_loc1_);
         _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ნႏჳ၄ကယၿၟဦါၑၓ჊ჁဖႻჩვლ჊ს჆თჶႽၩფၔႇილႀ","კႂၜၠႁႣბႍႥဟႥაၚ჌ქၒ"),_85b2141a2303f6545d411d7a.EST_CLUB_COLUMN_MEMBERS,_loc1_);
         this._8681a217b15e51a47b55febb = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揣捺授掉掓揠捞捷挔揅捨掲捉捎控捠揿揼捬捊挴揠挕掹挭掱捷接挰挀掱捥捒揍","挢挆捅揖挂捳揟捲揱掩挙掜捊捴揧掲"),null,_loc1_);
      }
   }
}

