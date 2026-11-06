package com.ax3.fishao.view.dialogs.club.pages.rankings.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   
   public class _90c5b7e91b6b853a1182c37d extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _df99d160ba25ed422a23fd53:gViewClubItemRankings = new gViewClubItemRankings();
      
      private var _f84747337be7ea1ed23dcc75:_73899a4de8f83c8d2c26f545;
      
      private var _86728b0f287ed5eca173e6c8:_73899a4de8f83c8d2c26f545;
      
      private var _fae9f82d0fb1fec221a8235b:_73899a4de8f83c8d2c26f545;
      
      private var _3ab6db70867954f37c735bfe:_73899a4de8f83c8d2c26f545;
      
      private var _9b411b810a04026d6094f1cc:_1c73633a6a4f4f6050258c2a;
      
      private var _a48336c79f1a85923bda35ed:_04cce4e240ff9bea66c1b7f7;
      
      public function _90c5b7e91b6b853a1182c37d(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._df99d160ba25ed422a23fd53);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         this._f84747337be7ea1ed23dcc75.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._86728b0f287ed5eca173e6c8.text = param1;
      }
      
      public function _c0a6069f4ff1c2614a320633(param1:int, param2:int) : void
      {
         this._fae9f82d0fb1fec221a8235b.text = param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勶刏剞剘劸剓劲办劧务","刑刑刜勨劝削勫剽劅初勰切勣勧勱動") + param2;
      }
      
      public function set criteria(param1:String) : void
      {
         this._3ab6db70867954f37c735bfe.text = param1;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._9b411b810a04026d6094f1cc.emblemID = param1;
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         var _loc2_:int = 0x1C32F744 ^ 0x57B398E7 ^ 0x1401BF64 ^ 0x1A905AC8;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-230645888 ^ 0x6590C7A5 ^ 0x7D6698D9 ^ -1348056334))
            {
               case 0:
                  this._86728b0f287ed5eca173e6c8.source.textColor = -1470106726 ^ 0x27723B64 ^ 0x3045272C ^ -1080618963;
                  this._fae9f82d0fb1fec221a8235b.source.textColor = -938473134 ^ -1237810875 ^ 0x656FD4FA ^ 0x1BB8A312;
                  this._3ab6db70867954f37c735bfe.source.textColor = 0x1DE701DD ^ 0x4B9710CE ^ 0x7BC59A85 ^ 0x2D4A7469;
                  this._f84747337be7ea1ed23dcc75.source.filters = [];
                  _loc2_ = -994647101 ^ -2036077851 ^ -1536239041 ^ -1553245931;
                  break;
               case 1:
                  this._df99d160ba25ed422a23fd53.viewCurrent.visible = param1;
                  if(param1)
                  {
                     _loc2_ = -478005955 ^ 0x75896494 ^ -431273790 ^ 0x35509365;
                  }
                  else
                  {
                     _loc2_ = 0x1E9B24AB ^ -2137804441 ^ 0x7A8E38DA ^ -1583995110;
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
      
      public function get viewHitArea() : _04cce4e240ff9bea66c1b7f7
      {
         return this._a48336c79f1a85923bda35ed;
      }
      
      private function init() : void
      {
         this._a48336c79f1a85923bda35ed = new _04cce4e240ff9bea66c1b7f7(controller,this._df99d160ba25ed422a23fd53.viewHitArea);
         this._a48336c79f1a85923bda35ed._fc17178734ae7cc816dbcc2f(true);
         this._a48336c79f1a85923bda35ed.source.alpha = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ပဪၢႳ჌ႏთႪစპ႔ရဠვၟၾჄၼვქႛႯ႒ဇ","ြრჾႹზჳႳႝ၁ၻၩၚၛဨၲ၊");
         this._f84747337be7ea1ed23dcc75 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝挃揮捙揍挵揊换揺挘挾挘掅挒捐掐描捝掞揵挵捻揆揍揜揘插掛掙掋揀揵挀捜","挩揇掰掖揬掼捖揊掾揬掫捠揨揌挏掌"),null);
         this._86728b0f287ed5eca173e6c8 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揕揇挐授描掙揨揶掞捯揎损捹挐掂掴捦挢挫挊挭揮捆掦挆掳","捑挋挋揆揜捰挲挹挩授挮挆揀掾揚捺"),null);
         this._fae9f82d0fb1fec221a8235b = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴔ၈ဢႭႀႏဂშဪၸႲ႐ဏၝဣႾၲႎႋၽဦზႅგზၞဋဗကၛႥჶ","ူစႥგၦမႡ჻၁ბီဉလဴဒၾ"),null);
         this._3ab6db70867954f37c735bfe = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჷწႶႡၺ႘ႢႤႩၟဧ၃ၫဳြဣჟဈဒჱცဇგႀိ႗჆ႄျၕ჉။ႇဪ","်ၑშမ၊გဗဏါၘჾၩကღႾႮ"),null);
         this._9b411b810a04026d6094f1cc = new _1c73633a6a4f4f6050258c2a(controller,this._df99d160ba25ed422a23fd53.viewEmblem);
      }
   }
}

