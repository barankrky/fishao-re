package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.locations._10aec915df137be255fad9fc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class _296ee54b441acfe4f3a01508 extends Sprite
   {
      
      public static const NIGHT_STATE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဠႼ၁ႆဥ႙ၺၾဝဧဓჼႆလႸႁဒႚ႗၈჻ჱმႭႥၐႢႿၱၗ","ၒ႖ႎဋვბၛၓၾာ၂რწრကဢ");
      
      public static const DAY_STATE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჃჿူႲွၧ჎ဉუၴဌႤၨဖႸაჀხၜႷძႊუႫၴဵ","ဘႭ႐Ⴀ့ုჄၷၹჵ၍၈႗ნၜး");
      
      private var _asset:DisplayObjectContainer;
      
      private var _1d029860c022a17558317c29:DisplayObject;
      
      private var _f4be74cb49959381d0f37d65:_10aec915df137be255fad9fc;
      
      public function _296ee54b441acfe4f3a01508(param1:DisplayObject, param2:Function)
      {
         super();
         this._asset = DisplayObjectContainer(param1);
         this._1d029860c022a17558317c29 = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揕排捦揳捆捉揰挼挻挄掋挭挬捡揀挨","掔捃掴挗挧揉揆挏挥挞揈揾挐插捝换"));
         this._f4be74cb49959381d0f37d65 = new _10aec915df137be255fad9fc(MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၨႿဨიჳၐဍဠဳ၍ၟიႇჃჸ၅ပါაჵ","ဎ჻ტჿჀკၳထဳცၓဟ၇႓ၻပ"))));
         this._f4be74cb49959381d0f37d65.framePerSec = 0x3D4FE0C4 ^ -988692751 ^ 0x1B4F9FED ^ -485375534;
         this._f4be74cb49959381d0f37d65.play();
         param2(this._f4be74cb49959381d0f37d65);
         this.state = DAY_STATE;
      }
      
      public function set state(param1:String) : void
      {
         var _loc2_:int = -229314748 ^ -415476516 ^ 0x1947965F ^ -599503236;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-933737563 ^ -1638042146 ^ 0x5E4BE118 ^ -668615463))
            {
               case 0:
                  this._f4be74cb49959381d0f37d65.alpha = -1218887005 ^ 0x1296331A ^ -1146056055 ^ 0x1E7FE330;
                  this._1d029860c022a17558317c29.alpha = -1440845329 ^ 0x2E3AAEB1 ^ -2129287185 ^ 0x053178B0;
                  _loc2_ = -221110910 ^ 0x43B7AE64 ^ 0x0BAB3B1A ^ 0x6AA5EB45;
                  break;
               case 1:
                  if(param1 == DAY_STATE)
                  {
                     _loc2_ = 0x49E9ACF0 ^ -1728974365 ^ 0x33E4B09E ^ 0x32978E37;
                  }
                  else
                  {
                     _loc2_ = -534886576 ^ -603576543 ^ -1750481247 ^ 0x7BDAC56E;
                  }
                  break;
               case 2:
                  this._f4be74cb49959381d0f37d65.alpha = -1683130794 ^ -145717364 ^ -1151949318 ^ -676637663;
                  this._1d029860c022a17558317c29.alpha = 0x3A18925A ^ 0x29C5F9FD ^ 0x02DEC77B ^ 0x1103ACDC;
                  _loc2_ = 0x4AAB339A ^ 0x25CF5B37 ^ 0x256B90E7 ^ -1704682509;
                  break;
               case 3:
                  return;
               case 4:
                  if(param1 == NIGHT_STATE)
                  {
                     _loc2_ = 0x2FB34C95 ^ -978527246 ^ 0x17D3B425 ^ 0x2DA740FA;
                  }
                  else
                  {
                     _loc2_ = -4735198 ^ 0x320CE8E9 ^ 0x3B8CEBF8 ^ 0x265CDF8A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _442ddcb2727b8ddf77b91843(param1:Number) : void
      {
         this._f4be74cb49959381d0f37d65.alpha = param1;
         this._1d029860c022a17558317c29.alpha = ((0x0E8EED05 ^ 0x26F064E2 ^ -700356877 ^ -29364459) - param1) * (-1396282165 ^ -1412012221 ^ -872857807 ^ -857131845);
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0x1E022904 ^ 0x787F8360 ^ 0x0E77A592 ^ -1536985805;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1025583853 ^ 0x2196004E ^ -1086171987 ^ -1872495820))
            {
               case 0:
                  this._f4be74cb49959381d0f37d65.destroy();
                  _loc1_ = 0x127CD262 ^ 0x6389F1C9 ^ 0x256300D8 ^ -1728095819;
                  break;
               case 1:
                  this._asset = null;
                  this._1d029860c022a17558317c29 = null;
                  if(this._f4be74cb49959381d0f37d65 != null)
                  {
                     _loc1_ = -1141099629 ^ 0x1B537673 ^ -194179613 ^ -1733610809;
                  }
                  else
                  {
                     _loc1_ = -1128942919 ^ -1258732417 ^ 0x23D3BCD4 ^ -403296044;
                  }
                  break;
               case 2:
                  this._f4be74cb49959381d0f37d65 = null;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

