package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.utils._a8d907fd0d19c674da3a32f4;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _73f5d17d09eb8739d4a22162 implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private var _asset:DisplayObjectContainer;
      
      public var label:TextField;
      
      public var addButton:_bb650418615bc8eb382e5586;
      
      private var _9f7e7060bb0d22052542e1c1:_eb2314ffc37429732989b460;
      
      public function _73f5d17d09eb8739d4a22162()
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
         this._9f7e7060bb0d22052542e1c1 = new _eb2314ffc37429732989b460();
         this._9f7e7060bb0d22052542e1c1.x = 0x1B3C05E2 ^ 0x20D85AA0 ^ -390329701 ^ -749185575;
         this._9f7e7060bb0d22052542e1c1.y = -996779262 ^ 0x3DB9C99C ^ 0x7A012087 ^ -2094091751;
         this._9f7e7060bb0d22052542e1c1.graphics.beginFill(0x407631D7 ^ 0x13F0E053 ^ 0x0E9A0B5D ^ 0x5D8CBA49,-1606875704 ^ 0x580FD92F ^ 0x27DC3B43 ^ -538253404);
         var _temp_2:* = this._9f7e7060bb0d22052542e1c1.graphics;
         var _temp_1:* = 0x5A4BB96B ^ 0x7506FAF8 ^ 0x65710948 ^ 0x4A3C4ADB;
         _temp_2.drawRect(_temp_1,_temp_1,this._asset.width - (-1018117329 ^ 0x2BAF6BFF ^ -2091317945 ^ 0x6BA6AD89),this._asset.height);
         this._9f7e7060bb0d22052542e1c1.graphics.endFill();
      }
      
      public function onAssetProcessComplete() : void
      {
         this.addButton.visible = false;
         this._asset.addChild(this._9f7e7060bb0d22052542e1c1);
      }
      
      public function set setFishBucks(param1:int) : void
      {
         this._9f7e7060bb0d22052542e1c1.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍捄捆揕揲挒挹捓掯挔捑据揶揝揶挟","捋捆掲揇捤挲揈挘揟挕掖捱挻揬捻掸")):String(param1)};
         this.label.text = _a8d907fd0d19c674da3a32f4._b59de14642fc8a3e6112b7fd(param1).toString();
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
      
      public function get visible() : Boolean
      {
         return this._asset.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
   }
}

