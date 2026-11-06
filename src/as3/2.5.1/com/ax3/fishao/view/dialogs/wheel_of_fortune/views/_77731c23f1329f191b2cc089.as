package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _77731c23f1329f191b2cc089 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static const _357190242c57f3955ae45ac4:Number = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勡剼剴副刅刀列剎刽剀刍劤剒剆功勻刳劆剏勤劓刷劊劎","勌剤勣劎剭勪剐勺劫劣剾勅勍勚勹剪");
      
      private var _40b8ddc4bae136c8d3726bb4:DisplayObjectContainer;
      
      private var _87b4a951ed7c2dcdf5b84b0d:_73899a4de8f83c8d2c26f545;
      
      private var _3e0c041dfd81aa0fe604a7e8:_73899a4de8f83c8d2c26f545;
      
      private var _7e57f3c55867594ec7210b71:MovieClip;
      
      private var _5353986ba318c1cfc311e02c:DisplayObjectContainer;
      
      private var _a87c4b13206a1ef20a623043:Point;
      
      public function _77731c23f1329f191b2cc089(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._40b8ddc4bae136c8d3726bb4 = param2;
         this.init();
      }
      
      public function set rewardTypeWheel(param1:String) : void
      {
         this._7e57f3c55867594ec7210b71.gotoAndStop(param1);
      }
      
      public function set textTop(param1:String) : void
      {
         this._87b4a951ed7c2dcdf5b84b0d.text = param1;
      }
      
      public function set textBottom(param1:String) : void
      {
         this._3e0c041dfd81aa0fe604a7e8.text = param1;
      }
      
      public function get viewPlaceholder() : DisplayObjectContainer
      {
         return this._5353986ba318c1cfc311e02c;
      }
      
      public function get viewPlaceholderSize() : Point
      {
         return this._a87c4b13206a1ef20a623043;
      }
      
      private function init() : void
      {
         this._7e57f3c55867594ec7210b71 = Debug.assertProperty(this._40b8ddc4bae136c8d3726bb4,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刖務勍剮刀勾勺劚剈刉刐刃剌刼剜勠勨勧勣到剚剢勌剼勶勯勌別","勂勋剥刏刻勛刳劦勰刻刭刴刲刯刀劜"));
         var _loc1_:TextField = Debug.assertProperty(this._40b8ddc4bae136c8d3726bb4,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勱剖勄勚初剘刋剕剳劫勪勭刄剨勤刉剖刓剁刊前刺刷勞","勓劀刀劣勎勑刘务剉劥別勀劚刡劒剓"));
         this._87b4a951ed7c2dcdf5b84b0d = new _73899a4de8f83c8d2c26f545(_loc1_);
         var _loc2_:TextField = Debug.assertProperty(this._40b8ddc4bae136c8d3726bb4,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჻ჵၚၟုၰეუშတိღႨပგဌჲ၌ႚႥၒတၛიქႉၳႏၹჹ","ဲ၎჎ႻၭႫၡႴჶჁႠနၪႉဝဓ"));
         this._3e0c041dfd81aa0fe604a7e8 = new _73899a4de8f83c8d2c26f545(_loc2_);
         this._5353986ba318c1cfc311e02c = Debug.assertProperty(this._40b8ddc4bae136c8d3726bb4,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃勊勱剩剘剴勦劷勊勢剀列分剧勠分刺刀初劬刴剻勊刷刟剾刓刣勜剄刬剬刌功勁劜勡剠","勤刁刓剻劥劽劬剞剦刈刈勴勁刬剃剌"));
         this._a87c4b13206a1ef20a623043 = new Point();
         this._a87c4b13206a1ef20a623043.x = this._5353986ba318c1cfc311e02c.width;
         this._a87c4b13206a1ef20a623043.y = this._5353986ba318c1cfc311e02c.height;
         this._5353986ba318c1cfc311e02c.alpha = -1567944492 ^ 0x54D12A76 ^ 0x674DC916 ^ -1860701260;
         this._87b4a951ed7c2dcdf5b84b0d.source.alpha = -818575937 ^ -674528120 ^ 0x774A7AA8 ^ 0x6FB47B9F;
         this._3e0c041dfd81aa0fe604a7e8.source.alpha = 0x14F5964B ^ 0x18E5469A ^ -2130796465 ^ -1930530658;
      }
      
      public function _73c10a784bdfcf692cc77c95() : void
      {
         this._dae7028d964d69e6e2b45430();
         TweenLite.to(this._87b4a951ed7c2dcdf5b84b0d.source,_357190242c57f3955ae45ac4,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨剞刃剣剺勫勭分切刚剴勆劖剡剎刉刬勐","剜刮刳刳剚劒勞刎剴勯剬剱劎勠劰刓")):-587435952 ^ -857951643 ^ -1726420217 ^ -1992808142});
         TweenLite.to(this._3e0c041dfd81aa0fe604a7e8.source,_357190242c57f3955ae45ac4,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勔刷剂刦剦劸劶勺制募刪劚勬剙刋刌刋刺","勠勣刑创刢刎剕剉刜劔刽勠办劷剱劺")):0x19E0ACAA ^ -1818171046 ^ 0x4D830AC1 ^ -943501519});
      }
      
      public function _2504736edc2db8beb52d9672() : void
      {
         this._dae7028d964d69e6e2b45430();
         TweenLite.to(this._87b4a951ed7c2dcdf5b84b0d.source,_357190242c57f3955ae45ac4,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၫးၜ့ာႮထႣთခმდႃწ၉იႱ္","ცၞჍნေေဨှဌဣမၙჹႈဈ်")):0x3B3A11FE ^ -651440469 ^ 0x3E689F22 ^ -596033418});
         TweenLite.to(this._3e0c041dfd81aa0fe604a7e8.source,_357190242c57f3955ae45ac4,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挘掚揠捏挙挝掬揦揶挊揷挱捌掗挨挣挿捘","插揩推捣捧掞揼捻掴捬揹捰掊捌捯掯")):0x5F90A44D ^ 0x5EC35567 ^ 0x447F8CF5 ^ 0x452C7DDE});
      }
      
      public function _47fbc8afc244536182afffeb() : void
      {
         this._ce2fe5b8c933074f8f22272a();
         TweenLite.to(this._5353986ba318c1cfc311e02c,_357190242c57f3955ae45ac4,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掂挬捎掲掦掕挌捚援掅振授挪挕揮挠挶挴","挽挣接捏掜捾揬挗捗捐捺揇掭揶捶挆")):0x07CB0C04 ^ 0x7E6C5278 ^ 0x61D4DFCA ^ 0x187381B7});
         TweenLite.to(this._7e57f3c55867594ec7210b71,_357190242c57f3955ae45ac4,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ფჶჍၲၞფဩႯႵႧိၺႇဃ။ჵႰႪ","ဓၦၫၚျပဘႻၧႵႮၿႂၨဂႛ")):-494231742 ^ 0x6DA8D2E3 ^ 0x511D4FAC ^ -566296051});
      }
      
      public function _51590474d65eddb9beb51bb6() : void
      {
         this._ce2fe5b8c933074f8f22272a();
         TweenLite.to(this._5353986ba318c1cfc311e02c,_357190242c57f3955ae45ac4,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勑剻剁勄办勂刮勍剛剔剟勊刧劕動刁剧劯","勪劧勞動剧剻刀劒刊剴努剜刦勧制刢")):-394772631 ^ 0x02F9C4A5 ^ -248830243 ^ 0x1BAADD11});
         TweenLite.to(this._7e57f3c55867594ec7210b71,_357190242c57f3955ae45ac4,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揠挝挍挥挿捚揢挖揉挸挎掐捴揙捾揂掜捆","捣捄挞捙挢捏揽掉捴挝掇捡捳揙挼捎")):0x46AEC0 ^ -1931854286 ^ 0x4052596A ^ -858863207});
      }
      
      private function _dae7028d964d69e6e2b45430() : void
      {
         TweenLite.killTweensOf(this._87b4a951ed7c2dcdf5b84b0d.source);
         TweenLite.killTweensOf(this._3e0c041dfd81aa0fe604a7e8.source);
      }
      
      private function _ce2fe5b8c933074f8f22272a() : void
      {
         TweenLite.killTweensOf(this._7e57f3c55867594ec7210b71);
         TweenLite.killTweensOf(this._5353986ba318c1cfc311e02c);
      }
   }
}

