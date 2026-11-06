package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._8ecc041b6b4976ac13bca1ac;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._1e21f5ea8cd03625232da448;
   import com.ax3.fishao.view.dialogs.base.views.implementations._2cdd13756ecbf9d1e37d2c0a;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _6a7e6b6f119777b0667d6d35 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _c7a687a9653ea92b66105098:DisplayObjectContainer;
      
      private var _4cc00f49e866805a34c602dc:_ab72f7798754bf7a51d8acb3;
      
      private var _b158e9f0a3bdddce6ee6968e:_2cdd13756ecbf9d1e37d2c0a;
      
      private var _5df2851d0ee65f01f5a8dae5:_2cdd13756ecbf9d1e37d2c0a;
      
      private var _9ea6a5566d8a0ae6d3a58966:_2cdd13756ecbf9d1e37d2c0a;
      
      private var _8c843217dc6b945bc6c7b128:_2cdd13756ecbf9d1e37d2c0a;
      
      private var _7b008f7801ea4656a0f03179:_2cdd13756ecbf9d1e37d2c0a;
      
      private var _30e8165ddfebf0e40555a9bd:TextField;
      
      private var _73e1f2c096038fb106777453:DisplayObjectContainer;
      
      private var _49ea571ba02cc99af4179f3c:_8ecc041b6b4976ac13bca1ac;
      
      private var _bc1972f19a04ee410e4f7b05:_1e21f5ea8cd03625232da448;
      
      public function _6a7e6b6f119777b0667d6d35(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._c7a687a9653ea92b66105098 = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set members(param1:String) : void
      {
         this._b158e9f0a3bdddce6ee6968e.value = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._5df2851d0ee65f01f5a8dae5.value = param1;
      }
      
      public function set durationTitle(param1:String) : void
      {
         this._9ea6a5566d8a0ae6d3a58966.title = param1;
      }
      
      public function set duration(param1:String) : void
      {
         this._9ea6a5566d8a0ae6d3a58966.value = param1;
      }
      
      public function set description(param1:String) : void
      {
         this._30e8165ddfebf0e40555a9bd.text = param1;
         this._73e1f2c096038fb106777453.height = this._30e8165ddfebf0e40555a9bd.textHeight;
      }
      
      public function set timeStart(param1:String) : void
      {
         this._7b008f7801ea4656a0f03179.value = param1;
      }
      
      public function set timeSignUp(param1:String) : void
      {
         this._8c843217dc6b945bc6c7b128.value = param1;
      }
      
      public function set dialogTitle(param1:String) : void
      {
         this._4cc00f49e866805a34c602dc.text = param1;
      }
      
      public function get buttonSignUp() : _8ecc041b6b4976ac13bca1ac
      {
         return this._49ea571ba02cc99af4179f3c;
      }
      
      public function set prizes(param1:Array) : void
      {
         this._bc1972f19a04ee410e4f7b05.items = param1;
      }
      
      private function init() : void
      {
         var labelMembersTitle:TextField = null;
         var labelMembersValue:TextField = null;
         var labelTypeTitle:TextField = null;
         var labelTypeValue:TextField = null;
         var labelDurationTitle:TextField = null;
         var labelDurationValue:TextField = null;
         var labelTimeStartTitle:TextField = null;
         var labelTimeStartValue:TextField = null;
         var labelTimeSignUpTitle:TextField = null;
         var labelTimeSignUpValue:TextField = null;
         this._bc1972f19a04ee410e4f7b05 = new _1e21f5ea8cd03625232da448(controller);
         this._bc1972f19a04ee410e4f7b05.size = new Point(-514968283 ^ 0x21AC15D2 ^ -1477782220 ^ 0x6708F5C0,-255382441 ^ -1841148741 ^ 0x7BDF872A ^ 0x195AE7C7);
         var _temp_3:* = this._bc1972f19a04ee410e4f7b05;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = -1310607905 ^ 0x6D8AE57C ^ -1600709777 ^ 0x7CFC4BCC;
         _temp_3.offset = new Point(_temp_1,_temp_1);
         this._bc1972f19a04ee410e4f7b05.gap = new Point(0x71F91C18 ^ 0x3C3C0A8A ^ -2041016918 ^ -878863597,0x7CCCA865 ^ -1562011808 ^ -895711785 ^ 0x14B5BAD2);
         this._c7a687a9653ea92b66105098.addChild(this._bc1972f19a04ee410e4f7b05.source);
         this._4cc00f49e866805a34c602dc = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._c7a687a9653ea92b66105098,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქძუခႇႇႝჇုႠႋကႱဓႝჍယေႠჰჩႸႯჼပდ","ရ႔ဍჇထႹჲႯႼစၼႁჩხ႑႗")));
         labelMembersTitle = Debug.assertProperty(this._c7a687a9653ea92b66105098,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挑挠捯揽挻掼挾掯掉挻捲推掘持掄捀掃挳掷挑掳掩挕揓掸捯揰捽掖掳掐掤挪掫揓掖揺捝揾捞挸挴","揓揽捌揷换揅捩捝捂掛捃揵挽插捏捞"),TextField);
         labelMembersValue = Debug.assertProperty(this._c7a687a9653ea92b66105098,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挝捁掚捤揊捰挨挍掔揺捡掅揨掄挴揦指掐捞捕揝捗挏捴掬捶捴揑掳挷挄捍据挤揓掑揫挮挰揙掑掄","捄揸揬掛揿揙掘揊捱捄捰挒捗挫掳掑"),TextField);
         this._b158e9f0a3bdddce6ee6968e = new _2cdd13756ecbf9d1e37d2c0a(controller,labelMembersTitle,labelMembersValue);
         this._b158e9f0a3bdddce6ee6968e.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_MEMBERS);
         labelTypeTitle = Debug.assertProperty(this._c7a687a9653ea92b66105098,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၠၯშ၊ၪၞჳჀრპာၿဵျჽႪჄဣႃွ၂ဤ჏၅်မႲအႿბ၎႐ခႴ჊ဃ","ၫ႖ၝუၸმჲ၇္ြჴဈ႞႕Ⴍႊ"),TextField);
         labelTypeValue = Debug.assertProperty(this._c7a687a9653ea92b66105098,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挊捭挗挍损挿挠挨挮挄掣指揊挟揭挽挫捒挍捱探挎挭揄捤挫捉换揣掙插挴挧振挢捳","振掹按捦捦挬挜掜据揭掹捂捡掩捻挀"),TextField);
         this._5df2851d0ee65f01f5a8dae5 = new _2cdd13756ecbf9d1e37d2c0a(controller,labelTypeTitle,labelTypeValue);
         this._5df2851d0ee65f01f5a8dae5.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_TYPE);
         labelDurationTitle = Debug.assertProperty(this._c7a687a9653ea92b66105098,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挽挖挠揭揋捩掦挭捙揟捺掹掶揚掎掅捴捅掤挔捡挧捺捶捿捖揺授掣揄揋捇掛揄掋揱揌揢揾捛揙捬挱捡","揬揓捂捦捼揼揆捂掾掋捠捰振掚掂捳"),TextField);
         labelDurationValue = Debug.assertProperty(this._c7a687a9653ea92b66105098,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捠掣揑揳揪揣捍捩捷捵揓挽揇捈损捀揓推掓授捼描捃掠插揦掚捒捹掁挴掔揚挟揸揉捀挀挀掼捫揦掔挻","揤挈挼掯揄挺掅揫挈揑捭挆捫捌掺挌"),TextField);
         this._9ea6a5566d8a0ae6d3a58966 = new _2cdd13756ecbf9d1e37d2c0a(controller,labelDurationTitle,labelDurationValue);
         this._30e8165ddfebf0e40555a9bd = Debug.assertProperty(this._c7a687a9653ea92b66105098,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჋჎შဣაၩံေႂჇ჆ီშဠႊဟ၇ყၷၔ႟ၺ჊჊Ⴀ႕ဍჱဎოၱႩၲ႞ဣၦცၶဦှ","ჰჲဌၶსჳဝၚ။ဢ္ჟညဨფო"),TextField);
         this._73e1f2c096038fb106777453 = Debug.assertProperty(this._c7a687a9653ea92b66105098,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳勋勝劂刓劜剁刵剾刜剦剡劺剼剔勹勲判办刾刻勴勦勬分勲刳劧剋劑刕劘劍割勴劶勀前勌劬切刱劁勉勓劎","勥勏刹勒劬剑劊助劊剺募则劆劚劦剳"));
         labelTimeStartTitle = Debug.assertProperty(this._c7a687a9653ea92b66105098,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ფၾၐခဍႝႵရ႟ႃႏအႏჷၚႣၨႝၸၦၸუဒჶျ၄၆႐჉၍ႰႯოჁ჋კზႱ჎ၐၟီდ၇၉၍","နႪကფၡၱၯု။ဤ႓Ⴂ၊ၔႹႼ"),TextField);
         labelTimeStartValue = Debug.assertProperty(this._c7a687a9653ea92b66105098,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍揈揃捩揚揋掳捍掲捳掓挊掬授捷掐揁持揳掆挌挑揆据掆揻掅捕掜揽掆揹挸挖捅揜掗捯揊挤揧揧捜挿掷掠","捈掐挽掆挬挞捡掌控捍援推揿捼捺揍"),TextField);
         this._7b008f7801ea4656a0f03179 = new _2cdd13756ecbf9d1e37d2c0a(controller,labelTimeStartTitle,labelTimeStartValue,false);
         this._7b008f7801ea4656a0f03179.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_TIME_START);
         labelTimeSignUpTitle = Debug.assertProperty(this._c7a687a9653ea92b66105098,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捀挒挞揮挓掮揣握挿捄捋捐损挔掂捓揑掗捕揕挟挤揍捑捷揥掺挥捼探揇掵授捄挝捘挴挳捍揿挼揎掜挕捫揶掻挼","揯掐捊援掯掰挙挪揓描揶捭掘捩揵捜"),TextField);
         labelTimeSignUpValue = Debug.assertProperty(this._c7a687a9653ea92b66105098,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၲლဒဵဢ႒჏ဃ၆ႜ჻჉჋ႀြဩၛႝၺ჏ဟოႍပႠဟႸၒღဆ၍ဎფჍႅၭႡჴူႶႡးაၱႛရအნ","ၸ჎Ⴧ႒ძჴ႖ႸကၹცႹႜჲၸၵ"),TextField);
         this._8c843217dc6b945bc6c7b128 = new _2cdd13756ecbf9d1e37d2c0a(controller,labelTimeSignUpTitle,labelTimeSignUpValue,false);
         this._8c843217dc6b945bc6c7b128.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_TIME_SIGN_UP);
         this._49ea571ba02cc99af4179f3c = new _8ecc041b6b4976ac13bca1ac();
         this._49ea571ba02cc99af4179f3c.process(Debug.assertProperty(this._c7a687a9653ea92b66105098,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勥势剈勧剝勤勩勌剱削勛劃刴劈勀劬刴勝勐刄勋剃剱刷勌刿勬劍勯剠劧劮","劎势勫劇勌刢劦勌到剠勇剰劎刀劦刘")));
         this._49ea571ba02cc99af4179f3c.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_49ea571ba02cc99af4179f3c,param1);
         };
         this._49ea571ba02cc99af4179f3c.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_BUTTON_SIGN_UP);
         this._63b9041bf855ea499da8554e(false);
      }
      
      override public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
         this._bc1972f19a04ee410e4f7b05._63b9041bf855ea499da8554e(param1);
         this._bc1972f19a04ee410e4f7b05.source.x = 0x4991EA2D ^ 0x1F3BA962 ^ -1425818260 ^ -39191026;
         this._bc1972f19a04ee410e4f7b05.source.y = -489037610 ^ 0x3225AD58 ^ -1710123813 ^ 0x4AEDD913;
      }
   }
}

