package com.ax3.fishao.locations.weather
{
   import assets.common.Drop;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   
   public class _5826b2b2482ca435e15296b9 extends Bitmap
   {
      
      private static var _56cd10d0d61fca5120b7b32b:Vector.<BitmapData>;
      
      public var endY:Number;
      
      private var _aa135eb92b191fb0905c7158:int;
      
      public function _5826b2b2482ca435e15296b9()
      {
         super();
         if(_56cd10d0d61fca5120b7b32b == null)
         {
            this._eb6399252fb3f06949b06161(new Drop());
         }
         this.gotoAndStop(0x497857BF ^ 0x2866CCE2 ^ -744526008 ^ -1300106220);
      }
      
      private function _eb6399252fb3f06949b06161(param1:MovieClip) : void
      {
         var _loc2_:BitmapData = null;
         _56cd10d0d61fca5120b7b32b = new Vector.<BitmapData>();
         var _loc3_:int = param1.totalFrames;
         var _loc4_:int = -1057783080 ^ -2048541660 ^ 0x67F59A4B ^ 0x22E3A4B7;
         while(_loc4_ < _loc3_)
         {
            param1.gotoAndStop(_loc4_ + (-2040186387 ^ -279758740 ^ 0x6A81545B ^ 0x03B755DB));
            _loc2_ = new BitmapData(param1.width,param1.height,true,-2140618290 ^ -541511706 ^ 0x408A554D ^ 0x1F5BBB65);
            _loc2_.draw(param1);
            _56cd10d0d61fca5120b7b32b.push(_loc2_);
            _loc4_++;
         }
      }
      
      public function gotoAndStop(param1:int) : void
      {
         if(param1 >= (-39922178 ^ -1603601428 ^ 0x19CCEB91 ^ 0x4438C582) && param1 <= _56cd10d0d61fca5120b7b32b.length && param1 != this._aa135eb92b191fb0905c7158)
         {
            this._aa135eb92b191fb0905c7158 = param1;
            bitmapData = _56cd10d0d61fca5120b7b32b[param1 - 1];
         }
      }
      
      public function get currentFrame() : int
      {
         return this._aa135eb92b191fb0905c7158;
      }
      
      public function get totalFrames() : int
      {
         return _56cd10d0d61fca5120b7b32b.length;
      }
   }
}

