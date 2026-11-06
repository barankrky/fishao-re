package com.ax3.net
{
   import com.ax3.events._bcc9d420700df45988ac88c2;
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   import flash.utils.Dictionary;
   
   public class _63e4212395d78ab7048a8301 extends _1e4a460db40ffbe5f8da94dc
   {
      
      private var _eaa54c5027b5c3be14934170:Dictionary = new Dictionary();
      
      public function _63e4212395d78ab7048a8301()
      {
         super();
         addEventListener(_bcc9d420700df45988ac88c2.BITMAP_LOADED_FROM_URL,this._1df95b25d2385848725924d7);
      }
      
      private function _1df95b25d2385848725924d7(param1:_bcc9d420700df45988ac88c2) : void
      {
         var _loc2_:_0ce7a4d99e17666ff0e19ce6 = null;
         if(this._eaa54c5027b5c3be14934170[param1.param] != null)
         {
            for each(_loc2_ in this._eaa54c5027b5c3be14934170[param1.param] as Array)
            {
               _loc2_.call(this);
            }
            this._eaa54c5027b5c3be14934170[param1.param] = null;
            delete this._eaa54c5027b5c3be14934170[param1.param];
         }
      }
      
      public function _9e29dc7dbad77786ef84201a(param1:Function, param2:String, param3:*) : void
      {
         var _loc4_:int = 0x60C248A4 ^ 0x78015A67 ^ -1447166624 ^ -1813948313;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x70E2091E ^ 0x5D3E5024 ^ -1652522359 ^ -1832686478))
            {
               case 0:
                  this._eaa54c5027b5c3be14934170[param2] = [];
                  _loc4_ = -360807791 ^ -411536050 ^ 0x7FA28105 ^ 0x503BC118;
                  break;
               case 1:
                  if(this._eaa54c5027b5c3be14934170[param2] == null)
                  {
                     _loc4_ = 0x48888798 ^ 0x2C355ABE ^ 0x3D41B2E0 ^ 0x7B63D807;
                  }
                  else
                  {
                     _loc4_ = 0x511E2C09 ^ -951484891 ^ -2105041765 ^ 0x364F7975;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  if((this._eaa54c5027b5c3be14934170[param2] as Array).indexOf(param1) == (-1650133265 ^ -1578411022 ^ 0x155D89D2 ^ -689054928))
                  {
                     _loc4_ = 0x1F6B7B6C ^ -1843500460 ^ -606885418 ^ 0x74390F29;
                  }
                  else
                  {
                     _loc4_ = -284091942 ^ 0x5CFB85A1 ^ 0x72BC0F4B ^ -473357069;
                  }
                  break;
               case 4:
                  param1(param2,param3);
                  _loc4_ = 0x6104130E ^ -1486197053 ^ 0x055FF7ED ^ -508674589;
                  break;
               case 5:
                  if(_0f101b3e7ff226b9a0880c82(param2))
                  {
                     _loc4_ = -1604385485 ^ 0x1AD54710 ^ -737719268 ^ 0x4C12B9FA;
                  }
                  else
                  {
                     _loc4_ = 0x7197D57D ^ -1904271366 ^ 0x3C7FA3A7 ^ -519512352;
                  }
                  break;
               case 6:
                  (this._eaa54c5027b5c3be14934170[param2] as Array).push(new _0ce7a4d99e17666ff0e19ce6(param1,param2,param3));
                  _08c18c947d384aa7d43d7964(param2);
                  _loc4_ = 0x777C8B1E ^ -794535846 ^ -1278042119 ^ 0x3695FB7E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

