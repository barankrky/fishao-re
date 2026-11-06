package com.ax3.display.wrappers.impl
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.fishao.model._309cf996e20a1fb3cf1af6b4;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   
   public class _b0a3ffa7ccf8d8242efc68ed implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      public var closeButton:FishaoButtonWrapper;
      
      public var okButton:FrameButtonWrapper;
      
      public var titleField:TextField;
      
      public var amountField:TextField;
      
      public var item:_309cf996e20a1fb3cf1af6b4;
      
      private var _asset:MovieClip;
      
      public function _b0a3ffa7ccf8d8242efc68ed()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
      }
      
      public function onAssetProcessComplete() : void
      {
         this.okButton.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჯ၊္ရჍლူႯჲမ႐ဘုၷტႿ၀၇Ⴤႂယညၧျ","႗ႛქဍၱ၄၃ဎ၌လჁဣိ႘၎Ⴕ"));
         this.titleField.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჆သკုဇႪ႗ဳဓႝ၁ႥჽၟၺိႲႬბႝွႅၟဃဪႾတ႗၁ၣဏၑ႙႕ႅႠ႞ဣႫၶ႖ထဇ၅ႆၒ႟ၣუၣ႒ဆ","ჺეჵူႁနဟဝၿၛ჌ၗႠငဝဨ"));
         this.amountField.addEventListener(Event.CHANGE,this._029d9e14b2e352bd0be2e649);
         this.amountField.addEventListener(TextEvent.TEXT_INPUT,this._76c805551889611708d5610f);
         this.closeButton.handler = this._530f85d6a10723d4ee43c911;
      }
      
      private function _76c805551889611708d5610f(param1:TextEvent) : void
      {
         this._58580db8ec9032cfff49a423();
      }
      
      private function _029d9e14b2e352bd0be2e649(param1:Event) : void
      {
         this._58580db8ec9032cfff49a423();
      }
      
      private function _58580db8ec9032cfff49a423() : int
      {
         var _loc1_:int = 0x7642C089 ^ 0x39786CCE ^ -361726681 ^ -1521823392;
         var _loc2_:int = 0x135AD7E1 ^ 0x2CB57589 ^ -373810340 ^ -1496133064;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x16113409 ^ 0x39E21324 ^ 0x449ED9AD ^ 0x1BE8958D))
            {
               case 0:
                  return _loc1_;
               case 1:
                  _loc1_ = -704872392 ^ 0x36AAA3CA ^ 0x6C3E3175 ^ -1889004921;
                  if(this.amountField.text.length > (-1201833197 ^ 0x5F45F77C ^ -220898791 ^ 0x15CDD676))
                  {
                     _loc2_ = 0x3D5BD267 ^ 0x540A3276 ^ -1162549574 ^ -1553961564;
                  }
                  else
                  {
                     _loc2_ = -1404889602 ^ -467165043 ^ -155574560 ^ -832847714;
                  }
                  break;
               case 2:
                  _loc1_ = parseInt(this.amountField.text);
                  _loc1_ = limit(_loc1_,-1734017024 ^ -74229796 ^ 0x7C2E208F ^ 0x1F187752,this.item.getAmount);
                  this.amountField.text = String(_loc1_);
                  _loc2_ = -345312309 ^ -1062230731 ^ -1628464274 ^ -978344291;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _530f85d6a10723d4ee43c911(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      public function hide() : void
      {
         this.item = null;
         this._asset.visible = false;
      }
      
      public function show(param1:_309cf996e20a1fb3cf1af6b4) : void
      {
         this.item = param1;
         this.amountField.text = String(param1.getAmount);
         this._asset.visible = true;
      }
      
      public function _f5aac4b01eaed85f442fcab6() : int
      {
         return this._58580db8ec9032cfff49a423();
      }
   }
}

