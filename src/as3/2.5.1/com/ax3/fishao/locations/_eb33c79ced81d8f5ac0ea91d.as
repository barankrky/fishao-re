package com.ax3.fishao.locations
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.sound._5f81675c98bd9838649ed3bd;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   import flash.geom.Point;
   
   public class _eb33c79ced81d8f5ac0ea91d
   {
      
      protected var _soundFile:_c5aa52fca149ae6f0be6dc5b;
      
      protected var _position:Point;
      
      protected var _distance:int;
      
      protected var _lastPlayerPosition:Point;
      
      protected var _sound:_5f81675c98bd9838649ed3bd;
      
      public function _eb33c79ced81d8f5ac0ea91d(param1:_c5aa52fca149ae6f0be6dc5b, param2:Point, param3:int)
      {
         super();
         this._soundFile = param1;
         this._position = param2;
         this._distance = param3;
         this.reset();
      }
      
      public function reset() : void
      {
         this._lastPlayerPosition = new Point(int.MAX_VALUE,int.MAX_VALUE);
         this._sound = null;
      }
      
      public function stop() : void
      {
         var _loc1_:int = 0x19325CC3 ^ -836678356 ^ -726272420 ^ 0x3CFE8240;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-448244471 ^ -1777872021 ^ -367992451 ^ -1509489940))
            {
               case 0:
                  if(this._sound != null)
                  {
                     _loc1_ = -634786598 ^ -320207124 ^ -1226786305 ^ -1082444232;
                  }
                  else
                  {
                     _loc1_ = -1248585665 ^ -742261510 ^ 0x300C17BF ^ 0x69019688;
                  }
                  break;
               case 1:
                  this._lastPlayerPosition.x = int.MIN_VALUE;
                  this._lastPlayerPosition.y = int.MIN_VALUE;
                  return;
               case 2:
                  this._sound.stop();
                  _loc1_ = -2068501737 ^ 0x202D73C4 ^ 0x7AE68EBD ^ -517557348;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _cef954975145aca3fbaac5c0(param1:Point, param2:Boolean = false) : void
      {
         var _loc3_:int = -421157644 ^ -1523076536 ^ -348748582 ^ -1461415322;
         if(param2 || (int(this._lastPlayerPosition.x / (0x5F96394B ^ -350881472 ^ 0x4CAA493A ^ -131495621)) != int(param1.x / (0x76B1F701 ^ -202345942 ^ -1169017473 ^ 0x3F13B05E)) || int(this._lastPlayerPosition.y / (-819201316 ^ 0x17D7971A ^ 0x35E72F02 ^ -316980530)) != int(param1.y / (0x477FC6C7 ^ 0x7DB6C45C ^ -611289725 ^ -514230510))))
         {
            this._lastPlayerPosition.x = param1.x;
            this._lastPlayerPosition.y = param1.y;
            _loc3_ = Point.distance(this._position,this._lastPlayerPosition);
            if(_loc3_ > this._distance)
            {
               if(this._sound != null)
               {
                  this._sound.stop();
                  _3a8a2602dcf9bf49b62e62af._ba89be6a356850f04a6c2e06(this._soundFile);
                  this._sound = null;
               }
            }
            else
            {
               if(this._sound == null)
               {
                  this._fc9679c12bd140b58567f830();
               }
               if(this._sound != null)
               {
                  this._sound.globalVolume = _3a8a2602dcf9bf49b62e62af._5f641a6684a8d54b7a77b160(this._soundFile.group) * int(_3a8a2602dcf9bf49b62e62af.isEnabled(this._soundFile.group));
                  this._sound.distanceVolume = (-1336090492 ^ -1049066151 ^ 0x6AD14178 ^ 0x1BF524A4) - limit(_loc3_ / this._distance,0x41662989 ^ 0x1A9ECA71 ^ -52451567 ^ -1490598679,-1108427860 ^ -374412010 ^ -1377838171 ^ -106984162);
               }
            }
         }
      }
      
      protected function _fc9679c12bd140b58567f830() : void
      {
         this._sound = _3a8a2602dcf9bf49b62e62af._8752baf0db9485e4cad4f4b4(this._soundFile);
      }
   }
}

