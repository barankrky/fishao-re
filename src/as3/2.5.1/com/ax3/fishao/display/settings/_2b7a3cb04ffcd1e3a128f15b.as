package com.ax3.fishao.display.settings
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._3295d30c2cf527988ca84291;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _2b7a3cb04ffcd1e3a128f15b extends _3295d30c2cf527988ca84291
   {
      
      private var _d91ee65dabc175c1362cce7d:MovieClip;
      
      private var _c51733c0755331dd8cd16ee9:Boolean;
      
      private var _d7fdfce534156237c0061f94:Point;
      
      private var _f833f209f7b10b3afd46f4f0:Point;
      
      public function _2b7a3cb04ffcd1e3a128f15b(param1:_988093efdfa36e13bfd6c6cf, param2:MovieClip)
      {
         this._d91ee65dabc175c1362cce7d = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set offset(param1:Point) : void
      {
         this._f833f209f7b10b3afd46f4f0 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(this._c51733c0755331dd8cd16ee9 == param1)
         {
            return;
         }
         this._c51733c0755331dd8cd16ee9 = param1;
         this._d91ee65dabc175c1362cce7d.gotoAndStop(this._c51733c0755331dd8cd16ee9 ? -580768363 ^ -1318984436 ^ 0x46FCF3E3 ^ 0x2AFF3B7B : 0x59825BF1 ^ 0x07A27124 ^ -1224313571 ^ -383361078);
      }
      
      public function get isActive() : Boolean
      {
         return this._c51733c0755331dd8cd16ee9;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(_isEnabled)
         {
            TweenLite.killTweensOf(this._d91ee65dabc175c1362cce7d);
            _loc2_ = {
               (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掲掺捁捫捾掘揬掎揎揅","挷挖揶捪挚捜掘捋挔捉揪捬捩捥捳挻")):this._d7fdfce534156237c0061f94.x + this._f833f209f7b10b3afd46f4f0.x,
               (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ძကဉၐႽဗႉၐဴၓ","Ⴤႜპၢ၎ႂၑၞႋၴႥჍფၬုၵ")):this._d7fdfce534156237c0061f94.y + this._f833f209f7b10b3afd46f4f0.y
            };
            TweenLite.to(this._d91ee65dabc175c1362cce7d,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劳劈劷創劃劻勠刄募刭刻刵勒勖劣励剡勅剌剷努分刯剋","勹助势剙剖劝刣刉劧功剹勅勢刣勥刄"),_loc2_);
            _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_041_UI_Hover_button);
         }
         super.onMouseOver(param1);
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(_isEnabled)
         {
            TweenLite.killTweensOf(this._d91ee65dabc175c1362cce7d);
            _loc2_ = {
               (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼ႗ငဉ჏႑ဖ႕ოႉ","Ⴎ჎ႊၶၸႅႶႾာၕჄၣူჶဳშ")):this._d7fdfce534156237c0061f94.x,
               (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿捕排按揟揑揋揧掓掠","措挓捚捏掠揟挾捊掕挗挄掞捍掻掋挿")):this._d7fdfce534156237c0061f94.y
            };
            TweenLite.to(this._d91ee65dabc175c1362cce7d,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揉掟捗换掾揂掗挔揓揂揕捆掠挵挆挠换挮排振掇掹揻掰","挐揸捖挕掤挬捇挲揌挘捰捙掩挺揪採"),_loc2_);
         }
         super.onMouseOut(param1);
      }
      
      private function init() : void
      {
         this._d7fdfce534156237c0061f94 = new Point(this._d91ee65dabc175c1362cce7d.x,this._d91ee65dabc175c1362cce7d.y);
         this._f833f209f7b10b3afd46f4f0 = new Point();
         this.isActive = true;
         _09d32aad035d4c6f4097c78b();
      }
      
      override protected function _3f9bafe0e6f5429d56eb11c1() : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
      }
   }
}

