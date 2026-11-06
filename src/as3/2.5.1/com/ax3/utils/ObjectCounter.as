package com.ax3.utils
{
   public class ObjectCounter
   {
      
      private var _objects:Vector.<Object> = new Vector.<Object>();
      
      private var _count:int = 0;
      
      public function ObjectCounter()
      {
         super();
      }
      
      public function add(param1:Object) : void
      {
         var _loc2_:int = -1298698014 ^ 0x3D04BAAF ^ 0x0A3E1DF0 ^ -1001302426;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-294567526 ^ -226513923 ^ 0x260DEBA1 ^ 0x7BFF801D))
            {
               case 0:
                  if(this._objects.indexOf(param1) == (0x5B644A93 ^ -388815905 ^ -1548315320 ^ -268565509))
                  {
                     _loc2_ = 0x322CD653 ^ -245711823 ^ 0x6E623C4E ^ -320284682;
                  }
                  else
                  {
                     _loc2_ = -413315335 ^ 0x37E75E6D ^ -744040539 ^ 0x42E046E8;
                  }
                  break;
               case 1:
                  this._objects.push(param1);
                  this._count = this._objects.length;
                  _loc2_ = -1013742863 ^ -808356691 ^ -1535697707 ^ -372675760;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function remove(param1:Object) : void
      {
         var _loc2_:int = -1589979524 ^ -1010326889 ^ 0x0BA2788B ^ -24276370;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1308807337 ^ 0x3E343B4E ^ -1291842884 ^ -1424260949))
            {
               case 0:
                  if(this._objects.indexOf(param1) != (-1093676071 ^ 0x65E71FBF ^ -981710548 ^ -508855627))
                  {
                     _loc2_ = -512572550 ^ -536892385 ^ 0x7B60701A ^ -767590032;
                  }
                  else
                  {
                     _loc2_ = 0x387C4F89 ^ -448049447 ^ -387526031 ^ -1576841939;
                  }
                  break;
               case 1:
                  this._objects.splice(this._objects.indexOf(param1),-841736851 ^ 0x418886C8 ^ -2005834348 ^ 0x042DFE30);
                  this._count = this._objects.length;
                  _loc2_ = 0x6EB82FD9 ^ 0x1EC92E1A ^ 0x76FB9D26 ^ -1856503063;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get count() : int
      {
         return this._count;
      }
   }
}

