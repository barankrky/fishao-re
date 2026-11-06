package com.ax3.display.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class _c17c91a54f70b136b0bc5727 implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private static const _b404f7f9b19b449ac9285185:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剀劔剚勰刣判剩刟加勐努券剡切","削制劵勻劰劥勀剹劫剕刌剄刾劬刾剝");
      
      private var _asset:TextField;
      
      private const _5bbce1cab08d18229d0badf3:Number = 5;
      
      private var _25bece814f4dbb856768fb12:String = "";
      
      public function _c17c91a54f70b136b0bc5727()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = TextField(param1);
         this._asset.mouseEnabled = false;
         this._asset.mouseWheelEnabled = false;
      }
      
      public function onAssetProcessComplete() : void
      {
      }
      
      public function _6e059a7851f45fb81e0082b7() : void
      {
         this._8288a33e396a7d024f1af80a();
      }
      
      public function set text(param1:String) : void
      {
         this._25bece814f4dbb856768fb12 = param1;
         this._8288a33e396a7d024f1af80a();
      }
      
      public function get text() : String
      {
         return this._25bece814f4dbb856768fb12;
      }
      
      public function set width(param1:Number) : void
      {
         this._asset.width = param1;
         this._8288a33e396a7d024f1af80a();
      }
      
      private function _8288a33e396a7d024f1af80a() : void
      {
         this._asset.text = this._25bece814f4dbb856768fb12;
         if(this._asset.textWidth + this._5bbce1cab08d18229d0badf3 > this._asset.width && this._25bece814f4dbb856768fb12.length > (0x730C1020 ^ 0x58E8A918 ^ -1099963469 ^ -1786029429))
         {
            this._55f59c342e78f1357c91aaa9();
         }
      }
      
      private function _55f59c342e78f1357c91aaa9() : void
      {
         this._asset.text = _b404f7f9b19b449ac9285185;
         var _loc1_:Number = this._asset.textWidth;
         this._asset.text = this._25bece814f4dbb856768fb12;
         var _loc2_:int = -1680100521 ^ -1084223165 ^ 0x2D354AEB ^ 0x098EE8FF;
         while(this._asset.getCharBoundaries(_loc2_).x + this._asset.getCharBoundaries(_loc2_).width + _loc1_ + this._5bbce1cab08d18229d0badf3 < this._asset.width)
         {
            _loc2_++;
         }
         this._asset.text = this._25bece814f4dbb856768fb12.slice(0x7F747B02 ^ -878166982 ^ -1004918503 ^ 0x70C66E21,_loc2_) + _b404f7f9b19b449ac9285185;
      }
      
      public function set y(param1:Number) : void
      {
         this._asset.y = param1;
      }
      
      public function get y() : Number
      {
         return this._asset.y;
      }
   }
}

