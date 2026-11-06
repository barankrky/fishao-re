package com.ax3.fishao.view.dialogs.club.pages.goals.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._5d4744298d281de23246856d;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   
   public class _d32787c335b6f8f7988b82b8 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _eb69f7bb1319c19c4cf68f50:gViewClubsItemGoal = new gViewClubsItemGoal();
      
      private var _ba59af56881eb1f04692fbee:_5d4744298d281de23246856d;
      
      private var _5b82f66b02b2794843a5d504:_73899a4de8f83c8d2c26f545;
      
      private var _608cfb5c7cabd4e79dccd5e9:_73899a4de8f83c8d2c26f545;
      
      private var _318e5ecd0138b028a9981945:_73899a4de8f83c8d2c26f545;
      
      public function _d32787c335b6f8f7988b82b8(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._eb69f7bb1319c19c4cf68f50);
         this.init();
      }
      
      public function _2ed1fba276bf5d3125fe07ed(param1:String, param2:int) : void
      {
         var _loc3_:String = _c2ad9d37d7be0097d6d2e977.get(param1);
         _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,param2);
         this._318e5ecd0138b028a9981945.text = _loc3_;
      }
      
      public function _299e7bb5a645ce91a6b1a4d1(param1:int, param2:int) : void
      {
         this._608cfb5c7cabd4e79dccd5e9.text = param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挹揌挱掷掾揕掳掋捌揼","捗掙揙捋掴挊掚挐揋捥掆措掭捹揜挹") + param2;
         this._ba59af56881eb1f04692fbee.percent = param1 / param2 * (-2090246711 ^ 0x6B5F6CD2 ^ -1258282290 ^ 0x5D3613B1);
      }
      
      public function set reward(param1:int) : void
      {
         this._5b82f66b02b2794843a5d504.text = param1.toString();
      }
      
      private function init() : void
      {
         this._5b82f66b02b2794843a5d504 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐刅勵删剡劦刾剪剶剴剒刡勔勮剡勗刂勵劳勮剝勈劘刐剏剋剴勐勳勗","刼剌剾勄剉划勅勔勴勤剁刵劢刈剩劮"),null);
         this._608cfb5c7cabd4e79dccd5e9 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揑掇掿捀揉挦探掕挊挍掰揅挞揞挦掐捦掕掕揙掖捥掿捖换挬挨挧掠掶掅揳挚探","捸捹挏捄揵捨揬挙捫挼捏挒据捞挲捙"),null);
         this._318e5ecd0138b028a9981945 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捦捥揘挞捚挷掃揔挖捹挂挊捓捫掐掋捰掖揜揁挡捾揲掏揻掸","掚揳挝挊掹捞挳揎挼掺挒揰挓揍措捎"),null);
         this._ba59af56881eb1f04692fbee = new _5d4744298d281de23246856d(controller,this._eb69f7bb1319c19c4cf68f50.viewProgress);
      }
   }
}

