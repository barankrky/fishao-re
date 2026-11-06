package com.ax3.controllers
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _eb0e148a3a8bfcd6c2ee6715 extends Sprite
   {
      
      private static var _a949d77da4313d3d7d138e7e:_eb0e148a3a8bfcd6c2ee6715;
      
      private static var _f0a0357965a5fbb8271b079c:Array = new Array();
      
      public static const FRAME_WIDTH:int = 0x0FD14B80 ^ 0x7BD2B45E ^ 0x4399B4BB ^ 0x379A4B6A;
      
      public static const FRAME_HEIGHT:int = -22717059 ^ 0x17F0F019 ^ 0x43BC6BB5 ^ -1427519778;
      
      private static const _be9417ad12689380cc6a9139:int = 0x224E6B60 ^ -297406133 ^ -2062317463 ^ 0x49181251;
      
      private var _ec025fc1e2065807a0be271c:BitmapData = null;
      
      private var _ba1415894fff2831e0b2156f:BitmapData;
      
      private var _f1393a903f2e826bf3b5a7b5:uint = 0;
      
      public function _eb0e148a3a8bfcd6c2ee6715()
      {
         super();
         this._ba1415894fff2831e0b2156f = new BitmapData(FRAME_WIDTH,FRAME_HEIGHT,true,-373598667 ^ 0x332571DF ^ 0x46AD07BD ^ -1674370904);
      }
      
      public static function getInstance() : _eb0e148a3a8bfcd6c2ee6715
      {
         var _loc1_:int = 0x7F111A64 ^ -73277309 ^ -236159240 ^ 0x2323D99D;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2119931864 ^ 0x1C52F6 ^ 0x6EDFCC3D ^ -1189565597))
            {
               case 0:
                  _a949d77da4313d3d7d138e7e = new _eb0e148a3a8bfcd6c2ee6715();
                  _loc1_ = 0x0CAAEAAA ^ 0x0173A133 ^ 0x0E304E18 ^ 0x55965800;
                  break;
               case 1:
                  return _a949d77da4313d3d7d138e7e;
               case 2:
                  if(_a949d77da4313d3d7d138e7e == null)
                  {
                     _loc1_ = -1369929085 ^ 0x6A287B31 ^ 0x2F1A50E0 ^ -1122632494;
                  }
                  else
                  {
                     _loc1_ = -610264596 ^ 0x5378A3DC ^ -2072294938 ^ 0x5ADCAE57;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ff94bca06b748c75db2a8501(param1:Event) : void
      {
         this._82a696edfd066ed03d182af1();
      }
      
      public function config(param1:BitmapData) : void
      {
         this._ec025fc1e2065807a0be271c = param1;
      }
      
      protected function _82a696edfd066ed03d182af1() : void
      {
         var _loc1_:Bitmap = null;
         if(this._ec025fc1e2065807a0be271c != null)
         {
            var _temp_5:* = this._ba1415894fff2831e0b2156f;
            var _temp_4:* = this._ec025fc1e2065807a0be271c;
            var _temp_3:* = new Rectangle(this._f1393a903f2e826bf3b5a7b5 * FRAME_WIDTH,0x239AD831 ^ -1380172650 ^ 0x073F56D5 ^ -1994804622,FRAME_WIDTH,FRAME_HEIGHT);
            var _temp_2:* = §§findproperty(Point);
            var _temp_1:* = 0x4408480C ^ -1131014415 ^ -422934601 ^ 0x1E54D94A;
            _temp_5.copyPixels(_temp_4,_temp_3,new Point(_temp_1,_temp_1));
            for each(_loc1_ in _f0a0357965a5fbb8271b079c)
            {
               var _temp_9:* = _loc1_.bitmapData;
               var _temp_8:* = this._ba1415894fff2831e0b2156f;
               var _temp_7:* = §§findproperty(Rectangle);
               var _temp_6:* = 0x0F063CF0 ^ -1216227951 ^ 0x7D77B6F0 ^ -974102639;
               _temp_9.copyPixels(_temp_8,new Rectangle(_temp_6,_temp_6,FRAME_WIDTH,FRAME_HEIGHT),new Point(_loc1_.bitmapData.width / (-311814837 ^ -508817018 ^ 0x4C7987AF ^ 0x40BF8360) - FRAME_WIDTH / (-621551339 ^ -272751400 ^ -180195397 ^ -1072715148),_loc1_.height / (0x35EF92C0 ^ 0x748D8745 ^ -1030098828 ^ -2080643597) - FRAME_HEIGHT / (0x727E99BC ^ 0x268255C0 ^ 0x107AD2C2 ^ 0x44861EBC)));
            }
            if(this._f1393a903f2e826bf3b5a7b5 >= _be9417ad12689380cc6a9139 - 1)
            {
               this._f1393a903f2e826bf3b5a7b5 = 0x7AADC4B8 ^ -1232044556 ^ 0x1172785E ^ -581975790;
            }
            else
            {
               ++this._f1393a903f2e826bf3b5a7b5;
            }
         }
      }
      
      public function _bbb9c86a7500c20660a2dced(param1:Bitmap) : void
      {
         if(hasEventListener(Event.ENTER_FRAME) == false && this._ec025fc1e2065807a0be271c != null)
         {
            addEventListener(Event.ENTER_FRAME,this._ff94bca06b748c75db2a8501);
         }
         if(_f0a0357965a5fbb8271b079c.indexOf(param1) == (-1514226983 ^ -285708995 ^ -129836249 ^ 0x4CFBF33C))
         {
            _f0a0357965a5fbb8271b079c.push(param1);
         }
      }
      
      public function _bae5ee049665aeb96aca776a(param1:Bitmap) : void
      {
         var _loc2_:int = -981720818 ^ 0x5952BFD7 ^ -1587083597 ^ 0x7B86D07D;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-61455340 ^ -1193396503 ^ -1689180895 ^ -1726603319))
            {
               case 0:
                  removeEventListener(Event.ENTER_FRAME,this._ff94bca06b748c75db2a8501);
                  _loc2_ = -40437896 ^ -1988159914 ^ 0x12B66E71 ^ 0x2090C749;
                  break;
               case 1:
                  _f0a0357965a5fbb8271b079c.splice(_f0a0357965a5fbb8271b079c.indexOf(param1),0x77728E17 ^ 0x76E332B9 ^ 0x15CF6B65 ^ 0x145ED7CA);
                  _loc2_ = 0x2F18F90B ^ -1520094386 ^ 0x582EE070 ^ -1801690588;
                  break;
               case 2:
                  if(_f0a0357965a5fbb8271b079c.indexOf(param1) != (0x71157F05 ^ -913977816 ^ -1082882777 ^ -132396043))
                  {
                     _loc2_ = 0x7841BF79 ^ 0x42C5DE79 ^ 0x5D656DBA ^ 0x212E44AE;
                  }
                  else
                  {
                     _loc2_ = -326498886 ^ -436121339 ^ 0x6F24A03A ^ 0x2360BC94;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  if(_f0a0357965a5fbb8271b079c.length == (-1789713063 ^ 0x594DD7F8 ^ -1229242158 ^ 0x7AA5B273))
                  {
                     _loc2_ = 0x280572 ^ -1725975427 ^ 0x278A87DE ^ -126714172;
                  }
                  else
                  {
                     _loc2_ = -46124686 ^ 0x7D59EF4C ^ 0x6E8603D4 ^ -1471113732;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

