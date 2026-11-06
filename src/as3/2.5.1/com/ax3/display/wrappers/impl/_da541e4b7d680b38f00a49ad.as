package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _da541e4b7d680b38f00a49ad implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private const _f12966695ac53fab116110d7:Number = 18;
      
      private var _asset:DisplayObjectContainer;
      
      public var label:TextField;
      
      public var addButton:_bb650418615bc8eb382e5586;
      
      public var moreLabel:TextField;
      
      private var _af0bb1c315276c183cb1a43a:Sprite;
      
      private var _ed5273e626899dac6a37dbc8:Boolean = true;
      
      private var _1777c65bc6a04c467acd7ab9:Number;
      
      public function _da541e4b7d680b38f00a49ad()
      {
         super();
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._af0bb1c315276c183cb1a43a = Sprite(DisplayObjectContainer(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხ჌Ⴓ჻Ⴃံႄဇ႒ႊၼႨၦႵႬႎ","ါ၊၁၎ეჸჀႭႚნၣအဈჟမဿ"))).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掹掬挭捅据捗挍捠揵挹掲挚揄揑挅挾挄掱揵掋","挣揬捫挗揓持挢挢挃掝挙掫挆掣挓捽")));
         this._1777c65bc6a04c467acd7ab9 = this._af0bb1c315276c183cb1a43a.y;
      }
      
      public function onAssetProcessComplete() : void
      {
      }
      
      public function set moreInText(param1:String) : void
      {
         var _loc2_:int = -2065683528 ^ -959890980 ^ 0x57892F92 ^ -2044576849;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-898217847 ^ 0x28F2EFF6 ^ -934926456 ^ -1186953554))
            {
               case 0:
                  if(param1 == null)
                  {
                     _loc2_ = 0x20BC6F99 ^ 0x3F9E9E34 ^ 0x7BA70D7A ^ -150472049;
                  }
                  else
                  {
                     _loc2_ = 0x0A519F74 ^ -2086201444 ^ 0x55D001F3 ^ 0x4FA48F40;
                  }
                  break;
               case 1:
                  this._c65b5e652aa75f1c3fcc60f4();
                  _loc2_ = -1996401195 ^ 0x79695D0F ^ 0x714D59A1 ^ 0x12A75721;
                  break;
               case 2:
                  this._9342447d6fdeca41ad13fb66();
                  this.moreLabel.text = param1;
                  _loc2_ = -1462092272 ^ -1993910034 ^ -1732010147 ^ 0x2ABCFFF9;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _9342447d6fdeca41ad13fb66() : void
      {
         var _loc1_:int = 0x05D36178 ^ -446163180 ^ -733018229 ^ -686913668;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1336828356 ^ 0x3FBCD5FF ^ 0x10E0F413 ^ 0x7CF74949))
            {
               case 0:
                  this._ed5273e626899dac6a37dbc8 = true;
                  TweenCube.destroyTweensOf(this._af0bb1c315276c183cb1a43a);
                  TweenCube.to(this._af0bb1c315276c183cb1a43a,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჱူვძႰცရႾၱႮုჁႜၡၼ჆ႨဩႡჳဍၺၞၗ","ჰဥდဦႱႉပ္Ⴓၵဓ႔ဩၙဈႇ"),{
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("副刕勀刢努刬勮劶剈勳","勺则勶剽判勾剱刁剏劑剺剶刓効刚勌")):this._1777c65bc6a04c467acd7ab9,
                     (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჩီခ჌Ⴗჵ႑჉္ၺ႓჆ჳჳႛၪ","႙၀ီၔპშგႛႭႛခკၤჱၡဋ")):Cubic.easeOut
                  });
                  _loc1_ = 0x7CD16165 ^ -261797036 ^ 0x62678DB9 ^ 0x0D295110;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._ed5273e626899dac6a37dbc8 == false)
                  {
                     _loc1_ = -1475506119 ^ 0x14BF791B ^ 0x50C8BDC9 ^ 0x0F80A272;
                  }
                  else
                  {
                     _loc1_ = -448471011 ^ -1240817607 ^ -138070317 ^ 0x4771806F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c65b5e652aa75f1c3fcc60f4() : void
      {
         var _loc1_:int = -280491792 ^ 0x765C248C ^ -707897952 ^ 0x5D926F14;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-599321619 ^ -2090901690 ^ 0x1E9B4407 ^ 0x50CB1E65))
            {
               case 0:
                  return;
               case 1:
                  if(this._ed5273e626899dac6a37dbc8 == true)
                  {
                     _loc1_ = -740636134 ^ -421826119 ^ 0x758013AD ^ 0x51C9BEC5;
                  }
                  else
                  {
                     _loc1_ = 0x72B1B524 ^ 0x4C7027F0 ^ -903241040 ^ -442489171;
                  }
                  break;
               case 2:
                  this._ed5273e626899dac6a37dbc8 = false;
                  TweenCube.destroyTweensOf(this._af0bb1c315276c183cb1a43a);
                  TweenCube.to(this._af0bb1c315276c183cb1a43a,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揪捎挖捵揜掏掛揪掫掋捼捂换揘捠挪揕揋挴控掠揕挛掍","揞捩揔掱挤掺掏措揜揣揃挈換揺揆挝"),{
                     (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ွဩჰၞၓၽჃ့ჂႮ","Ⴀაလႜლჹဏဠၾ႔႒႞ნუთၮ")):this._1777c65bc6a04c467acd7ab9 - this._f12966695ac53fab116110d7,
                     (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掿掕挟捇捻挤掳揳捃掵揰挳掺捶揕揖","揎捓捓揞挗捰掬揭掏挂捼揙挆挖掏捞")):Cubic.easeIn
                  });
                  _loc1_ = -150723748 ^ 0x333707B2 ^ -265014642 ^ 0x254F00A9;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get x() : int
      {
         return this._asset.x;
      }
      
      public function set x(param1:int) : void
      {
         this._asset.x = param1;
      }
      
      public function get y() : int
      {
         return this._asset.y;
      }
      
      public function get height() : int
      {
         return this._asset.height;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         return this._asset.localToGlobal(param1);
      }
      
      public function get visible() : Boolean
      {
         return this._asset.visible;
      }
   }
}

