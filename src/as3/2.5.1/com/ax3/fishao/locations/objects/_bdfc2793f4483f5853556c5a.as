package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _bdfc2793f4483f5853556c5a
   {
      
      protected var _source:DisplayObjectContainer;
      
      protected var _obstacleMap:BitmapData;
      
      protected var _obstacleMapBounds:Rectangle;
      
      protected var _obstacleMapOffset:Point;
      
      protected var _isEnabled:Boolean;
      
      protected var _objectsWithFixedVisibility:Array;
      
      protected var _objectsWithInvertedVisibility:Array;
      
      public function _bdfc2793f4483f5853556c5a(param1:DisplayObjectContainer)
      {
         super();
         this._source = param1;
         this.init();
      }
      
      public function get source() : DisplayObjectContainer
      {
         return this._source;
      }
      
      public function get isEnabled() : Boolean
      {
         return this._isEnabled;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0x7382F2B7 ^ 0x53790330 ^ -444314285 ^ -456633080;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1904511346 ^ -1662554365 ^ 0xDD8705 ^ 0x33F67754))
            {
               case 0:
                  if(this._isEnabled == param1)
                  {
                     _loc2_ = -1895480487 ^ 0x22AA0466 ^ -1919544119 ^ 0x018EBA28;
                  }
                  else
                  {
                     _loc2_ = 0x39F6F802 ^ -602280914 ^ -372333003 ^ 0x2D965BC4;
                  }
                  break;
               case 1:
                  this._isEnabled = param1;
                  this.itemsVisibility = param1;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set itemsVisibility(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in this._objectsWithFixedVisibility)
         {
            _loc2_.visible = param1;
         }
         for each(_loc3_ in this._objectsWithInvertedVisibility)
         {
            _loc3_.visible = !param1;
         }
      }
      
      protected function set itemsVisibilityAnimated(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         _loc2_ = null;
         var _loc3_:Object = {
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捙挴挢捶揰掁接提捕揝揩捂持掃掎挚振掆","挨援挝揍挈揍捔描挤捒捦挿掷採揜挵")):(param1 ? -508420280 ^ 0x12EC0B88 ^ -577203829 ^ 0x2EC6854A : 0x6371D57B ^ 0x3969723A ^ -1506678753 ^ -64401570),
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捚掺掤接捋掐捩捔捐揀揠揚提挛插振揇损据揎挡挘挎指捧挮揄揥","捹援掁捞掰捉挙掯掔掻捯掶捂损持揻")):this._2aed4d3c26f933a83ff99a84
         };
         for each(_loc2_ in this._objectsWithFixedVisibility)
         {
            _loc2_.visible = true;
            _loc2_.alpha = param1 ? -651584316 ^ 0x3C61A8FB ^ -1744872039 ^ 0x72B769A6 : -1555278861 ^ 0x0A0FC6FF ^ -481383930 ^ 0x4A0D3F0B;
            TweenLite.to(_loc2_,-593866881 ^ 0x5BFCF467 ^ -65664938 ^ 0x7B70B34C,_loc3_);
         }
      }
      
      private function _2aed4d3c26f933a83ff99a84() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._objectsWithFixedVisibility)
         {
            _loc1_.alpha = -972966785 ^ -895137515 ^ 0x4DB0ADD9 ^ 0x411450B2;
            _loc1_.visible = this._isEnabled;
         }
      }
      
      private function init() : void
      {
         this._objectsWithFixedVisibility = [];
         this._objectsWithInvertedVisibility = [];
      }
      
      public function hide() : void
      {
         this.itemsVisibility = false;
      }
      
      protected function _840f698fa649fbd34cd266dc() : void
      {
         var _loc1_:DisplayObject = Debug.assertProperty(this._source,_77ca96a94affdf1e9d31698c.EDOT_SYSTEM_OBSTACLE_SITUATIONAL);
         this._obstacleMap = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc1_);
         this._obstacleMapBounds = _loc1_.getBounds(_loc1_);
         this._obstacleMapOffset = new Point(_loc1_.x,_loc1_.y);
         _loc1_.visible = false;
      }
      
      public function hitTest(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Boolean = false;
         param1 = param1 - this._source.x - this._obstacleMapOffset.x - this._obstacleMapBounds.x;
         param2 = param2 - this._source.y - this._obstacleMapOffset.y - this._obstacleMapBounds.y;
         return this._isEnabled == param3 && this._obstacleMap != null && param1 > (-566892151 ^ -1781369065 ^ 0x63F47AE2 ^ 0x2813E47C) && param2 > (0x12F6D174 ^ 0x101B258B ^ -2072042289 ^ -2037198800) && param1 < this._obstacleMap.width && param2 < this._obstacleMap.height && this._obstacleMap.getPixel32(param1,param2) > (0x45EB24A3 ^ -2044463259 ^ -1178411480 ^ 0x7AF5F211);
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._objectsWithFixedVisibility = null;
         this._objectsWithInvertedVisibility = null;
         this._obstacleMap.dispose();
      }
   }
}

