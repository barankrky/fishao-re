package com.ax3.fishao.locations
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class _54f42c01108a013ebe64775b extends Sprite
   {
      
      private var _705095b8dd9ca510e1461ece:Vector.<_3b397340357d8a491ae998ae>;
      
      public function _54f42c01108a013ebe64775b(param1:_68d6770c6e8ca6ab940a29bc, param2:DisplayObject)
      {
         var _loc3_:_7f33f5a524ab43d51548730b = null;
         var _loc4_:_3b397340357d8a491ae998ae = null;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this._b1c03609cb5aa8578f3d85e3);
         addEventListener(Event.REMOVED_FROM_STAGE,this._8e4952eee6afe276dd153406);
         ShiftWrapper.shiftDisplayObject(param2,this);
         this._705095b8dd9ca510e1461ece = new Vector.<_3b397340357d8a491ae998ae>();
         var _loc5_:Vector.<_7f33f5a524ab43d51548730b> = param1._ba9a2af13f57da79a404ab67();
         for each(_loc3_ in _loc5_)
         {
            _loc4_ = new _3b397340357d8a491ae998ae(_loc3_);
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            addChild(_loc4_);
            this._705095b8dd9ca510e1461ece.push(_loc4_);
         }
      }
      
      public function _7aa00ab6e8c1c792ca866dec() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>(this._705095b8dd9ca510e1461ece);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
      }
      
      private function _b1c03609cb5aa8578f3d85e3(param1:Event) : void
      {
      }
      
      private function _8e4952eee6afe276dd153406(param1:Event) : void
      {
      }
   }
}

