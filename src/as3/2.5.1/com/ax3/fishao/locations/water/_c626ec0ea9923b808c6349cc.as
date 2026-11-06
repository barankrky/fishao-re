package com.ax3.fishao.locations.water
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _c626ec0ea9923b808c6349cc extends Sprite implements _69eec7d2f73604da25ccda04
   {
      
      private static const _14b023fdfdb8e45d4a23366a:int = -1141054127 ^ 0x5B8E8C3C ^ -887634538 ^ 0x2B65ACF4;
      
      private var _033733ea6fafb4f761f5aa4e:Vector.<Rectangle>;
      
      private var _4c72415e67fca33fb800d52a:Vector.<_57a210bc94ba02290594dbc5>;
      
      public function _c626ec0ea9923b808c6349cc()
      {
         var _loc1_:_57a210bc94ba02290594dbc5 = null;
         super();
         this._4c72415e67fca33fb800d52a = new Vector.<_57a210bc94ba02290594dbc5>();
         var _loc2_:int = -221789829 ^ -1340025475 ^ -17812759 ^ -1139333393;
         while(_loc2_ < _14b023fdfdb8e45d4a23366a)
         {
            _loc1_ = new _57a210bc94ba02290594dbc5();
            this._4c72415e67fca33fb800d52a.push(_loc1_);
            addChild(_loc1_);
            _loc2_++;
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:_57a210bc94ba02290594dbc5 = null;
         if(this._033733ea6fafb4f761f5aa4e != null)
         {
            for each(_loc3_ in this._4c72415e67fca33fb800d52a)
            {
               _loc3_.update(param1,param2);
            }
         }
      }
      
      public function _ea33e15d7580c95234cf9e24(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:_57a210bc94ba02290594dbc5 = null;
         var _loc5_:DisplayObject = null;
         this._033733ea6fafb4f761f5aa4e = new Vector.<Rectangle>();
         var _loc6_:Array = [];
         var _loc7_:uint = uint(param1.numChildren);
         var _loc8_:int = -731916688 ^ 0x4864A452 ^ 0x1247D8 ^ -1675020806;
         while(_loc8_ < _loc7_)
         {
            _loc5_ = param1.getChildAt(_loc8_);
            if(_loc5_ is MovieClip)
            {
               _loc6_.push(_loc5_);
            }
            _loc8_++;
         }
         _loc6_.sortOn([_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捴捓描挐掿捰排挔握揗捒掀捈挮捡捖","掛掁揓挡揍捶挳措揵挙揂揨揵捇捵挭")],[Array.CASEINSENSITIVE]);
         for each(_loc3_ in _loc6_)
         {
            _loc2_ = new Rectangle();
            _loc2_.x = _loc3_.x;
            _loc2_.y = _loc3_.y;
            _loc2_.width = _loc3_.width;
            _loc2_.height = -388436266 ^ -211613058 ^ 0x22CA24F1 ^ 0x3971C058;
            this._033733ea6fafb4f761f5aa4e.push(_loc2_);
         }
         removeAllChildren(param1);
         param1.addChild(this);
         for each(_loc4_ in this._4c72415e67fca33fb800d52a)
         {
            _loc4_._6dc79145cb986d7de1fad6a6(this._033733ea6fafb4f761f5aa4e);
         }
      }
      
      public function _20c01ec568ebe1eb64b3bed0() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>(this._4c72415e67fca33fb800d52a);
      }
      
      public function destroy() : void
      {
         var _loc1_:_57a210bc94ba02290594dbc5 = null;
         this._033733ea6fafb4f761f5aa4e = null;
         for each(_loc1_ in this._4c72415e67fca33fb800d52a)
         {
            _loc1_.destroy();
         }
         this._4c72415e67fca33fb800d52a = null;
      }
   }
}

