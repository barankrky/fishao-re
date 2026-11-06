package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _2cdd13756ecbf9d1e37d2c0a extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static var _ae0f269453814d56ccc4ece7:int = 0x3145506C ^ 0x63F11F5A ^ 0x0FC762BD ^ 0x5D732D89;
      
      private var _95e4b55f131d99ee354b4749:DisplayObjectContainer;
      
      private var _d307142078dc1dc0bbbf9604:TextField;
      
      private var _bca7464338f479b37e73e26f:TextField;
      
      private var _69367d41fde355259e7a2e46:int;
      
      private var _4b5b98d818d566a87b7e6cc8:Boolean;
      
      public function _2cdd13756ecbf9d1e37d2c0a(param1:_988093efdfa36e13bfd6c6cf, param2:TextField, param3:TextField, param4:Boolean = true)
      {
         Debug.assertNotEqual(param2.parent,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揧揣挤挐掼揽揗损揅揉挂揓揩捊描挆挣捊揼挳捩捧捷挩排揰控捂掶推挤挔揧掳揢捕捚掓掯揸掬挛捶捶捧挀挮挦掯揑掋捽捋损掄捴掷揣揻捹採掭捷掝揿捤揾掜捃揿揌掔挴挟掐捩掴掍振揕捰揂掳捃挄捗挱採挞掁揚挐揞捺捌挾挫措捄揘挧捠捥掯挵揸挥揩掹提揀揉掇挭掝掌掚掼掏挒揣挮揸掘掁授掻挒揨掶揂捶掐挄掑揯揀揶挤捷挙挛","捋捿挌掷掅措捹挋捷掐揿揌掫捱挭挮"));
         Debug.assertNotEqual(param3.parent,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揈掽掻掓揟挤捂揱挌揈掯挩掏挥捅捘揄掲挹揁揈捕挘挀掅換揚掶揸捧揰持捉挬揤授揶掺揾捽捞捆捫捲挔掣捜探挠挃捇据捳揹掏挴捧掘捣掯捼挿捈揋捐揨挥揩损揥掭掭掓挧挝捫掬掇捺掄捏掐揦挥挌揍捣掹揭揍掎揪挖挝揿掀描捸捋揸排揦掙振挥掳挖挶掷捞捳揂捰揵捩捗揣捪挒挣掐掁捓挧挽揠推掷揔捼挺揣揫揼掙插捇挵掝挟措插","掅捅掱捁揜掅掮挴掞揣揠捖捕掝挭揪"));
         this._95e4b55f131d99ee354b4749 = new Sprite();
         super(param1,this._95e4b55f131d99ee354b4749);
         this._d307142078dc1dc0bbbf9604 = param2;
         this._bca7464338f479b37e73e26f = param3;
         this._4b5b98d818d566a87b7e6cc8 = param4;
         this.init();
      }
      
      public function set title(param1:String) : void
      {
         this._d307142078dc1dc0bbbf9604.text = param1;
         this._63b9041bf855ea499da8554e(false);
      }
      
      public function set value(param1:String) : void
      {
         this._bca7464338f479b37e73e26f.text = param1;
         this._63b9041bf855ea499da8554e(false);
      }
      
      private function init() : void
      {
         this._69367d41fde355259e7a2e46 = 0x17953731 ^ 0x50B89742 ^ -1256768941 ^ -231040475;
         this._95e4b55f131d99ee354b4749.x = this._d307142078dc1dc0bbbf9604.x;
         this._95e4b55f131d99ee354b4749.y = this._d307142078dc1dc0bbbf9604.y;
         this._d307142078dc1dc0bbbf9604.parent.addChild(this._95e4b55f131d99ee354b4749);
         this._d307142078dc1dc0bbbf9604.parent.removeChild(this._d307142078dc1dc0bbbf9604);
         this._bca7464338f479b37e73e26f.parent.removeChild(this._bca7464338f479b37e73e26f);
         this._bca7464338f479b37e73e26f.x -= this._d307142078dc1dc0bbbf9604.x;
         this._bca7464338f479b37e73e26f.y -= this._d307142078dc1dc0bbbf9604.y;
         this._d307142078dc1dc0bbbf9604.x = 0x190577DA ^ -1157707662 ^ -1659455174 ^ 0x3EED0692;
         this._d307142078dc1dc0bbbf9604.y = 0x5A3D4ACC ^ -2139642134 ^ 0x0C9BF9C7 ^ -690940447;
         this._95e4b55f131d99ee354b4749.addChild(this._d307142078dc1dc0bbbf9604);
         this._95e4b55f131d99ee354b4749.addChild(this._bca7464338f479b37e73e26f);
         this._63b9041bf855ea499da8554e(false);
      }
      
      override public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
         var _loc2_:int = -1836409604 ^ -1713107042 ^ 0x6F8762C1 ^ 0x0F7A5713;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4CF3549D ^ -1885690493 ^ 0x4EA2D4E8 ^ -430406842))
            {
               case 0:
                  if(!this._4b5b98d818d566a87b7e6cc8)
                  {
                     _loc2_ = 0x4E469095 ^ -363073270 ^ -660329257 ^ 0x172AEBF9;
                  }
                  else
                  {
                     _loc2_ = -662129198 ^ -1318836165 ^ -981762373 ^ -956021280;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._d307142078dc1dc0bbbf9604.width = this._d307142078dc1dc0bbbf9604.textWidth + _ae0f269453814d56ccc4ece7 * (-425667290 ^ 0x01E44955 ^ -1554342408 ^ 0x441E0189);
                  this._bca7464338f479b37e73e26f.width = this._bca7464338f479b37e73e26f.textWidth + _ae0f269453814d56ccc4ece7 * (-1677398292 ^ 0x05CE0AB3 ^ 0x7540CCC2 ^ -326489953);
                  this._bca7464338f479b37e73e26f.x = this._d307142078dc1dc0bbbf9604.width + this._69367d41fde355259e7a2e46;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

