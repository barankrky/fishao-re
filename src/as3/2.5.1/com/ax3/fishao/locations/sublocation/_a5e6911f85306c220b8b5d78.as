package com.ax3.fishao.locations.sublocation
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   
   public class _a5e6911f85306c220b8b5d78
   {
      
      public var id:int;
      
      private var _9eb12f02a71e7d33ccf5abad:BitmapData;
      
      private var _32c2b00def06f8a2ec6e31a0:int;
      
      private var _35c54ef4bb101c6e7fccc470:int;
      
      private var _be62e50ffc148ca8fda21a7c:Boolean;
      
      public function _a5e6911f85306c220b8b5d78()
      {
         super();
      }
      
      public static function _0f3dc57f03793beb3b7ce5aa(param1:String) : int
      {
         var _loc2_:String = null;
         var _loc3_:int = -1980647330 ^ 0x38E614BF ^ 0x6710CC30 ^ 0x29F89F2E;
         var _loc4_:Array = param1.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掇揱掾揩挎掟挰揎挔挡","掾掤挅掰掵掞授掷挤捊揫掝挀挮揙捼"));
         if(_loc4_.length > (0x615F5B14 ^ -694504033 ^ -943786110 ^ 0x707B1909))
         {
            _loc2_ = _loc4_[_loc4_.length - 1];
            if(_loc2_ == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揅挼捖措掷捒揠捶掝掞揾揱揯揅挃掱","捠挰捷捯探挈掵挣揖捈掀挜掩掦掏掽"))
            {
               _loc3_ = -1077765614 ^ 0x399F63A6 ^ -1704690283 ^ -473531426;
            }
            else
            {
               _loc3_ = parseInt(_loc2_);
            }
         }
         return _loc3_;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this._be62e50ffc148ca8fda21a7c = param1;
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = -965933867 ^ -1202781880 ^ -1344614 ^ 0x4F3D28C9;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x02BCFA6B ^ 0x6D6315EA ^ 0x3C8CD2BE ^ -1649972237))
            {
               case 0:
                  return;
               case 1:
                  param1.parent.removeChild(param1);
                  _loc2_ = -448586582 ^ -606033007 ^ -1586669982 ^ 0x513AB795;
                  break;
               case 2:
                  this.id = _0f3dc57f03793beb3b7ce5aa(param1.name);
                  this._9eb12f02a71e7d33ccf5abad = _5f5fc3a6dc1e8f79994a4a9b.clone(param1);
                  this._32c2b00def06f8a2ec6e31a0 = param1.x;
                  this._35c54ef4bb101c6e7fccc470 = param1.y;
                  this._be62e50ffc148ca8fda21a7c = true;
                  if(param1.parent != null)
                  {
                     _loc2_ = 0x39B3CA37 ^ -960856495 ^ 0x0E31BF51 ^ 0x3FCC5DFA;
                  }
                  else
                  {
                     _loc2_ = -767076264 ^ -1231653856 ^ 0x6B756841 ^ -1051716875;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function hitTestPoint(param1:Number, param2:Number) : Boolean
      {
         return this._9eb12f02a71e7d33ccf5abad == null || !this._be62e50ffc148ca8fda21a7c ? false : this._9eb12f02a71e7d33ccf5abad.getPixel32(param1 - this._32c2b00def06f8a2ec6e31a0,param2 - this._35c54ef4bb101c6e7fccc470) > (0x71BDCB6B ^ 0x7554DD7F ^ -768324085 ^ -702371872);
      }
      
      public function destroy() : void
      {
         this._9eb12f02a71e7d33ccf5abad.dispose();
         this._9eb12f02a71e7d33ccf5abad = null;
      }
   }
}

