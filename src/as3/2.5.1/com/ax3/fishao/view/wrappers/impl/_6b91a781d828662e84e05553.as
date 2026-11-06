package com.ax3.fishao.view.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _6b91a781d828662e84e05553 extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _cdde8425b4a0a2f6412c8c0f:TextField;
      
      private var _83d238c74f8f6092f85fe712:MovieClip;
      
      private var _43b80f3613e5d0f4173b2fec:MovieClip;
      
      private var _fc3123242195c9a2c5564223:MovieClip;
      
      private var _ba28c56326909f79cb44a394:int;
      
      public function _6b91a781d828662e84e05553()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._ba28c56326909f79cb44a394 = x + param1.width / (-773987269 ^ -1791542986 ^ 0x5CF3A332 ^ 0x18197E3D);
         this._cdde8425b4a0a2f6412c8c0f = TextField(MovieClip(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剣勩剦創创割劦劺刡勴刼別剟刌勶労勊剓勡刦勮勅劳刹剬勧勸剉","勐勻勗剙剶勰勽則励剻劽勺剨劇勻剋")));
         this._43b80f3613e5d0f4173b2fec = MovieClip(MovieClip(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("制刱勉刚列剼勔刵动刦剹劍","勡劔勽剴刵剬勂剎劜剷刴刟剕刍刜剖")));
         this._fc3123242195c9a2c5564223 = MovieClip(MovieClip(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刌功剒勝労劖列刦刍剣劭勲剢努判删勱則","刃剫勖勔劐剡创劫勶剀剈勠勎劃勏刣")));
         this._83d238c74f8f6092f85fe712 = MovieClip(MovieClip(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劺切剧动剰剪効剻剸剝刢則刣加功刾","労勑勽列动刳劋动勂劳勱剼劅刲剶劰")));
         addChild(param1);
      }
      
      public function set text(param1:String) : void
      {
         this._cdde8425b4a0a2f6412c8c0f.text = param1.toUpperCase();
         this._cdde8425b4a0a2f6412c8c0f.width = this._cdde8425b4a0a2f6412c8c0f.textWidth + (0x34BD34DC ^ 0x76D3C43A ^ -1118203578 ^ -13147739);
         this._43b80f3613e5d0f4173b2fec.width = int(this._cdde8425b4a0a2f6412c8c0f.width + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႞ႎႄႅႚვၧႩဳၸဪჯၳჩၚဏ႐Ⴘႝလპ႟ဆႾ","Ⴐဏဧმ၎ှျႩႢგဉကၫ၊ၯါ"));
         this._43b80f3613e5d0f4173b2fec.x = int(this._83d238c74f8f6092f85fe712.width);
         this._fc3123242195c9a2c5564223.x = int(this._43b80f3613e5d0f4173b2fec.width + this._83d238c74f8f6092f85fe712.width);
         x = int(this._ba28c56326909f79cb44a394 - width / (-1371775870 ^ 0x3C95E72A ^ -1705149311 ^ 0x08F4C72B));
      }
   }
}

