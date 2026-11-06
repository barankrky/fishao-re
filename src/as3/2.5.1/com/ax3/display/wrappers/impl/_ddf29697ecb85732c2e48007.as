package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.utils._a8d907fd0d19c674da3a32f4;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _ddf29697ecb85732c2e48007 implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private var _asset:DisplayObjectContainer;
      
      public var label:TextField;
      
      public var addButton:_bb650418615bc8eb382e5586;
      
      private var _fa8663a9cb9b59d729682897:_eb2314ffc37429732989b460;
      
      public function _ddf29697ecb85732c2e48007()
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
         this._fa8663a9cb9b59d729682897 = new _eb2314ffc37429732989b460();
         this._fa8663a9cb9b59d729682897.x = -1327642010 ^ -2016770898 ^ -1304491178 ^ -2060958306;
         this._fa8663a9cb9b59d729682897.y = 0x621BE342 ^ 0x2033EE83 ^ -346669352 ^ -1451347175;
         this._fa8663a9cb9b59d729682897.graphics.beginFill(0x47249F7E ^ 0x72593BBD ^ 0x63C3B05F ^ 0x562E740C,-172915564 ^ -1004690059 ^ 0x23447BC2 ^ 0x12E85A23);
         var _temp_2:* = this._fa8663a9cb9b59d729682897.graphics;
         var _temp_1:* = 0x4E500FE2 ^ -990346024 ^ -515409416 ^ 0x6BEFF2C2;
         _temp_2.drawRect(_temp_1,_temp_1,this._asset.width - (-1479390461 ^ -1224225544 ^ -404480145 ^ -147744630),this._asset.height);
         this._fa8663a9cb9b59d729682897.graphics.endFill();
      }
      
      public function onAssetProcessComplete() : void
      {
         this.addButton.visible = false;
         this._asset.addChild(this._fa8663a9cb9b59d729682897);
      }
      
      public function set setFishCoins(param1:int) : void
      {
         this._fa8663a9cb9b59d729682897.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掎掲揙捽挮掽挣挲挒掙捖揪採揠捂掹","揿掹挣接掼掃掰揊描捓掃揂挙挌掍挵")):String(param1)};
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

