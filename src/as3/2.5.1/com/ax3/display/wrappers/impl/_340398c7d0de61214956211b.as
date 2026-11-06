package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class _340398c7d0de61214956211b implements IAssetWrapper
   {
      
      private var _9e0de5c1ac1a84deb24b5c49:DisplayObject;
      
      private var _16912457e091f97ed994f578:TextField;
      
      private var _8c4f482efcd1ce633fea2257:Number;
      
      private const _fda7c27bb0a837700f4ac427:int = 400;
      
      public var maxHeight:int = 400;
      
      protected var _asset:DisplayObjectContainer;
      
      public function _340398c7d0de61214956211b()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = param1 as DisplayObjectContainer;
         this._9e0de5c1ac1a84deb24b5c49 = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏ရံႯဂႸႽဆၕჟယႚ","္ဏၟဦထჹၳဦ჎ჭၜ၍ဇၜသ၈"));
         this._16912457e091f97ed994f578 = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揰揘捄揿挃揃揆掅揰捺挲揮捗捖捭挚捛掴","掕掏掂掠捙揊排揨揇挣接控揻揩挠挫")) as TextField;
         this._8c4f482efcd1ce633fea2257 = this._9e0de5c1ac1a84deb24b5c49.y + this._9e0de5c1ac1a84deb24b5c49.height - this._16912457e091f97ed994f578.y - this._16912457e091f97ed994f578.height;
      }
      
      public function set text(param1:String) : void
      {
         this._16912457e091f97ed994f578.text = param1;
         this._16912457e091f97ed994f578.height = Math.min(this.maxHeight,this._16912457e091f97ed994f578.textHeight + (-2093287131 ^ 0x48F2ED80 ^ -1188452776 ^ 0x72E1B2F8));
         this._9e0de5c1ac1a84deb24b5c49.height = this._16912457e091f97ed994f578.y + this._16912457e091f97ed994f578.textHeight + this._8c4f482efcd1ce633fea2257;
      }
      
      public function get y() : Number
      {
         return this._asset.y;
      }
      
      public function get height() : Number
      {
         return this._asset.height;
      }
      
      public function set textAlign(param1:String) : void
      {
         var _loc2_:TextFormat = this._16912457e091f97ed994f578.defaultTextFormat;
         _loc2_.align = param1;
         this._16912457e091f97ed994f578.setTextFormat(_loc2_);
         this._16912457e091f97ed994f578.defaultTextFormat = _loc2_;
      }
      
      public function get defaultTextFormat() : TextFormat
      {
         return this._16912457e091f97ed994f578.defaultTextFormat;
      }
      
      public function set defaultTextFormat(param1:TextFormat) : void
      {
         this._16912457e091f97ed994f578.defaultTextFormat = param1;
         this._16912457e091f97ed994f578.setTextFormat(param1);
      }
      
      public function set selectable(param1:Boolean) : void
      {
         this._16912457e091f97ed994f578.selectable = param1;
      }
   }
}

