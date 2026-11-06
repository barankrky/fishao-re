package com.ax3.fishao.view.dialogs.club.helpers.base
{
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class _2f6c6d10b633b0793782cff7
   {
      
      protected var _managerClubs:_518280cac6f3ae016ad4f350;
      
      protected var _onComplete:Function;
      
      public function _2f6c6d10b633b0793782cff7()
      {
         super();
         this._managerClubs = GameSwf.instance.managerClubs;
      }
      
      protected function onComplete() : void
      {
         var _loc1_:int = 0x1EBE7474 ^ -331556827 ^ 0x676F453F ^ -536620233;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x60457528 ^ 0x36101C01 ^ 0x56D005AD ^ 0x756B56DF))
            {
               case 0:
                  return;
               case 1:
                  this._onComplete();
                  _loc1_ = 0x3FB853CC ^ 0x6DED41FE ^ -1523243383 ^ -2104619296;
                  break;
               case 2:
                  if(this._onComplete != null)
                  {
                     _loc1_ = -1656499446 ^ -1135013955 ^ -2010533091 ^ -589474320;
                  }
                  else
                  {
                     _loc1_ = -629814381 ^ -418588968 ^ -810925647 ^ -2026019167;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _384d7874fb93e69ef9f82fda(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         _fa8d5efc34d8920757369351._ecb681b2bff0915b270b914b(param1);
      }
      
      public function _5b0b922e5cc4a5322f6ea1d2(param1:Function = null) : void
      {
         this._onComplete = param1;
      }
   }
}

