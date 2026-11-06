package com.ax3.fishao.locations.entries
{
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.locations.chars._d557186cde1a474d8468f3b2;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class _43c06507a1ca0c884cf0046d
   {
      
      private var _d16502e31655bad47dd9230f:DisplayObjectContainer;
      
      private var _6c0407dcf1305c9cf0ad7832:_08c120b706560fce9302bcab;
      
      private var _189a6a445a175ef26cf2a898:_d557186cde1a474d8468f3b2;
      
      public function _43c06507a1ca0c884cf0046d(param1:_08c120b706560fce9302bcab)
      {
         super();
         this._6c0407dcf1305c9cf0ad7832 = param1;
         this._189a6a445a175ef26cf2a898 = this._6c0407dcf1305c9cf0ad7832.charViewport;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._189a6a445a175ef26cf2a898,Event.ADDED,this._ad0bf342a5a710e18a24a63e);
         this._ad0bf342a5a710e18a24a63e();
      }
      
      private function _ad0bf342a5a710e18a24a63e(param1:Event = null) : void
      {
         var _loc2_:int = -142217884 ^ -550314529 ^ -1303947827 ^ -1483533015;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3B9A306E ^ 0x459382B4 ^ -1720061346 ^ -636276518))
            {
               case 0:
                  this._480818b135db9f4c07cf0ba0 = this._189a6a445a175ef26cf2a898.parent;
                  _loc2_ = -2141037139 ^ 0x20140DAA ^ -152267083 ^ 0x6BF9B6EE;
                  break;
               case 1:
                  if(this._189a6a445a175ef26cf2a898.parent)
                  {
                     _loc2_ = -165476543 ^ 0x28AE178A ^ 0x63AAA04F ^ -2142977830;
                  }
                  else
                  {
                     _loc2_ = 0x4158FDCF ^ -1150062505 ^ -966732401 ^ 0x0128284B;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function set _480818b135db9f4c07cf0ba0(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = 0x58F19681 ^ -594822355 ^ -1880462453 ^ -328021882;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x660FA18D ^ 0x5D061C7C ^ 0x3647264A ^ -357821160))
            {
               case 0:
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.CLICK,this._bf86be27aadae5450826656e);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.ROLL_OVER,this._08c0865efa99c1de1b143231);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.ROLL_OUT,this._9edf6218e185a85277737a90);
                  _loc2_ = 0x6B7D652D ^ 0x1ED87997 ^ 0x57958B64 ^ -976086660;
                  break;
               case 1:
                  this._d16502e31655bad47dd9230f = param1;
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.CLICK,this._bf86be27aadae5450826656e);
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.ROLL_OVER,this._08c0865efa99c1de1b143231);
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.ROLL_OUT,this._9edf6218e185a85277737a90);
                  return;
               case 2:
                  if(this._d16502e31655bad47dd9230f)
                  {
                     _loc2_ = 0x0E131EC0 ^ 0x3D050DB7 ^ 0x678CE01F ^ -1283949109;
                  }
                  else
                  {
                     _loc2_ = -1835931697 ^ 0x7B777964 ^ 0x3B9BB073 ^ 0x359FA07A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _08c0865efa99c1de1b143231(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.BUTTON;
      }
      
      private function _9edf6218e185a85277737a90(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
      }
      
      private function _bf86be27aadae5450826656e(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         if(this._6c0407dcf1305c9cf0ad7832 != null)
         {
            _loc2_ = this._6c0407dcf1305c9cf0ad7832._1cc3d070e1f499bddccd0742();
         }
         if(_loc2_)
         {
            param1.stopImmediatePropagation();
         }
      }
      
      public function destroy() : void
      {
         this._6c0407dcf1305c9cf0ad7832 = null;
         this._d16502e31655bad47dd9230f = null;
         this._189a6a445a175ef26cf2a898 = null;
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.CLICK,this._bf86be27aadae5450826656e);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.ROLL_OVER,this._08c0865efa99c1de1b143231);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._d16502e31655bad47dd9230f,MouseEvent.ROLL_OUT,this._9edf6218e185a85277737a90);
         _02fbe4cbe9e83f1b8c711799._87b72cd49d8fc861c4443e4d(this);
      }
   }
}

