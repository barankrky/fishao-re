package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.locations.chars.commands._3ba073024ca466d13112f68e;
   import com.ax3.fishao.locations.chars.commands._76938cad36557880bc855380;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   
   public class _7bb8d3d114b19d346fd9eff2 implements _3ba073024ca466d13112f68e
   {
      
      private var char:_08c120b706560fce9302bcab;
      
      public function _7bb8d3d114b19d346fd9eff2(param1:_08c120b706560fce9302bcab)
      {
         super();
         this.char = param1;
      }
      
      public function execute() : void
      {
         var _loc1_:int = 0x22BCD69C ^ 0x1793FD01 ^ -982255430 ^ 0x7404697E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-578331202 ^ -678962780 ^ 0x19553D2A ^ -1760754837))
            {
               case 0:
                  this.char.onRaft = false;
                  _loc1_ = 0x468FC69B ^ 0x1FB4369E ^ 0x44E65DE0 ^ -1719330881;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.char != null)
                  {
                     _loc1_ = -891207058 ^ 0x2A145F35 ^ 0x703EFAB2 ^ 0x14935DB2;
                  }
                  else
                  {
                     _loc1_ = 0x74CF9DCF ^ -1943175461 ^ 0x483BE924 ^ 0x3481B06A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ce2e77815ef99a99d836c418(param1:_3ba073024ca466d13112f68e) : Boolean
      {
         return param1 is _76938cad36557880bc855380;
      }
      
      public function isComplete() : Boolean
      {
         return true;
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掬捩揩掝挊揃接捎挛挱捳指捈挪掞掄挵掑挰捋掇掟揗採揝挌挔捙掟挲捳挬換捫掶掟捈掛掊接掟捄揻揃损揺措捖掸挄","捹控揼揧捩掣挙挰指掹挊掆掙捌捀掤");
      }
      
      public function destroy() : void
      {
         this.char = null;
      }
   }
}

