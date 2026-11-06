package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.text._d558598039de84ad6ceee8db;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class _e0cc9389efe17fa064758292 extends _d558598039de84ad6ceee8db implements IAssetWrapper
   {
      
      private var _6dbb8d3e0840257b987d9b1a:Rectangle;
      
      public function _e0cc9389efe17fa064758292(param1:Boolean = false, param2:String = "center")
      {
         super(param1,param2);
      }
      
      public function process(param1:DisplayObject) : void
      {
         embedFonts = true;
         this.filters = param1.filters;
         name = param1.name + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掚捏捤指掮捫揽挰掐挏揢捘掐挻接挷捈捹捚挟捵掄捘挃","掠掜挟揾掱掘挧提揘掹挱挩捫捔揃掹");
         this._6dbb8d3e0840257b987d9b1a = new Rectangle(param1.x,param1.y,param1.width,param1.height);
         widthNeed = this._6dbb8d3e0840257b987d9b1a.width;
         ShiftWrapper.shiftDisplayObject(param1,this);
         var _loc2_:TextField = param1 as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         setTextFormat(_loc3_);
         defaultTextFormat = _loc3_;
         curFontSize = int(_loc3_.size);
         selectable = false;
      }
      
      override public function set text(param1:String) : void
      {
         super.text = param1;
      }
      
      override protected function _00108a6df260af22a51fe633() : void
      {
         super._00108a6df260af22a51fe633();
         this.x = this._6dbb8d3e0840257b987d9b1a.x + this._6dbb8d3e0840257b987d9b1a.width / (0x3B05D66B ^ -879875037 ^ 0x2299292A ^ -770518176) - super.width / (0x5A97888B ^ -1911977149 ^ 0x26BCAE26 ^ -232608276);
         this.y = this._6dbb8d3e0840257b987d9b1a.y + this._6dbb8d3e0840257b987d9b1a.height / (0x31AC5F74 ^ -1526711011 ^ 0x470287C3 ^ -743512664) - super.height / (0x7E05ECE4 ^ -545395257 ^ 0x269B6693 ^ -2015139918);
      }
      
      public function _c6f528527f063d12b49dbe00() : void
      {
         this.y = this._6dbb8d3e0840257b987d9b1a.y + this._6dbb8d3e0840257b987d9b1a.height / (-278396758 ^ 0x143FBA88 ^ -1264366181 ^ 0x4FF4F7BB) - super.height / (-511098696 ^ 0x71224C39 ^ -806861336 ^ 0x5F43496B);
      }
   }
}

