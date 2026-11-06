package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.model.vo._849cfb7e3d3f1f15ce0c680a;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.interior._6a8967ac4d1067e2adb0979a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.Event;
   import protocol.sr.ErrorResp;
   
   public class _86bec2ca1d46792acedfcc5d extends _c047e49bde86859dcbd1e5e8
   {
      
      private var _20444d9735f8f3b2772ef41c:_6a8967ac4d1067e2adb0979a;
      
      public function _86bec2ca1d46792acedfcc5d()
      {
         super();
      }
      
      override public function show() : void
      {
         super.show();
         this._20444d9735f8f3b2772ef41c = GameSwf.instance.managerInterior;
         this._f7a3bdae5f3f8f3cf8813f6f();
      }
      
      override protected function buyHandler(param1:_849cfb7e3d3f1f15ce0c680a, param2:int) : void
      {
         var _loc3_:int = -517243840 ^ -589570090 ^ -941107639 ^ 0x7A99AA21;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x4DE9C863 ^ -1982993773 ^ -1997992709 ^ -867962383))
            {
               case 0:
                  GameSwf.instance._cb81036d0354ae254b0556b1();
                  _loc3_ = -1824910685 ^ 0x225ADDDE ^ -370346615 ^ -670898932;
                  break;
               case 1:
                  this._20444d9735f8f3b2772ef41c.buyItem(param1.id,param2,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._ceeec9eac4ec7f144a7bcd90));
                  _loc3_ = -1888075508 ^ -1839261371 ^ -581470684 ^ 0x40F0F195;
                  break;
               case 2:
                  _loc3_ = 0x7BDC37D1 ^ -1464995477 ^ 0x3CA817A5 ^ 0x6F570EE2;
                  break;
               case 3:
                  if(app.user.fishcoins >= param1.priceFishcoins)
                  {
                     _loc3_ = -671018775 ^ -1337049242 ^ -1036467455 ^ 0x2AF9337D;
                  }
                  else
                  {
                     _loc3_ = -1776221021 ^ -941928894 ^ -420723987 ^ 0x3798D7F0;
                  }
                  break;
               case 4:
                  if(param2 == _67282af25befe9778e5c8dd1.FISHBUCKS.id)
                  {
                     _loc3_ = 0x6B62916D ^ 0x30DEF029 ^ 0x6B4DB697 ^ -1333852127;
                  }
                  else
                  {
                     _loc3_ = -1242847254 ^ 0x29C97602 ^ -1453073352 ^ -1244671441;
                  }
                  break;
               case 5:
                  if(param2 == _67282af25befe9778e5c8dd1.FISHCOINS.id)
                  {
                     _loc3_ = 0x42C69964 ^ -872336409 ^ -865086843 ^ -1037654017;
                  }
                  else
                  {
                     _loc3_ = 0x11F8227D ^ -297603506 ^ -769256689 ^ -1391329087;
                  }
                  break;
               case 6:
                  GameSwf.instance._e6f0a7b005cacf7751286e97();
                  _loc3_ = 0x24D6E55A ^ -1124880699 ^ -969727190 ^ -560416952;
                  break;
               case 7:
                  return;
               case 8:
                  if(app.user.fishbucks >= param1.priceFishbucks)
                  {
                     _loc3_ = -1871064269 ^ -589234073 ^ 0x635DA4D9 ^ -1353996170;
                  }
                  else
                  {
                     _loc3_ = 0x58299A6C ^ -220737873 ^ -629799686 ^ -268005437;
                  }
                  break;
               case 9:
                  this._20444d9735f8f3b2772ef41c.buyItem(param1.id,param2,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._ceeec9eac4ec7f144a7bcd90));
                  _loc3_ = -1649694337 ^ 0x1A721861 ^ -2126220243 ^ -2045568306;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ceeec9eac4ec7f144a7bcd90(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Boolean = param1 is ErrorResp;
         this._f7a3bdae5f3f8f3cf8813f6f();
         _c253fa7e09283fa181e79b00();
      }
      
      override public function activate() : void
      {
         super.activate();
         this._20444d9735f8f3b2772ef41c = GameSwf.instance.managerInterior;
         app.user._c2cb288bf8bd6f749d06eb93(this._843cd2a16fe3d831b16c68b9);
         app.user._b4cae3abe96a2089ccbc80fc(this._843cd2a16fe3d831b16c68b9);
         this._843cd2a16fe3d831b16c68b9();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
      }
      
      private function _f7a3bdae5f3f8f3cf8813f6f() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_849cfb7e3d3f1f15ce0c680a = null;
         var _loc3_:Array = this._20444d9735f8f3b2772ef41c.currentLocationItems;
         var _loc4_:Vector.<_849cfb7e3d3f1f15ce0c680a> = new Vector.<_849cfb7e3d3f1f15ce0c680a>();
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc1_ == null || _loc1_.id == (0x24E30DA5 ^ 0x1914D75A ^ 0x0C5B0882 ^ 0x31ACD2FF)))
            {
               _loc2_ = new _849cfb7e3d3f1f15ce0c680a();
               _loc2_.id = _loc1_.id;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.title = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劷勓勹勺刅勸励務勤初劜劝勽劃勒劂剴劦助劫剘劃剦剳刖创刽剎刿刮","別剠劻勣刌剡剴利劙刮剩刋劜券劖勘") + _loc1_.id);
               _loc2_.type = _loc1_.type;
               _loc2_.imageURL = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤掴挩挔掕挈挳掱捚捕挱捩捋接揇挨捷挐掘提揱挧捞挕挕揥揘掉揲挗损挌挒掄掳揎挻捧捼措描挱捩揲换揥揬掐掤掸捗捋挓揻捽指捒掟捻捩捦捻捉掬挦掜挝揓挟掬","揞捘捦掊掑捺掳挞揖捚揎捣挷捤掟掭") + _loc1_.id);
               _loc4_.push(_loc2_);
            }
         }
         _loc4_.sort(_849cfb7e3d3f1f15ce0c680a._31249d24d327d467b3b29cd3);
         items = _loc4_;
      }
      
      private function _843cd2a16fe3d831b16c68b9(param1:Event = null) : void
      {
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
      }
   }
}

