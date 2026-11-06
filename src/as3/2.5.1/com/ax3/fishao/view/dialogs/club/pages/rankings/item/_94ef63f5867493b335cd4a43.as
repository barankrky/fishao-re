package com.ax3.fishao.view.dialogs.club.pages.rankings.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.club_info_outside._c6dd57dd12cf02bae4594249;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.model._ece4f37c607dd0c90d333eca;
   import flash.events.Event;
   
   public class _94ef63f5867493b335cd4a43 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _23422973b3260622241a00a5:_90c5b7e91b6b853a1182c37d = new _90c5b7e91b6b853a1182c37d(this);
      
      private var _70a8ca70ebaba4d66545c992:Object;
      
      private var _09831fa59f01a4203d34047d:Boolean;
      
      private var _e505febd3e5ef489a2f31bae:_8a55e6919385386ebc54f870;
      
      private var _19f0a35ecb64e3c59c6a15e6:String;
      
      public function _94ef63f5867493b335cd4a43(param1:Object, param2:String)
      {
         super(this._23422973b3260622241a00a5);
         this._19f0a35ecb64e3c59c6a15e6 = param2;
         this._70a8ca70ebaba4d66545c992 = param1;
         this.init();
      }
      
      public function get name() : String
      {
         return this._e505febd3e5ef489a2f31bae.name;
      }
      
      public function get isCurrent() : Boolean
      {
         return this._09831fa59f01a4203d34047d;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_c6dd57dd12cf02bae4594249 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            var _loc5_:Object = param1;
            switch(this._23422973b3260622241a00a5.viewHitArea === _loc5_ ? 0x30650F8C ^ -1468410259 ^ 0x497DAF42 ^ -782141789 : 0x40C0DC1F ^ 0x5D145356 ^ -438564845 ^ -133658789)
            {
               case 0:
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_c6dd57dd12cf02bae4594249);
                  _loc3_.entity = this._e505febd3e5ef489a2f31bae;
                  _loc3_.show();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         var _loc1_:_518280cac6f3ae016ad4f350 = GameSwf.instance.managerClubs;
         this._e505febd3e5ef489a2f31bae = Debug.assertProperty(this._70a8ca70ebaba4d66545c992,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勏剷刬刢劽刾勎勴劄勧刕勚劎劧勣勯劍剬剎勝刉剧刡剸劝劲","勅券勦勢劖効剺劑勫刖勗制剱勪刲刉"));
         this._09831fa59f01a4203d34047d = Debug.assertProperty(this._70a8ca70ebaba4d66545c992,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勧劌劅刐務勋刟劣勤勃勝勳勼劻劮劲刱刂劄剟刖動創刉切劲勽勋","剘刞勝勲刘刽劧刐刯刷利刢勦勆剳削"));
         this._23422973b3260622241a00a5.name = this._e505febd3e5ef489a2f31bae.name;
         this._23422973b3260622241a00a5.emblemID = this._e505febd3e5ef489a2f31bae.emblemID;
         var _loc2_:int = Debug.assertProperty(this._70a8ca70ebaba4d66545c992,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၍მၾ႘ჷယႨ႖ၹ႔၈ၜძၙႄႵေწဴႉႅဟძ႖","჎ႦဒဉီပჾၾႎဍႄႄညစჯႢ"));
         var _loc3_:String = null;
         if(this._19f0a35ecb64e3c59c6a15e6 == _ece4f37c607dd0c90d333eca.ECLRT_BIGGEST_FISH)
         {
            _loc3_ = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(_loc2_);
         }
         else
         {
            _loc3_ = _loc2_.toString();
         }
         this._23422973b3260622241a00a5.criteria = _loc3_;
         this._23422973b3260622241a00a5.position = Debug.assertProperty(this._70a8ca70ebaba4d66545c992,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勤刍刈劵勯刱勁勇劲劶刦劊劶勩勒前剕券剮劁剒劯副勒","劧勝刽剱劈刭劝剓剎剀勮刲劧剻劄勽"));
         var _loc4_:int = Debug.assertProperty(this._70a8ca70ebaba4d66545c992,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ံၤღႉဓ႒Ⴁဣၟႁ႕ၑဿ၏ვდဓ၂ვჺသ်Ⴀ႐ှ၏ქ႐႐ၰႪစၾტ","႙რႯဒ၁ၕယႸါႳၴპပ႗ၵရ"));
         var _loc5_:int = Debug.assertProperty(this._70a8ca70ebaba4d66545c992,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挲挞揷挒挊揥捛挏挣挑挭振捎挱挻掁捬捘","揮掫捨揣掛措挌換揚捑揆掐揻掉捲掚"));
         this._23422973b3260622241a00a5._c0a6069f4ff1c2614a320633(_loc4_,_loc1_._635253f13b6f6f377142cfbd(_loc5_));
         this._23422973b3260622241a00a5.isCurrent = this._09831fa59f01a4203d34047d;
      }
   }
}

