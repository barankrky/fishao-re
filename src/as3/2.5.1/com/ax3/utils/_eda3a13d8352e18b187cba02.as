package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   
   public class _eda3a13d8352e18b187cba02
   {
      
      private var _21fc23ae3101ececeb458c0d:Number;
      
      private var _d120ca1e82ec8b9ffa0e37f0:int = 0;
      
      private var _356be75af2d52bb5f2170b7f:int;
      
      public function _eda3a13d8352e18b187cba02(param1:Number = 0, param2:int = 2147483647)
      {
         super();
         this._21fc23ae3101ececeb458c0d = param1;
         this._356be75af2d52bb5f2170b7f = param2;
      }
      
      public function push(param1:Number) : void
      {
         this._21fc23ae3101ececeb458c0d = (this._21fc23ae3101ececeb458c0d * this._d120ca1e82ec8b9ffa0e37f0 + param1) / (this._d120ca1e82ec8b9ffa0e37f0 + (0x3E59CCCE ^ 0x67058344 ^ 0x14CE3697 ^ 0x4D92791C));
         if(this._d120ca1e82ec8b9ffa0e37f0 < this._356be75af2d52bb5f2170b7f)
         {
            ++this._d120ca1e82ec8b9ffa0e37f0;
         }
      }
      
      public function get value() : Number
      {
         return this._21fc23ae3101ececeb458c0d;
      }
      
      public function get count() : int
      {
         return this._d120ca1e82ec8b9ffa0e37f0;
      }
      
      public function set count(param1:int) : void
      {
         var _loc2_:int = 0x3DCB0253 ^ 0x0EC4372F ^ 0x30844654 ^ -1032497255;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1925F98C ^ 0x1330E110 ^ -1751177222 ^ 0x5C741BD6))
            {
               case 0:
                  this._d120ca1e82ec8b9ffa0e37f0 = param1;
                  return;
               case 1:
                  if(this._d120ca1e82ec8b9ffa0e37f0 == param1)
                  {
                     _loc2_ = 0x1659094A ^ -843618771 ^ 0x3D71C89B ^ 0x2761834E;
                  }
                  else
                  {
                     _loc2_ = -1699703344 ^ 0x278F6CAF ^ -865427514 ^ -1330953719;
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
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挛捨捌捛振揖揼捍揮捥揟探挲捆捐捊掅捞","挎捰捐挽捖揠揂挈捨掳揋捆挐捫挾挅") + int(this._21fc23ae3101ececeb458c0d) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勝剌前勞勌剢剝刧勧劤","刏勠刭剞勼募勓刣勵切勥剄刭剓劳劁") + this._d120ca1e82ec8b9ffa0e37f0 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掰捐挅揃挭採捶揌採掫捪挬","捃插掎換掙揊揾捚揫按捡挓捽揠捋揬");
      }
   }
}

