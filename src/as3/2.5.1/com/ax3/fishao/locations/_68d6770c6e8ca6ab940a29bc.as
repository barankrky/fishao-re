package com.ax3.fishao.locations
{
   import flash.display.MovieClip;
   
   public class _68d6770c6e8ca6ab940a29bc extends _10aec915df137be255fad9fc
   {
      
      public function _68d6770c6e8ca6ab940a29bc(param1:MovieClip)
      {
         super(param1);
      }
      
      override protected function _939d8a98f1de844f57fcdb49() : _de2a275c74ad73d373d2a7a8
      {
         return new _7f33f5a524ab43d51548730b();
      }
      
      public function _ba9a2af13f57da79a404ab67() : Vector.<_7f33f5a524ab43d51548730b>
      {
         var _loc1_:_de2a275c74ad73d373d2a7a8 = null;
         var _loc2_:Vector.<_7f33f5a524ab43d51548730b> = new Vector.<_7f33f5a524ab43d51548730b>();
         for each(_loc1_ in _grid)
         {
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
   }
}

