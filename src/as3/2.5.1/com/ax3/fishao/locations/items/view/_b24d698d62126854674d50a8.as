package com.ax3.fishao.locations.items.view
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class _b24d698d62126854674d50a8 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _860bdd43c97abb6a1ddc7977:MovieClip;
      
      public function _b24d698d62126854674d50a8(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      private function init() : void
      {
         this._860bdd43c97abb6a1ddc7977 = source as MovieClip;
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         TweenCube.from(this._860bdd43c97abb6a1ddc7977,-1890988625 ^ -75107412 ^ 0x3CE50D3C ^ 0x4829333E,{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挎掃挢捴按挰揟掍掿挘揺掳揣捁掓掫揥挸","掹揫掣挆挷掟挍揟挄捂掚捕揖掐揶揣")):0x7EFDBE19 ^ -727311756 ^ -457803935 ^ 0x4EEDD30C,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚刱刷励則勱划刻勤勨","劲劻勆初剎勘剼办劫刅勏刲勳劅勝勠")):this._860bdd43c97abb6a1ddc7977.y - (-1560515377 ^ 0x3F6C2413 ^ 0x6BC6B079 ^ -162072399)
         },{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掓揦捉掩揵捥掇揊掇掓揸揙掑挖揫捗","挍挣掔挧挙捪掶挄挳掲揀揘挼捐挵揵")):Cubic.easeOut});
         this._860bdd43c97abb6a1ddc7977.gotoAndPlay(_9c52777792d76fde110d23c0._60f3e8587e4103019e85c82e(-2120887355 ^ 0x7C21D116 ^ 0x35E181B7 ^ -933919900,this._860bdd43c97abb6a1ddc7977.totalFrames - 1));
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         TweenCube.destroyTweensOf(this._860bdd43c97abb6a1ddc7977,false);
         TweenCube.to(this._860bdd43c97abb6a1ddc7977,0x1417F5DE ^ 0x3BC40EB1 ^ -1323366756 ^ -1630732814,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႢჍႹ႗ჂႱႳဤၤ၏ႋီფჽქု჈Ⴒ","ဖႸၣჃႛႪႩპჭၹზၚျဴၼႼ")):-545870115 ^ -161709980 ^ -704635403 ^ -14011572,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劇劀剉勼剗勶劎劑劝刯","勆勫刲劉剖劕劀募劁加劚劄剷劏劬初")):this._860bdd43c97abb6a1ddc7977.y - (-1347559367 ^ 0x40124639 ^ -2082211086 ^ 0x6C5C5CDA)
         },{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掯排捩捛捥挌掀捖挧挏掔换換揫揋揩揱捫掲掼挐挽捃挅捛挶換揿","捦揣捰揗揵掅揪掲挹捻挔振揕捑挾挐")):this._90eac9ca552fe54c2ca0299f,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("လႾ႗ဳဝဟპဲႽစၻၞჀႋჩႩ","ဗယဝႂჺၐႢႸှႦპႰ႒လၚထ")):Cubic.easeOut
         });
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:int = 0x11410744 ^ -1439447727 ^ 0x7A75559C ^ 0x3140E76B;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-421584858 ^ 0x3B34BE9B ^ -2087542800 ^ -1371639379))
            {
               case 0:
                  super._90eac9ca552fe54c2ca0299f();
                  return;
               case 1:
                  this._860bdd43c97abb6a1ddc7977.parent.removeChild(this._860bdd43c97abb6a1ddc7977);
                  _loc1_ = 0x455D70C9 ^ 0x4700AB3E ^ 0x15B92FBB ^ -408714068;
                  break;
               case 2:
                  TweenCube.destroyTweensOf(this,false);
                  if(this._860bdd43c97abb6a1ddc7977.parent != null)
                  {
                     _loc1_ = 0x73C56C15 ^ -1879089533 ^ -660404169 ^ -723629504;
                  }
                  else
                  {
                     _loc1_ = 0x0EF6B848 ^ 0x10AB887A ^ 0x3DB2BECB ^ -743899623;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

