package com.ax3.fishao.locations.privateHouse
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display.panels._a6816d8c6262739dbd73ec1e;
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.objects._2d433bd00cdcd86a8edd654f;
   import com.ax3.fishao.locations.objects._6161ec218a1fd90e33925f86;
   import com.ax3.fishao.locations.objects._8e55d069d3b23302aff25778;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class _87a2b64ec17c6fb7cbdd79f4 extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _0396f21c013d701aef55223c:_1101cc3a2ddd3613bfb47fa9;
      
      public var privateHouseWall:MovieClip;
      
      public var privateHouseFloor:MovieClip;
      
      public var privateHouseEntrance:MovieClip;
      
      public var privateHouseEditorPanel:_a6816d8c6262739dbd73ec1e;
      
      public var privateGardenGrass:MovieClip;
      
      public var privateGardenBush_1:MovieClip;
      
      public var privateGardenBush_2:MovieClip;
      
      private var _aadbf40f9ee316523a2f471b:_6161ec218a1fd90e33925f86;
      
      public var _viewBoardFish:_2d433bd00cdcd86a8edd654f;
      
      private var _141922811696d992808f0df3:_8e55d069d3b23302aff25778;
      
      private var _ccaeb78b35e126fa06eb7910:_8e55d069d3b23302aff25778;
      
      public function _87a2b64ec17c6fb7cbdd79f4()
      {
         super();
      }
      
      public function get viewMoneyTree() : _1101cc3a2ddd3613bfb47fa9
      {
         return this._0396f21c013d701aef55223c;
      }
      
      public function get viewDoorCenter() : _8e55d069d3b23302aff25778
      {
         return this._141922811696d992808f0df3;
      }
      
      public function get viewDoorLeft() : _8e55d069d3b23302aff25778
      {
         return this._ccaeb78b35e126fa06eb7910;
      }
      
      public function get viewBuildingGrid() : _6161ec218a1fd90e33925f86
      {
         return this._aadbf40f9ee316523a2f471b;
      }
      
      public function set locationExit(param1:Boolean) : void
      {
         var _loc2_:_a5e6911f85306c220b8b5d78 = null;
         for each(_loc2_ in _sublocationEnters)
         {
            _loc2_.isEnabled = param1;
         }
         this.privateHouseEntrance.visible = param1;
      }
      
      override protected function _a4c9645a33e5e0daa1577dc3(param1:Event) : void
      {
         var _loc2_:Rectangle = null;
         super._a4c9645a33e5e0daa1577dc3(param1);
         if(!GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            _loc2_ = new Rectangle(0x69F5A339 ^ 0x52C90579 ^ 0x041A1381 ^ 0x3F26B53E,0x74F90CD5 ^ 0x18237F4D ^ -1483831898 ^ -883624674,-273513695 ^ -750256267 ^ 0x56D1693F ^ 0x6A24150F,0x15E39B10 ^ 0x380532F8 ^ 0x31BAE89D ^ 0x1C5C4161);
            _obstacleMapBitmapData.fillRect(_loc2_,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၐပზჷနჀშၰၩჟၓ၀၌ဲၞခფႈნდწၦႰ၂","ႄၱჿၔႣႏჽკ႙ჽဥႍყჟ။Ⴭ"));
         }
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(param1.name)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_MONEY_TREE:
               §§push(0x77F4746A ^ 0x45F56995 ^ -157210228 ^ -996133773);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_BACKYARD_BOARD:
               §§push(-39383990 ^ -1648776440 ^ -883117939 ^ -1421731890);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_BUSH_1:
               §§push(-1378752801 ^ 0x04F80E9F ^ -188550256 ^ 0x5DEB1BD2);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_BUSH_2:
               §§push(0x591DB328 ^ 0x78741275 ^ 0x163D20BB ^ 0x375481E5);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_DOOR_CENTER:
               §§push(0x4906E7D2 ^ 0x5A39C3E7 ^ 0x5E97FCA9 ^ 0x4DA8D898);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_DOOR_LEFT:
               §§push(0x2EAD66CC ^ 0x312F8AD6 ^ 0x379186A7 ^ 0x28136AB8);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_ENTRANCE:
               §§push(0x4B100E56 ^ 0x22B166AB ^ 0x3B24B144 ^ 0x5285D9BF);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_PRIVATE_HOUSE_WALL:
               §§push(0x3E5BB39D ^ 0x5F7DDBB9 ^ -202327146 ^ -1831414859);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_GRID:
               §§push(-587465845 ^ -1244398823 ^ -1565717752 ^ -880473198);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_GROUND:
               §§push(-1597406250 ^ 0x7379511F ^ -92312677 ^ 0x29CFB95B);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_EDIT_BUTTONS:
               §§push(0x1E9E675D ^ 0x109A5634 ^ -1633190716 ^ -1868345945);
               break;
            default:
               §§push(0x2AE2C806 ^ -788609136 ^ 0x19B925AB ^ -475715018);
         }
         switch(§§pop())
         {
            case 0:
               this._0396f21c013d701aef55223c = new _1101cc3a2ddd3613bfb47fa9(param1);
               this._0396f21c013d701aef55223c.hide();
               _a59e9ad02d49ff892e329e08(this._0396f21c013d701aef55223c.viewTrunk,mainLayer);
               _zSorter._e212a4ed5e2246a1788a7970(this._0396f21c013d701aef55223c.viewTrunk);
               _visibilityManager._cd00d97cac65b4dc892b5324(this._0396f21c013d701aef55223c.viewTrunk);
               _a59e9ad02d49ff892e329e08(this._0396f21c013d701aef55223c.viewShadow,_topLayer);
               _a59e9ad02d49ff892e329e08(this._0396f21c013d701aef55223c.viewLeaves,_topLayer);
               super._d950ad5e456ef35dfb21d570(param1);
               break;
            case 1:
               this._viewBoardFish = new _2d433bd00cdcd86a8edd654f(_loc2_);
               this._viewBoardFish.source.visible = false;
               _424a1f44ff05e52733e46eeb(_loc2_);
               break;
            case 2:
               this.privateGardenBush_1 = param1 as MovieClip;
               this.privateGardenBush_1.visible = false;
               _424a1f44ff05e52733e46eeb(_loc2_);
               break;
            case 3:
               this.privateGardenBush_2 = param1 as MovieClip;
               this.privateGardenBush_2.visible = false;
               _424a1f44ff05e52733e46eeb(_loc2_);
               break;
            case 4:
               this._141922811696d992808f0df3 = new _8e55d069d3b23302aff25778(_loc2_);
               _e58ba948a41fdded563972d3(_loc2_);
               break;
            case 5:
               this._ccaeb78b35e126fa06eb7910 = new _8e55d069d3b23302aff25778(_loc2_);
               _e58ba948a41fdded563972d3(_loc2_);
               break;
            case 6:
               this.privateHouseEntrance = param1 as MovieClip;
               this.privateHouseEntrance.visible = false;
               _424a1f44ff05e52733e46eeb(_loc2_,true,false);
               break;
            case 7:
               this.privateHouseWall = param1 as MovieClip;
               this.privateHouseWall.visible = false;
               _424a1f44ff05e52733e46eeb(_loc2_,false);
               break;
            case 8:
               this._aadbf40f9ee316523a2f471b = new _6161ec218a1fd90e33925f86(_loc2_);
               _bottom2Layer.addChild(_loc2_);
               break;
            case 9:
               this._1c56bc56519ca1eb50a68454(param1);
               super._d950ad5e456ef35dfb21d570(param1);
               break;
            case 10:
               _a59e9ad02d49ff892e329e08(DisplayObjectContainer(param1),floatingGuiLayer);
               this.privateHouseEditorPanel = new _a6816d8c6262739dbd73ec1e();
               this.privateHouseEditorPanel.init(param1 as MovieClip);
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
      
      override protected function _8b1877110d8870eb13b911cf(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean = true) : void
      {
         super._8b1877110d8870eb13b911cf(param1,false,param3);
      }
      
      private function _1c56bc56519ca1eb50a68454(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x1D28F502 ^ -1912628518 ^ -105548279 ^ -2147117300;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x51F25392 ^ 0x7D090E74 ^ 0x732EAA5F ^ -1229817498))
            {
               case 0:
                  this.privateGardenGrass.visible = false;
                  (param1 as DisplayObjectContainer).removeChild(this.privateGardenGrass);
                  _bottomLayer.addChildAt(this.privateGardenGrass,0x6D7AD081 ^ 0x1C4ADEC9 ^ -103473284 ^ -1998253772);
                  _loc2_ = 0x57886A19 ^ 0x06841A90 ^ 0x3B28185D ^ -2092702200;
                  break;
               case 1:
                  this.privateHouseFloor.visible = false;
                  (param1 as DisplayObjectContainer).removeChild(this.privateHouseFloor);
                  _bottom2Layer.addChild(this.privateHouseFloor);
                  _loc2_ = -398947149 ^ -1232125949 ^ 0x093DF684 ^ -1091717905;
                  break;
               case 2:
                  this.privateHouseFloor = MovieClip((param1 as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹剋剫刵勭刾刃刊剽刵剢剿刜剐劊劦劌劄删劉勜劉勧剧勽刧劁則劈劒","勄剜副劲努勸刎势勨劆勐劖勵勠刮動")));
                  if(this.privateHouseFloor != null)
                  {
                     _loc2_ = -152331171 ^ -166416711 ^ -912656357 ^ 0x20014421;
                  }
                  else
                  {
                     _loc2_ = 0x5D03F165 ^ 0x5946A357 ^ 0x5D0CC9D5 ^ -1339157188;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  this.privateGardenGrass = MovieClip((param1 as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘიဳ်ႆျ္၃၊၌ჾၰუ၈၌Ⴌ၊ီჍႩဧ႑პဉ჌ၛဃႌჺჟ၃ိႩႀၮრဣဲၾ႓Ⴑပლၑ","ၘျႪႌၧေჱჲდၜႭြဎဢ႙ჟ")));
                  if(this.privateGardenGrass != null)
                  {
                     _loc2_ = -185396136 ^ -890329538 ^ -2125230624 ^ 0x5629B159;
                  }
                  else
                  {
                     _loc2_ = 0x4FA73987 ^ -2125821060 ^ -1374885498 ^ -1987652191;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _d0d46faffd25649ffc40c9c4(param1:DisplayObject, param2:Boolean) : void
      {
         if(param2)
         {
            if(param1.parent != null && param1.parent == _bottomLayer)
            {
               _bottomLayer.removeChild(param1);
            }
            _zSorter._e212a4ed5e2246a1788a7970(param1);
         }
         else
         {
            if(_zSorter._d5112cf4084aaf4e0aa50d63(param1))
            {
               _zSorter._c1ccdb928cf168005fc7c4ff(param1);
            }
            _bottomLayer.addChild(param1);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = 0x9892EF ^ 0x1F7739B3 ^ -1944271659 ^ -3068707;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4530F5EB ^ 0x79926F5E ^ 0x0835B2DC ^ 0x58B56B3B))
            {
               case 0:
                  if(this._viewBoardFish != null)
                  {
                     _loc1_ = 0x10965AFC ^ -648224073 ^ -375984150 ^ 0x4C7E14F1;
                  }
                  else
                  {
                     _loc1_ = -886067823 ^ -1461694748 ^ -1369437904 ^ -1584551660;
                  }
                  break;
               case 1:
                  if(this._ccaeb78b35e126fa06eb7910 != null)
                  {
                     _loc1_ = 0x51A55370 ^ -2025731260 ^ 0x7E8E8014 ^ -1001890953;
                  }
                  else
                  {
                     _loc1_ = 0x08747252 ^ -257867558 ^ 0x7F2E89F1 ^ -338036692;
                  }
                  break;
               case 2:
                  this._viewBoardFish._90eac9ca552fe54c2ca0299f();
                  this._viewBoardFish = null;
                  _loc1_ = -1091964271 ^ 0x6AD7CD38 ^ 0x6A27768E ^ -767882634;
                  break;
               case 3:
                  if(this._141922811696d992808f0df3 != null)
                  {
                     _loc1_ = 0x3198E799 ^ -1271846033 ^ -439884650 ^ 0x0C4C6B3A;
                  }
                  else
                  {
                     _loc1_ = -1019194535 ^ 0x63EB6801 ^ 0x43FD4289 ^ -1888208254;
                  }
                  break;
               case 4:
                  this._0396f21c013d701aef55223c._90eac9ca552fe54c2ca0299f();
                  this._0396f21c013d701aef55223c = null;
                  _loc1_ = -1434176714 ^ -1251009258 ^ -1266375080 ^ -951203030;
                  break;
               case 5:
                  this._ccaeb78b35e126fa06eb7910._90eac9ca552fe54c2ca0299f();
                  this._ccaeb78b35e126fa06eb7910 = null;
                  _loc1_ = -829415704 ^ -681321955 ^ -210344446 ^ -2035818078;
                  break;
               case 6:
                  if(this._0396f21c013d701aef55223c != null)
                  {
                     _loc1_ = 0x042FCEF0 ^ -1932758158 ^ 0x4CF2A960 ^ -1473030220;
                  }
                  else
                  {
                     _loc1_ = 0x64F8A417 ^ -1730983543 ^ 0x30227CCD ^ -1607740927;
                  }
                  break;
               case 7:
                  super.destroy();
                  return;
               case 8:
                  this._141922811696d992808f0df3._90eac9ca552fe54c2ca0299f();
                  this._141922811696d992808f0df3 = null;
                  _loc1_ = -475233008 ^ 0x2C2304A3 ^ 0x118D775B ^ -1306479173;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

