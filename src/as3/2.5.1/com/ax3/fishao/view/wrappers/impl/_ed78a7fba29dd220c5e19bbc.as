package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.worlds._fc0ad21ef0bdcb5d775a5005;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _ed78a7fba29dd220c5e19bbc extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      private var _362c38daf3bf7bdfb05f5a2f:MovieClip;
      
      private var _d662dd7e056d62b88b322486:TextField;
      
      private var _dd4d45edbead3afec864db44:TextField;
      
      private var _de00b42a93afa67d4ab676fd:FrameButtonWrapper;
      
      private var _11dcecede8d98d53ba7674fe:Function;
      
      private var _177bfcc5592547f2c44b52ac:_fc0ad21ef0bdcb5d775a5005;
      
      public function _ed78a7fba29dd220c5e19bbc()
      {
         super();
      }
      
      private function _a17d98625286ca0bee9584e9(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x4617000E ^ 0x50F3DAE3 ^ -685287506 ^ 0x6BA3A10B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6ECF241B ^ -886012374 ^ -1483699288 ^ -1475410480))
            {
               case 0:
                  this._11dcecede8d98d53ba7674fe(this._177bfcc5592547f2c44b52ac);
                  this._11dcecede8d98d53ba7674fe = null;
                  _loc2_ = 0x57AAF746 ^ -1334470521 ^ -1576595166 ^ -273132888;
                  break;
               case 1:
                  if(this._11dcecede8d98d53ba7674fe != null)
                  {
                     _loc2_ = -608700770 ^ 0x29FCD2FF ^ -1465452382 ^ -259133302;
                  }
                  else
                  {
                     _loc2_ = 0x21B40C6F ^ 0x755BAE58 ^ 0x471F27E2 ^ -1181701730;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set entity(param1:_fc0ad21ef0bdcb5d775a5005) : void
      {
         var _loc2_:int = -224718646 ^ -824510848 ^ -486263697 ^ -781157768;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-629711979 ^ -1036599869 ^ -274218771 ^ -103575838))
            {
               case 0:
                  this._177bfcc5592547f2c44b52ac = param1;
                  if(this._177bfcc5592547f2c44b52ac.enabled)
                  {
                     _loc2_ = 0x2B634312 ^ -1281529865 ^ -857178737 ^ 0x5A23F132;
                  }
                  else
                  {
                     _loc2_ = -1850407162 ^ 0x50D16FB3 ^ 0x0473FB53 ^ -886948934;
                  }
                  break;
               case 1:
                  this._362c38daf3bf7bdfb05f5a2f.gotoAndStop(-1496357676 ^ 0x4D18453C ^ 0x41876C76 ^ -1437577825);
                  this._de00b42a93afa67d4ab676fd.visible = true;
                  this._d662dd7e056d62b88b322486.text = this._177bfcc5592547f2c44b52ac.playersCount + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揺挾捊揣掱揵掖揾掫援","挜掦揻捌掽掠捧挥描揼捛掞揩揻掋掰") + this._177bfcc5592547f2c44b52ac.playersMax;
                  _loc2_ = 0x446A2FC3 ^ -607100851 ^ 0x4757C7E2 ^ -690479050;
                  break;
               case 2:
                  return;
               case 3:
                  this._de00b42a93afa67d4ab676fd.handler = this._a17d98625286ca0bee9584e9;
                  this._dd4d45edbead3afec864db44.text = param1.name;
                  return;
               case 4:
                  if(this._177bfcc5592547f2c44b52ac == param1)
                  {
                     _loc2_ = 0x251BB002 ^ 0x78AC1B09 ^ 0x0E4702DE ^ 0x5DC5018E;
                  }
                  else
                  {
                     _loc2_ = -1754267542 ^ 0x64E386E1 ^ -646658095 ^ 0x24D2E903;
                  }
                  break;
               case 5:
                  this._362c38daf3bf7bdfb05f5a2f.gotoAndStop(0x49B0026F ^ -828769101 ^ 0x77AE86E5 ^ -259557317);
                  this._de00b42a93afa67d4ab676fd.visible = false;
                  this._d662dd7e056d62b88b322486.text = this._177bfcc5592547f2c44b52ac.playersCount + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫揭揪挄揽揾揳捿揁掲","挩挧挟挾振掞捒揀捪捋挗揹挀掙挲握") + this._177bfcc5592547f2c44b52ac.playersMax;
                  _loc2_ = 0x41FF36F4 ^ 0x03F78A0D ^ -1534820471 ^ -390501590;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._362c38daf3bf7bdfb05f5a2f = MovieClip(DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揰挵揘挳揺揜捑捲掱捴挪掁掏揠挷挖","揿捊挡捋挮掀按挖掛捆捧捧捆捎挺推")));
         this._d662dd7e056d62b88b322486 = TextField(DisplayObjectContainer(param1).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳလჯၮဦဏႈႆტ႙Ⴍლ႗ဠႱ႒Ⴊွ","უჶဋ။უဧ၌ဝနႻဘၐჍႤၷႡ")));
         this._dd4d45edbead3afec864db44 = TextField(DisplayObjectContainer(param1).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဢၨၽვစ၄Ⴋ၀჋ဂ჆ხဠწႃၼၧဝဎႎ჻ဘႼၙ၇ည","჈჉ၯმၺ၇ႃဦჿ჎ညცႡჼႍჩ")));
         this._de00b42a93afa67d4ab676fd = new FrameButtonWrapper();
         var _loc2_:DisplayObject = DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捭揟掆揘揇挏掴排挊掰挜捯挥捛換揆挧捎","捞揈挨挤掕捰掗挻挕捄挭掑捳捸換捃"));
         this._de00b42a93afa67d4ab676fd.process(_loc2_);
         this._de00b42a93afa67d4ab676fd.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("削剹刞刢勳刷劘効助劌勺勾剱勳勱剄劯劀刴勺剮剡剶剺勵勅勛判劫刔剕刨剎则劶剂剕刢剪刟募加则勔务勫刵刓","勖劯剹募勪創刊勴剟勠刲劥刺刈剴剌"));
         addChild(param1);
      }
      
      public function getCurrentElementIdex() : int
      {
         return -2062767892 ^ -1150054734 ^ 0x5D1BED1D ^ -1667550020;
      }
      
      public function _8df196b7942c5902ae901197(param1:Function) : void
      {
         this._11dcecede8d98d53ba7674fe = param1;
      }
      
      public function click() : void
      {
         this._de00b42a93afa67d4ab676fd.click();
      }
   }
}

