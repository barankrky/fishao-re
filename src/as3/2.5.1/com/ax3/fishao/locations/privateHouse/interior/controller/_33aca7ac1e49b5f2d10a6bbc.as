package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.locations.privateHouse._87a2b64ec17c6fb7cbdd79f4;
   import com.ax3.fishao.locations.privateHouse.interior.model._89bc7f4f6fa46d997b0e149c;
   import com.ax3.fishao.locations.privateHouse.interior.view._94cc81c5cf19422705d8598d;
   import com.ax3.fishao.utils._c51551cee1d8db71c112ce9a;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.utils._8e0ad3e3097154db523ce770;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   
   public class _33aca7ac1e49b5f2d10a6bbc extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _463427a65b8e43ee8b8ec129:_94cc81c5cf19422705d8598d;
      
      private var _fbc4c092fff7134de3477891:_89bc7f4f6fa46d997b0e149c;
      
      protected var _locationLayers:_87a2b64ec17c6fb7cbdd79f4;
      
      protected var _controllerInterior:_afb131a8b7579a7c44d03bf8;
      
      protected var _graphicsToLoad:int;
      
      public function _33aca7ac1e49b5f2d10a6bbc(param1:_89bc7f4f6fa46d997b0e149c, param2:_94cc81c5cf19422705d8598d, param3:_afb131a8b7579a7c44d03bf8)
      {
         this._463427a65b8e43ee8b8ec129 = param2;
         this._fbc4c092fff7134de3477891 = param1;
         this._controllerInterior = param3;
         super(param2);
         this.init();
      }
      
      public function _866c40a304f18775392e11ad(param1:String, param2:String) : String
      {
         var _loc3_:String = Config.SERVER;
         _loc3_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("則勢劈刻剪劃办勃刏剖刊刭劾刍劜勿务劶勱勌刴劌刣刕削劉勪劊劥努劉剈劓剋劼剹勂劈劙剉刨勨助劅劂別刃刯刋劬勾劤刾剂劻办劏勈","刂剘勉劄利劵勇别勜勆刲刳刈刃劏加");
         _loc3_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挧挗提挔換捃捠挢揫挥挥掩揭捺揞掀挏描揾挭掆掬揹据","挾揓掰捡捝揈掣挓挖掌挶揣插掬捳捒");
         _loc3_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႡფူဉဪႱႝჼტဃ","ႸფდႸႸ႟။ჱၸჱၧეၝဪၒ႞");
         _loc3_ += param2;
         _loc3_ += param1;
         _loc3_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗劕勀刜劋勻励副刱劧","勓劬勔剼勡剁剪剡剹勒募勝劍切刭动");
         _loc3_ += this._fbc4c092fff7134de3477891.itemId.toString();
         return _loc3_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႔Ⴗ၎ဓၶ၆ခုჷ၏ლန჻ႂယဿ","႓႗ရဘ჻Ⴈფ჏ဧၒჲჩႉ႔Ⴂၟ");
      }
      
      public function get entity() : _89bc7f4f6fa46d997b0e149c
      {
         return this._fbc4c092fff7134de3477891;
      }
      
      public function get isCompletelyLoaded() : Boolean
      {
         return this._graphicsToLoad == (-978418038 ^ 0x5E89A944 ^ 0x0655D62E ^ -1653409312);
      }
      
      public function set buildMode(param1:Boolean) : void
      {
      }
      
      public function set isVisible(param1:Boolean) : void
      {
         var _loc2_:int = 0x612431DB ^ 0x0170B534 ^ 0x6D8B4DFC ^ -1070539150;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x53FFEAAF ^ -1433631911 ^ -1054680339 ^ -172055430))
            {
               case 0:
                  if(param1)
                  {
                     _loc2_ = 0x5B38B153 ^ -1523150628 ^ 0x4A2EBDB6 ^ 0x79CF8B5B;
                  }
                  else
                  {
                     _loc2_ = 0x0780B122 ^ -1356474138 ^ -1837082465 ^ -137746885;
                  }
                  break;
               case 1:
                  this._463427a65b8e43ee8b8ec129.hide();
                  _loc2_ = 0x099EFF20 ^ 0x7B99CCB7 ^ -1756239687 ^ 0x28B9CC4D;
                  break;
               case 2:
                  return;
               case 3:
                  this._463427a65b8e43ee8b8ec129.show();
                  _loc2_ = -163572434 ^ -328757374 ^ -280982557 ^ 0x3888062C;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _e595f8672a6c8efe1b8666f7(param1:Event = null) : void
      {
         this._eb46bd4c0333f22557a4fbde(param1.target);
         --this._graphicsToLoad;
         if(!this.isCompletelyLoaded)
         {
            return;
         }
         this.addItem();
         this._controllerInterior.update(_6b63fd0a4028eb279b227831.ECU_INTERIOR_ITEM_LOADED);
      }
      
      public function _a75c6619e7e273a1005770ee() : void
      {
      }
      
      private function init() : void
      {
      }
      
      public function _b608f592bdec34a87ae66f71() : void
      {
         this._463427a65b8e43ee8b8ec129.load();
      }
      
      public function load(param1:DisplayObjectContainer, param2:String, param3:String, param4:int = 0, param5:int = 0) : void
      {
         var _loc6_:String = this._866c40a304f18775392e11ad(param2,param3);
         var _loc7_:_8e0ad3e3097154db523ce770 = new _8e0ad3e3097154db523ce770();
         _loc7_.addEventListener(_8e0ad3e3097154db523ce770.LOADED_EVENT,this._e595f8672a6c8efe1b8666f7);
         _loc7_.x = param4;
         _loc7_.y = param5;
         param1.addChild(_loc7_);
         _c51551cee1d8db71c112ce9a.replaceBitmapDataFromURL(_loc7_,_loc6_);
      }
      
      private function _eb46bd4c0333f22557a4fbde(param1:Object) : void
      {
         var _loc2_:IEventDispatcher = param1 as IEventDispatcher;
         if(_loc2_.hasEventListener(_8e0ad3e3097154db523ce770.LOADED_EVENT))
         {
            _loc2_.removeEventListener(_8e0ad3e3097154db523ce770.LOADED_EVENT,this._e595f8672a6c8efe1b8666f7);
         }
      }
      
      protected function addItem() : void
      {
      }
      
      public function removeItem(param1:Boolean = true) : void
      {
         var _loc2_:int = 0x30235869 ^ 0x18AF6488 ^ 0x43261362 ^ 0x6185B930;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6F74A786 ^ -580727040 ^ 0x53FC06B6 ^ -339347326))
            {
               case 0:
                  this._controllerInterior.locationDialog._ad9519c29236cd31c462b4b9(this._fbc4c092fff7134de3477891.id,this._fbc4c092fff7134de3477891.itemId);
                  _loc2_ = 0x5013D220 ^ -840447228 ^ 0x49964CC2 ^ -565329066;
                  break;
               case 1:
                  if(param1)
                  {
                     _loc2_ = -832534118 ^ 0x310E6859 ^ -1579069860 ^ 0x54A0392D;
                  }
                  else
                  {
                     _loc2_ = -1400422197 ^ -648949894 ^ -823139798 ^ -1323893973;
                  }
                  break;
               case 2:
                  this._controllerInterior.items.splice(this._controllerInterior.items.indexOf(this),0x71EF90FE ^ 0x78BD2945 ^ -1333360178 ^ -1177276300);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

