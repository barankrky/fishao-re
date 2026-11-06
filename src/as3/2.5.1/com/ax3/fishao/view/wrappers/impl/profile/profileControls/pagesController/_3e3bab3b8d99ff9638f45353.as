package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._acd96fcacdf8779b1cdbd5c3;
   import flash.events.Event;
   
   public class _3e3bab3b8d99ff9638f45353 extends _2a3778bd7cef0b0147cc5678
   {
      
      public static const EVENT_CHANGE_PAGE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘剥剚勮功剴剄剈剄务劂划劂剂剖剝勜勰刬勸勁劘剢勣勬刏刻劶务划剭剉剕劢劜刚剦剄刖力勎刺","労勥劓刪刷勂勵劥切刢剂剏剨刣刹助");
      
      private var _b5ea83b20d9a1ce84cfd80da:Number;
      
      public function _3e3bab3b8d99ff9638f45353(param1:_9d52e3cc8c94daeb6473a020, param2:_fbb51bd7a45e58ba8b6f74d2, param3:_acd96fcacdf8779b1cdbd5c3)
      {
         super(param1,param2,param3);
      }
      
      override protected function _b8f764cbe1c018a81cd904d4() : void
      {
      }
      
      override protected function _536a61dcd8eae98e78087e94(param1:Event) : void
      {
         var _loc2_:int = -1238184912 ^ 0x55804A00 ^ 0x3A38E960 ^ -1089358758;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2109292934 ^ -2089247077 ^ -1168768485 ^ -571213328))
            {
               case 0:
                  if(this._b5ea83b20d9a1ce84cfd80da != this.currentPage)
                  {
                     _loc2_ = 0x6910EB63 ^ -1859703977 ^ -964618777 ^ 0x582D0EDB;
                  }
                  else
                  {
                     _loc2_ = -1975497317 ^ 0x3B71E4EB ^ 0x2DEAB2A4 ^ -96419617;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  dispatchEvent(new Event(EVENT_CHANGE_PAGE));
                  _loc2_ = -618055894 ^ -358308998 ^ 0x42C8EA41 ^ 0x15DEA51A;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _4877aa8ae68d9d94c130193c(param1:Vector.<Object>, param2:Number, param3:Number) : void
      {
         elementsFactory.elements = param1;
         _elementsContainer.display(elementsFactory._0b7ab4d6da300a03653ea672(0x12D19F5E ^ 0x04BEDAD8 ^ -1850371897 ^ -2015701695,_elementsContainer.capacity));
         _pagesControl.totalPages = param3;
         this._b5ea83b20d9a1ce84cfd80da = param2;
         _pagesControl.currentPage = param2;
         _pagesControl._26c673637c7d6bcfe7a2eeee(autosize);
      }
      
      public function get currentPage() : Number
      {
         return _pagesControl.currentPage;
      }
   }
}

