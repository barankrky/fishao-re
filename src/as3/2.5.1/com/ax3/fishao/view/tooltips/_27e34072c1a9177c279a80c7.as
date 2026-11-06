package com.ax3.fishao.view.tooltips
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model.interfaces._2cf2c36ec9c55df2249a4e27;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   
   public class _27e34072c1a9177c279a80c7 extends _87228d4316275bac12adb2cd implements _2cf2c36ec9c55df2249a4e27
   {
      
      public function _27e34072c1a9177c279a80c7()
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
         _title.cacheAsBitmap = true;
         _reasone.cacheAsBitmap = true;
         _asset.cacheAsBitmap = true;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:int = 0x3DC97185 ^ 0x650138E4 ^ 0x3BCF7B13 ^ 0x5D9A322F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1380275030 ^ 0x3DB0ABCF ^ 0x0616052D ^ -1467940329))
            {
               case 0:
                  return;
               case 1:
                  _reasone.width = _title.width;
                  _reasone.x = -_reasone.width * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揺掉掳挦掝揱捃捪挢捾挻揧掯掰揰揧挴掙揗掰挟揺揬掚","捝挏挷挧揂掑捝挌挌捶揾按捄挦掷捠");
                  _reasoneBg.width = _reasone.width + (0x2C76F45E ^ -2013939293 ^ 0x71CA57ED ^ -632743420);
                  _reasoneBg.x = -_reasoneBg.width * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჱხခႈႣၠဒး჏ဝდႷ჊ၻဍჃမჷბဳးႠჸၞ","ႌქၟ၇ႂႂႫ၄ၸနၓპဆၪၟြ");
                  _loc2_ = 0x6932E29D ^ 0x21181283 ^ 0x4D9633FA ^ 0x3B21C3BB;
                  break;
               case 2:
                  _title.text = param1.toUpperCase();
                  if(_reasone.width < _title.width)
                  {
                     _loc2_ = 0x31BA63D5 ^ -780557272 ^ 0x369D6C60 ^ -389829693;
                  }
                  else
                  {
                     _loc2_ = -325804133 ^ 0x1B12B6C9 ^ 0x4F49049F ^ -2041434734;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set description(param1:String) : void
      {
         _reasone.text = param1;
         _reasone.height = _reasone.textHeight + (-836190428 ^ 0x0966AEE0 ^ 0x2D7B9C75 ^ -365589061);
         _reasoneBg.height = _reasone.height + (-822056306 ^ 0x02924020 ^ 0x4D621375 ^ -2131740209);
      }
      
      public function get buttonBuy() : ConfirmFrameButtonWrapper
      {
         return _buttonBuy;
      }
   }
}

