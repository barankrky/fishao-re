package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _cadb36e9d7306d009284e6e4 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static const _79af0f81bc927ea30b940151:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("რ჎Ⴡယჺ჎Ⴉၧხ჏အჯჰဉႿၜႋႾ","ၤၳწႻၢၘလ၆႒ေႴၤ჉ါညစ");
      
      private static const _8cc38574e5c1b53ae88bcb6f:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱挧捏揇揹捈挜挶捺捣揚揝掁揸揮捨揣挠换掎捔挌掀捓","挍掜捜捺揝揽捒揺揸挀挄挴捆捸揧挅");
      
      private var _a01d81eac379e6c2ea653462:DisplayObjectContainer;
      
      private var _54228a810f7843e68cebb673:MovieClip;
      
      private var _cdd20974e1de6da42db6bc89:TextField;
      
      private var _2bc3ef3e373c35e4548145e6:Boolean;
      
      public function _cadb36e9d7306d009284e6e4(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._a01d81eac379e6c2ea653462 = param2;
         super(param1,this._a01d81eac379e6c2ea653462);
         this.init();
      }
      
      public function set isReady(param1:Boolean) : void
      {
         this._2bc3ef3e373c35e4548145e6 = param1;
         this._1f2a5b4c98e2718687b953bd();
      }
      
      public function set label(param1:String) : void
      {
         this._cdd20974e1de6da42db6bc89.text = param1;
      }
      
      private function init() : void
      {
         this._54228a810f7843e68cebb673 = Debug.assertProperty(this._a01d81eac379e6c2ea653462,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捐捻捥捳授掎揼挗换掛捳挶挿捾揾掁持挨揥授掠挦揸揲","挐挨掑捅捵捸掾掞揰掳捻持掝掙挞挫"),MovieClip);
         this._cdd20974e1de6da42db6bc89 = Debug.assertProperty(this._a01d81eac379e6c2ea653462,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剷勄刜切剦勸勊劘刼勠劾剼助刽剌勥務办","勾劃剆剱刋剼勍剓剡剉动勓勼劊劝勳"),TextField);
      }
      
      private function _1f2a5b4c98e2718687b953bd() : void
      {
         var _loc1_:int = 0x1884807A ^ 0x65BEBB2F ^ 0x11DC39A6 ^ 0x6B52B92A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-365360494 ^ 0x73F38462 ^ -506287516 ^ 0x7FAC9F4C))
            {
               case 0:
                  this._54228a810f7843e68cebb673.gotoAndStop(_8cc38574e5c1b53ae88bcb6f);
                  _loc1_ = 0x4C62DDB9 ^ 0x1EA21198 ^ 0x54426F2A ^ 0x013618D0;
                  break;
               case 1:
                  this._cdd20974e1de6da42db6bc89.visible = true;
                  this._54228a810f7843e68cebb673.visible = true;
                  if(this._2bc3ef3e373c35e4548145e6)
                  {
                     _loc1_ = -352856770 ^ 0x409D0B86 ^ -1952926932 ^ 0x2646D64E;
                  }
                  else
                  {
                     _loc1_ = -1798943690 ^ -161552051 ^ 0x26B6BE7E ^ 0x439AA0DD;
                  }
                  break;
               case 2:
                  this._54228a810f7843e68cebb673.gotoAndStop(_79af0f81bc927ea30b940151);
                  _loc1_ = -925619692 ^ 0x1ACD6E8F ^ 0x62B1DDE9 ^ -1222892887;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

