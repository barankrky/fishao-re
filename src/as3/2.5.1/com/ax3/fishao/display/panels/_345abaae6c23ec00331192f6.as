package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.MissionsWidget;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.missions._b0da6e4b902d47621d963f3d;
   import com.ax3.utils.ColorMatrix;
   import com.greensock.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _345abaae6c23ec00331192f6 extends MissionsWidget
   {
      
      var _temp_17:* = §§findproperty(ColorMatrix);
      var _temp_16:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挂掆揘捅掱掅捳揫捒揟揪掟捰揲揮掓揰捰掦挩捀捋揃握","挝揄捺挝揔捓持捫揹掅掭挪揶掄挡掊");
      var _temp_15:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捩揝掹掗挭揧揝捹挳挩挲挠揔持捵指掚揀揂挦捗揜捏挩","捇授捖揳挙捏捱损掎捃揹揘挳捍捉掭");
      var _temp_14:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剼刿剈勏勜力勳刮劽勴劘勏勌刌剄剾刓劳剙动剄剠刣剾","劗刑刚剮劅劍剔刑刣刌刹分剶勄刲刿");
      var _temp_13:* = 0x5D50E900 ^ -1906220118 ^ -1653640483 ^ 0x4E5EF877;
      var _temp_12:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勻剒剏刧列劕剧剌劣前剴刨切剭勚劸勒刎勮劚刏劌勒勭","剜勩剝勖劶刚勽劄勺劳劕勄勊剠剋勫");
      var _temp_11:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剩勱劐劋勔刁办勧初剆務勮劣刽剮劘劎勖劷剽剧勴剠勰","励勠判剅刳勷勍劵刟削勿剀刡募刱劁");
      var _temp_10:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挟插掮揮捰挟挮挥掓捵挘捨揼捪揌掠捯捓掙揶捶掄挋捗","按挵掯挛挸捤挤掔掼挲捴掅掀揈挔挖");
      var _temp_9:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勌刍劯勨剦剾劕劕劦勀刋勖劬勀勭到刓勊到划勁刐劬勏","劉刴剮勝動劖剽勀剠剸劅勨劓勑劅剅");
      var _temp_8:* = -1836327855 ^ -68291759 ^ 0x792C7571 ^ 0x104A5A71;
      var _temp_7:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勠剖勭勨勊剎劣剨剽刳則刵勷刳勳劲剥勱勯勌剁劑劄勷","刪剋劙勒勈勅劉勎刊勦剿刢剕勏勮创");
      var _temp_6:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剦勼勃刮判劳刷勺剟勗划勺割势勬勏勄劵劺剰勇勁剝勀","勀功劾剾刃剂动劮刚劾剐剈勾劒募劐");
      var _temp_5:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ီႧ႖ჰၕბငၼၩ၍უၼ၈႙ဆႺთင჉ႍჯჲ႐ေ","ჽၮႣည္ၭႹႫဩထ႑Ⴍန႕၆႘");
      var _temp_4:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴁ၎თၭဩၺჰჄၘႡႡჳၖဨႷვႰႿၑုၛზဒၿ","ဿှဂ၌უჺ჈Ⴠ჆ჯၧဦၓႈဉဤ");
      var _temp_3:* = -1049895721 ^ -109514345 ^ -2105922062 ^ -1167523662;
      var _temp_2:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掑措授掙揄掵捶揶掎控挶捠揢揉掆挞挫揸挾捰揀捳掞掃","掞掖挺揖揝揽掕捍捎掆挋捺挽挬揹捰");
      var _temp_1:* = -1740385801 ^ 0x3EA1FC8F ^ -290261090 ^ 0x4850DAE6;
      
      private static var _be49f39ab3681e0a7c1a316a:ColorMatrix = new ColorMatrix([_temp_16,_temp_15,_temp_14,_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,_temp_1,0x4FB8573B ^ -1691379008 ^ -2052078216 ^ 0x51380882,0x7374FFE3 ^ 0x5156F027 ^ -1974939503 ^ -1469391019]);
      
      private static var _2cc8148b6bd45d3c5d974bdb:Array = [_be49f39ab3681e0a7c1a316a.filter];
      
      private var _0865db0cfb81f091370bc277:int;
      
      public var onClick:Function;
      
      public function _345abaae6c23ec00331192f6()
      {
         super();
         name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刍劈剥劃券劜劳劙劋劭勂力勌劌刧劕剻劝勉刈勠勛刳劥勢勰劬刹剝勊剥剸划刹勪剽","刿劆劷勄刊劖勌刈劍剬劤勋前剗刢刡");
         addEventListener(MouseEvent.CLICK,this._dd0cd95ac1ea68389e8eecb2);
         mouseChildren = false;
         buttonMode = true;
         TextField(tooltip.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("据捯捤掺挹揱持揫按掣揢捽換挛揅揪捴挕","揷捕捅挣掯挓捉揝挶捕挂挴掚挆掲揁"))).text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဳဴၼႦၕၔၻႷჀအဈထႁႦဩკႂလჄႜჳჺှსზဍစၡကთဇႆၱღၬ჋","ဃႻတၢသႌဈႎၥႬႇႾဥჷၜႌ"));
         addEventListener(MouseEvent.ROLL_OVER,this._6a41ae8ec283cd39519c4bd6);
         this._0865db0cfb81f091370bc277 = tooltip.x;
         tooltip.x -= tooltip.width;
         notifierAnimation.notifier.label.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၐၶဇၢဃ၍႓ეဋჿჽွဓმဝრ႙ကრႅႉဿ၄ေဝხჷცပႤႄႍ၌ဟဳဲဘႣხ჎Ⴭဴ჻ၩႠီၐ႟ჺၕ၇ၯჹდွရၢႷႴၭဗႭၽႻႀიၷ჎ႜႩႍ႑ၛ႞","ၰ၃ႏჾჲဍႽၭါჷ၄აეဈဿၡ"));
         notifierAnimation.notifier.label.autoSize = TextFieldAutoSize.LEFT;
         notifierAnimation.notifier.background.width = (0x4C457AF4 ^ -263099818 ^ 0x4705D336 ^ -82721872) + notifierAnimation.notifier.label.width;
         this._0489bdcd9e089956b79ef8f9();
      }
      
      public function _0489bdcd9e089956b79ef8f9() : void
      {
         notifierAnimation.visible = !app.user.hasSeenNewMissions;
      }
      
      private function _6a41ae8ec283cd39519c4bd6(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_041_UI_Hover_button);
         addEventListener(MouseEvent.ROLL_OUT,this._c7e9dacdb810784a12ffbe99);
         removeEventListener(MouseEvent.ROLL_OVER,this._6a41ae8ec283cd39519c4bd6);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၞၨၼၸျჯႲძၶჩ჊ဉၚဧက၇ၦႧჄၡ႘Ⴅძဢ","ტႻფဉუၦၜ႘ჳမჄწသနႊლ"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჟႳၞჂၳႏჅႴၕ၂","ထႥშဝ႕჻ဢბဲဿဣჍၢჇါဤ")):this._0865db0cfb81f091370bc277},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၑტၼ၆ၦდႮი႙ါဝခါၟဦၙ","ဟႿဎ့ကံფႏဂს჎ဆ႐Ⴈဋႜ")):Cubic.easeOut});
         TweenCube.to(notifierAnimation,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捏挐捌揽掬接捤掟捂挐掏捌捙挮挋掘捷捠捼捥指捣捝挮","掴挧揲探挢揪揿损挓挜损描捤挵挖捳"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揪挂捐掩掦掼掦捄掼探捾揟挳捇揗掬挄揼","捾捷揈挷捷捀揘揯捡捷掔挻插捛捄捔")):-1350869365 ^ -164504637 ^ 0x286EEACD ^ 0x71246F85},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劈刀劅刦刦勢劄勨刀励劾劋刊剈刚刓","刴刺劣勂剢勯刚剙剧劄判刳剮则勬勍")):Cubic.easeOut});
      }
      
      private function _c7e9dacdb810784a12ffbe99(param1:Event) : void
      {
         var _loc2_:int = -926280299 ^ 0x37DDD303 ^ -505253263 ^ 0x5A985FBA;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2D078AAE ^ -673872443 ^ -220925917 ^ 0x4C6B1415))
            {
               case 0:
                  removeEventListener(MouseEvent.ROLL_OUT,this._c7e9dacdb810784a12ffbe99);
                  addEventListener(MouseEvent.ROLL_OVER,this._6a41ae8ec283cd39519c4bd6);
                  TweenCube.destroyTweensOf(tooltip);
                  TweenCube.to(tooltip,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("別刜劰勳勷副刺劢勺刅剝劖劾剆劬创勸勳務劉刬劷勪劎","勳办刞勎勅勫努勞剎分刉剼剧勱励勏"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝掱掮挵捸挖挻掂挦捋","掕捔揁掏捑揄捇捾捐捫揳捏挔捡掸掩")):this._0865db0cfb81f091370bc277 - tooltip.width},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚捻掊挄挔揭掠掍捑揯揲捪掛振揎掟","挵捧揎挖挣採掷揂捀接掂揋捼捞掦捩")):Cubic.easeOut});
                  if(!app.user.hasSeenNewMissions)
                  {
                     _loc2_ = 0x6EA7A792 ^ 0x5E8B020C ^ -951318091 ^ -1290975372;
                  }
                  else
                  {
                     _loc2_ = -519734189 ^ 0x033E04FE ^ 0x725F5759 ^ -737557336;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  TweenCube.to(notifierAnimation,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ლလჩხძპဏ႞လ်ဉၪႲၞဏ၁ქႺႎႺၤႮ၃ႎ","შႊဆႄჃၽ၌ံၝၧႳბყုၷჭ"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挝捃挪掅掩掎捬揝据掵捲捹揪揻挪挴捊掾","挹揸捧捾挴揑捜捷挪捔挌描掊措挸挖")):-299890844 ^ -841532715 ^ 0x24156838 ^ 0x07E25588},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხၛၒဦူၒჟგჿჹრ჋၃ჺီၡ","ႰჅჅჳႾႣთၮ჈უၡႺჄကၧဿ")):Cubic.easeOut});
                  _loc2_ = -338947204 ^ -2142306646 ^ -1835503883 ^ -1116247937;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _dd0cd95ac1ea68389e8eecb2(param1:MouseEvent) : void
      {
         var _loc2_:_b0da6e4b902d47621d963f3d = null;
         if(!GameSwf._d3e1b275b210647ff7fe10f6())
         {
            _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_042_UI_Click_button);
            _loc2_ = app.dialogFactory._a06aef3b696123097c60631a();
            _loc2_.show();
            app.user.hasSeenNewMissions = true;
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:int = -2009143269 ^ -377277086 ^ -206243551 ^ 0x4D9B4FF5;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x156017E3 ^ 0x51D7218E ^ -457049692 ^ 0x7FE4A465))
            {
               case 0:
                  parent.removeChild(this);
                  _loc1_ = -1731685051 ^ 0x129E1FE5 ^ 0x78BB2B51 ^ 0x2D7FCA5F;
                  break;
               case 1:
                  if(parent != null)
                  {
                     _loc1_ = 0x59153232 ^ -1555379305 ^ -2017305553 ^ -1576022490;
                  }
                  else
                  {
                     _loc1_ = 0x13F2ED35 ^ 0x3DEEAFDD ^ -2084271521 ^ 0x724AA319;
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
      
      public function deactivate() : void
      {
         var _loc1_:int = 0x0AB64332 ^ -204948821 ^ 0x627CED4F ^ 0x0FB57678;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x2BFABB62 ^ -1402433166 ^ -1658373097 ^ -1912441685))
            {
               case 0:
                  removeEventListener(MouseEvent.CLICK,this._dd0cd95ac1ea68389e8eecb2);
                  _loc1_ = 0x0F1A455A ^ 0x1BE96926 ^ 0x5D791DCC ^ -583183587;
                  break;
               case 1:
                  return;
               case 2:
                  if(hasEventListener(MouseEvent.CLICK))
                  {
                     _loc1_ = -166599124 ^ 0x6E3B360C ^ 0x149856A3 ^ 0x1805E42F;
                  }
                  else
                  {
                     _loc1_ = -1709693652 ^ 0x5A30ACBF ^ 0x030C38F3 ^ 0x5793D3CD;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function disable() : void
      {
         removeEventListener(MouseEvent.ROLL_OVER,this._6a41ae8ec283cd39519c4bd6);
         removeEventListener(MouseEvent.ROLL_OUT,this._c7e9dacdb810784a12ffbe99);
         removeEventListener(MouseEvent.CLICK,this._dd0cd95ac1ea68389e8eecb2);
         this.filters = _2cc8148b6bd45d3c5d974bdb;
      }
      
      public function enable() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,this._6a41ae8ec283cd39519c4bd6);
         addEventListener(MouseEvent.CLICK,this._dd0cd95ac1ea68389e8eecb2);
         this.filters = [];
         this._0489bdcd9e089956b79ef8f9();
      }
      
      override public function get height() : Number
      {
         return 0x428E35BA ^ -402679392 ^ -655751188 ^ 0x7D9BABBD;
      }
      
      public function set notifierEnabled(param1:Boolean) : void
      {
         var _loc2_:int = -898732924 ^ -1323472466 ^ -605788898 ^ 0x3E00FFEF;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1817751962 ^ 0x7601DE85 ^ -1908355757 ^ -177094037))
            {
               case 0:
                  notifierAnimation.visible = param1;
                  notifierAnimation.notifier.label.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捸捘挹揧握揳揗挈捕捁掶掫捨挿挬揞捎捺掹捙揨揚掏捬挋揃捉捧揎揅掁揣挞揭挐挻挎捛振掆挋捖挩揕揁掜捻揙掻措控揩捧捹掗揕挧捀揨捓捐揑挼揄掷捑挆挗揅掣掭损","揝捜揂捲揱捄措揅捿揖挶捀挠捍挾挖"));
                  notifierAnimation.notifier.label.autoSize = TextFieldAutoSize.LEFT;
                  notifierAnimation.notifier.background.width = (-1712184263 ^ -1724157377 ^ 0x7165917B ^ 0x71ACC759) + notifierAnimation.notifier.label.width;
                  if(!app.user.hasSeenNewMissions)
                  {
                     _loc2_ = -2123080546 ^ 0x7BB01BE6 ^ 0x3981534E ^ 0x5DD28BEF;
                  }
                  else
                  {
                     _loc2_ = -389435916 ^ -381473645 ^ -2133556317 ^ 0x1FC99D1E;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  TweenCube.to(notifierAnimation,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捣捜揂揳描掄掍握捍揀持捞挶捐掘揞掓捌掽揧掵掸挬揌","挽捧掏捕掓捘挆掠揠揑挨掖捏挥捻揍"),{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劥劒勼分劇劕勐勀動剑剡勣勨刑勦勀别劦","勒劂勚刏剸劺剎初剓剅刦刂劋劜刳刜")):0x098B6949 ^ -1961213144 ^ -575836195 ^ 0x5F3C45BD},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸჄဎဏၾ၂Ⴕၞၖဉ႕၁ၞ႒ႉზ","ါ၌ဆႋკ႘ၴნႫაၻქၷ၉ဣჴ")):Cubic.easeOut});
                  _loc2_ = 0x276AC5B0 ^ -260439936 ^ -1161241184 ^ -212891830;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

