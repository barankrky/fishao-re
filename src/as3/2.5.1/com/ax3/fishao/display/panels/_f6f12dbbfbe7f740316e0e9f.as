package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.DailyQuestWidget;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.fishao.model._d639e2c43447781c972a23b3;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._716ffcd3e2a1569232ccb791;
   import com.ax3.fishao.view.tooltips._1d9c72ffd33c517a03ce13ee;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.ax3.utils.ColorMatrix;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _f6f12dbbfbe7f740316e0e9f extends DailyQuestWidget implements IToolTipTarget
   {
      
      public static const DAILY_QUEST_DATA_INIT:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挗挛挎掕掬掐掋捥挳捡挹揎挾揭捥挟接掚掲掬挜揚揟揖掯捃捗揲挩捎捜揢振揷挺揬挭掺挔揀揅揔捸挮","持挊援掁挧掁接掌挡掰掻挭掬揳捈掩");
      
      var _temp_17:* = §§findproperty(ColorMatrix);
      var _temp_16:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勗劊劆勉則划剴刿勵劥勯勃刳则剮勴列勐剧勅剜劝剠劆","刁勀剧創劜劝劓剘刌刖劤剢劈刍剶創");
      var _temp_15:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၝေ၍ႚသၻၟူႤწუႡႸၭ့Ⴣဥ႕ၫိျჴႳჩ","გန჌ၣ႐Ⴒႚစღპဏႉၷჟ၄ႉ");
      var _temp_14:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剠剏剸勷剂剪刕剈加剆勧剕刔刐刮别勛劕勾刲勳劭券勳","刭刮刻刚创剭勬剩刺划劢剓勤劻刣剕");
      var _temp_13:* = -1467461305 ^ 0x5C9DFFA4 ^ 0x17BCA9BA ^ -475461799;
      var _temp_12:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劤剏劔募刭勭剝判刞剥勴劀剋創刲劁勬劰劥勠劣劓勋刕","剸劎刺刾刞刮勚功劤勨勓勂勮刺勷劽");
      var _temp_11:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴆ၅ၕჷჁშლჰჇ႕ა჆Ⴝშ჌ၳီႱႂစႌႝႠႠ","ႷမႛრႳထင႘အၭ႐ဢჾჁၿႬ");
      var _temp_10:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剴刹副劬勈剗劆勨劶劔刻劄刭剶劙剒剤劬劻剧勃剀刔剣","創剏刯劍刮劓勄効勥前勴刞券剳劜勲");
      var _temp_9:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("နႣ္Ⴒკჴႉယდღၰ႑ႇჇဌ၂Ⴣအ႓იდဌ၍჆","ႆၾႮအဳႏ႔ტჂံၑჩჭႬီဠ");
      var _temp_8:* = 0x76265B65 ^ 0x50EDBE60 ^ 0x684FF136 ^ 0x4E841433;
      var _temp_7:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挦捓捒捠揭掣換接捓揔捣揀挅挌捣掿掖捺揸掴捵挳捠挟","挍挙挍掄挐揽捣挶揪挎挘捧掄掹掾挹");
      var _temp_6:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刀勍剿剮刓制切劔剣劖勆剤勸刁刖剩刿剉刀剢剜劓则刼","勏剼勫刨剷剏劾剖剦功努剉勽勥剟勄");
      var _temp_5:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勶劖劜勦務剠劜劚劓劈创勂刬勬剶刳刅劄剜勝剌剀勡剄","劮劐勈刞刞加剛勳劖勅勴創剭勴剔剘");
      var _temp_4:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ეუႠဈႷბჂშၭႩႂၪჩႱ၈Ⴒႀၘဪ႟ခႫၝჸ","ဖဥჯဿဆჂျ၎ကႾჇႢၵႢမၨ");
      var _temp_3:* = -167134370 ^ -797722759 ^ 0x709903E6 ^ 0x56E30FC1;
      var _temp_2:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捯挪揋揟揨捽掄揘捓挀挒捀掆揽挺挱掂揸控掂捃挧揘揤","捧捵揆揾揂掔掤排捞揆掮捻掵挋捙捼");
      var _temp_1:* = -879703538 ^ -1689860647 ^ 0x04B1B963 ^ 0x5467B6B4;
      
      private static var _0f3bcb3dd45f77efb2a635df:ColorMatrix = new ColorMatrix([_temp_16,_temp_15,_temp_14,_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,_temp_1,0x6DABCD54 ^ 0x35BB72B9 ^ -1191346854 ^ -521289034,0x035D443F ^ -1696395424 ^ -1010312659 ^ 0x5A799172]);
      
      private static var _15076241ef0286e7c4e0b23d:Array = [_0f3bcb3dd45f77efb2a635df.filter];
      
      public static var dailyQuestsModel:_d639e2c43447781c972a23b3 = new _d639e2c43447781c972a23b3();
      
      private var _758f261d6c49979c5912ad9a:Boolean = true;
      
      private var _99dc9e8153b70544e7668e94:int;
      
      public var onClick:Function;
      
      private var _79fd076741ea163da5193688:_f11f4587bdf083a8dd45aa84;
      
      private var _33bcd7d65c61e0f4715852ab:Boolean = false;
      
      public var tooltipConfig:Object;
      
      private var _426156088eac1b9730a77727:_716ffcd3e2a1569232ccb791;
      
      public function _f6f12dbbfbe7f740316e0e9f()
      {
         super();
         name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勂劘劳劸刅勭勤剛劈劳劷切劔劙刕劝勎刼刯助勎劳刏劲勏刘劊創刼刬剁剗剹剴劆劊刑刚務刕","劥刳勈剽刁勪剢剫刔刷刉勉勧刵剫勊");
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         mouseChildren = false;
         buttonMode = true;
         var _loc1_:TextField = TextField(tooltip.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捠掶掙捸据挼挢捾推捻挸捹挍捿掬揓捥持","捆挨捵掅援掎捳捵捭捯揷捁掓捃揖揧")));
         var _loc2_:Number = _loc1_.width;
         _loc1_.autoSize = TextFieldAutoSize.LEFT;
         _loc1_.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劋劽剷勗剎勗劮刷勄到勺勻剘勘刏勻勸勱則劌划刪劓刢券劰勧剹勇刼劵劑劙劋剼剀则剘劻勘割劁刭劏别劽加刏勀削","勡劙劷勼劘刜剁剮勞剩務剶勍刭動剄"));
         if(_loc1_.width > _loc2_)
         {
            DisplayObject(tooltip.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剓剦勘刹刪勏前勼劕勂勼剙","剬勁劏剎刲副劦剋制剹勦刚券刷勎勑"))).width = DisplayObject(tooltip.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剠勆刀勠创劵劍剭募剩勅剗","別劦剳剂剱剷勒剁創删剢刔剚剷劯剿"))).width + (_loc1_.width - _loc2_);
         }
         addEventListener(MouseEvent.ROLL_OVER,this._fa4f1c68f1503771e7856f30);
         this._99dc9e8153b70544e7668e94 = tooltip.x;
         tooltip.x -= tooltip.width;
         dailyQuestsModel.addEventListener(_d639e2c43447781c972a23b3.CHANGE_DAILY_QUEST_DATA,this._c24eeac9dd235d4f7c4c89e2);
         if(dailyQuestsModel.prizeIsCollect)
         {
            this.disable();
         }
         else
         {
            this.enable();
         }
      }
      
      private function _fa4f1c68f1503771e7856f30(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_041_UI_Hover_button);
         addEventListener(MouseEvent.ROLL_OUT,this._08008742d54a03816ce555b8);
         removeEventListener(MouseEvent.ROLL_OVER,this._fa4f1c68f1503771e7856f30);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勵刘刮剝剒劸勵创劲劁勀刐勐劲刧刕刔剗勇刽刏勚勳劋","刓勺刹劆别劭勓剢剛刪勄努剄剘刭刟"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揑捞掃挘掠捦揑掴揥捩","挫掀措掰损掙掃揲捪捇掴排探授损掑")):this._99dc9e8153b70544e7668e94},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဆჽႹႶၯთႊჃႲအၥုႬဗႂသ","ၭႈ჏ဳ႕გႬၻ၆ဩ၎ၸဧၯ၅ၔ")):Cubic.easeOut});
      }
      
      private function _08008742d54a03816ce555b8(param1:MouseEvent) : void
      {
         removeEventListener(MouseEvent.ROLL_OUT,this._08008742d54a03816ce555b8);
         addEventListener(MouseEvent.ROLL_OVER,this._fa4f1c68f1503771e7856f30);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劁剚剠勳勺剜剼刎効劎劆励到刧剡剱刍力办刌初刃劽割","别刹刜勲劥勬剙制剟刕勬勴券劀劵劧"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙挶揚捙捹挔挏挨挎挣","揮掦援捭挦掁捿捦掞挚捞挥捷捅捓揲")):this._99dc9e8153b70544e7668e94 - tooltip.width},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ი့ဪჱ჻ၠဏဿკးၘႸწဟဪ႘","ႬျၢႴႛီီႦႆၞဇႄႅယႫ၎")):Cubic.easeOut});
      }
      
      public function onMouseClick(param1:MouseEvent = null) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_042_UI_Click_button);
         dailyQuestsModel.addEventListener(_d639e2c43447781c972a23b3.CHANGE_DAILY_QUEST_DATA,this._f9509c3649ce4002127d0bb4);
         dailyQuestsModel._e9e9594e88dc6df729508784();
         this._79fd076741ea163da5193688 = new _f11f4587bdf083a8dd45aa84(_141a5f7d84a4cfae1680515b.TYPE_BUBBLES);
         _745ca4cad2f6acc1f3084ea1._2b080f46e549b4b5a001764c(this._79fd076741ea163da5193688);
      }
      
      private function _f9509c3649ce4002127d0bb4(param1:Event) : void
      {
         var _loc2_:int = 0x3D5E69DF ^ -187100740 ^ -294768191 ^ 0x6347976F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x205F6DA6 ^ -1797489463 ^ -946955181 ^ 0x37A353F3))
            {
               case 0:
                  this._426156088eac1b9730a77727.show();
                  _loc2_ = 0x1BE1F9E9 ^ 0x4063A8C7 ^ -496284354 ^ -45628706;
                  break;
               case 1:
                  return;
               case 2:
                  _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._79fd076741ea163da5193688);
                  this._79fd076741ea163da5193688 = null;
                  this._426156088eac1b9730a77727 = app.dialogFactory._008fc453eb0fbe7978c8bc42();
                  this._426156088eac1b9730a77727.setData(dailyQuestsModel.dailyQuestData);
                  if(app.user.isTalkingWithNPC.value == false)
                  {
                     _loc2_ = 0x763AE0B9 ^ 0x662671CF ^ -2107095368 ^ -690353919;
                  }
                  else
                  {
                     _loc2_ = -1894542462 ^ 0x5BD38133 ^ 0x58FAA9C5 ^ -929798728;
                  }
                  break;
               case 3:
                  app.user._3d476b4a3e07300e30a6726e(this._80ed8c0a72fa92b4ecbab1ef);
                  _loc2_ = -1741277825 ^ -1531142173 ^ -67457945 ^ -2082547659;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c24eeac9dd235d4f7c4c89e2(param1:Event) : void
      {
         var _loc2_:int = 0x3922DF13 ^ -1982698968 ^ -337778846 ^ 0x315BC4BE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1113762836 ^ -1931218126 ^ -405598186 ^ -1126488531))
            {
               case 0:
                  this.enable();
                  _loc2_ = -1283706805 ^ 0x2AE21F7E ^ 0x6B429882 ^ -1733680815;
                  break;
               case 1:
                  this.disable();
                  _loc2_ = 0x0142761C ^ -1961458748 ^ 0x73C127B2 ^ -1813822324;
                  break;
               case 2:
                  dailyQuestsModel.removeEventListener(_d639e2c43447781c972a23b3.CHANGE_DAILY_QUEST_DATA,this._c24eeac9dd235d4f7c4c89e2);
                  if(dailyQuestsModel.dailyQuestData[_d639e2c43447781c972a23b3.PRIZE_IS_COLLECT])
                  {
                     _loc2_ = 0x223BFF9B ^ 0x5EDF6BA9 ^ 0x03203993 ^ 0x15B23B45;
                  }
                  else
                  {
                     _loc2_ = -1386339291 ^ 0x6BCC4BF7 ^ 0x087EE665 ^ -1533403310;
                  }
                  break;
               case 3:
                  dispatchEvent(new Event(DAILY_QUEST_DATA_INIT));
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _80ed8c0a72fa92b4ecbab1ef(param1:Event) : void
      {
         var _loc2_:int = 0x23F122BE ^ 0x54ACD733 ^ 0x6F736AEE ^ -53379077;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x53305573 ^ -397731126 ^ -2010309663 ^ -676743999))
            {
               case 0:
                  app.user._55255f9d420cfafab391a727(this._80ed8c0a72fa92b4ecbab1ef);
                  this._426156088eac1b9730a77727.show();
                  _loc2_ = 0x76BCE92B ^ 0x741E5C2B ^ 0x695904E6 ^ -1895542403;
                  break;
               case 1:
                  if(app.user.isTalkingWithNPC.value == false)
                  {
                     _loc2_ = -465022109 ^ -125701421 ^ -1675972117 ^ 0x642CF0C2;
                  }
                  else
                  {
                     _loc2_ = -1508429311 ^ -1341173701 ^ -1707636161 ^ 0x68D0089E;
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
      
      public function destroy() : void
      {
         var _loc1_:int = -1883466851 ^ -234976975 ^ 0x0285090F ^ -902048256;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-188167635 ^ 0x38A87EDB ^ 0x67DCEA8D ^ 0x1D409BD9))
            {
               case 0:
                  return;
               case 1:
                  this.deactivate();
                  if(parent != null)
                  {
                     _loc1_ = -879610901 ^ 0x6593E50F ^ -990901834 ^ -603120910;
                  }
                  else
                  {
                     _loc1_ = 0x7B89263B ^ 0x662BC712 ^ -1387506838 ^ 0x061277E1;
                  }
                  break;
               case 2:
                  parent.removeChild(this);
                  _loc1_ = -228782522 ^ -741000974 ^ -825641716 ^ 0x59BD461A;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function get height() : Number
      {
         return 0x3902536F ^ 0x0C68D854 ^ -1190202550 ^ -1939572678;
      }
      
      public function isEnabled() : Boolean
      {
         return this._758f261d6c49979c5912ad9a;
      }
      
      public function disable() : void
      {
         this._758f261d6c49979c5912ad9a = false;
         removeEventListener(MouseEvent.ROLL_OVER,this._fa4f1c68f1503771e7856f30);
         removeEventListener(MouseEvent.ROLL_OUT,this._08008742d54a03816ce555b8);
         removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.filters = _15076241ef0286e7c4e0b23d;
      }
      
      public function enable() : void
      {
         this._758f261d6c49979c5912ad9a = true;
         this.tooltipConfig = null;
         this.filters = [];
         addEventListener(MouseEvent.ROLL_OVER,this._fa4f1c68f1503771e7856f30);
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
      }
      
      public function getTooltipType() : TooltipType
      {
         var _loc1_:int = -304724146 ^ -1870754232 ^ -1014858646 ^ -651283416;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x29D4FDC6 ^ 0x3EFEEA57 ^ -833796982 ^ -1100754337))
            {
               case 0:
                  if(_f6f12dbbfbe7f740316e0e9f.dailyQuestsModel._e4907aaeb95acdc5444b0b36())
                  {
                     _loc1_ = 0x7852DB2D ^ 0x6526040B ^ 0x2D0F0FA4 ^ 0x577F51C7;
                  }
                  else
                  {
                     _loc1_ = -998035410 ^ -1851325579 ^ -2000344761 ^ -1159357606;
                  }
                  break;
               case 1:
                  return _1d9c72ffd33c517a03ce13ee.TEXT_TOOLTIP;
               case 2:
                  return null;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         var _loc1_:int = _f6f12dbbfbe7f740316e0e9f.dailyQuestsModel._0197120ef6d49b0893064c98();
         this.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勀勑勂刁勤劦勅剿勋劳刼劬剞势勓創","刦劳劥勼刳勿劇剘剋剃剄加割劾剝剚")):_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揹挗捙捕挊捔掽捖捍捚挩插掃挢捉揫捙挶揗捞揵掛揹揩掝捔掏挪插捍掅揷揷挵捾捣捍捨掀揰掬挽揚插换掳揲捨揋捈挺挾掗插振捘挃掦掺揵揤揟","揟握掀揸挺挛捸掕掂捴挋揮挷捵掆揍")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勏劼助勑勦则动列刐勹刟勠勧刽剛劂刮功則勸","劦劾劫初劄勺勺劔劚剩勳劥势勏勳剼"),_c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(_loc1_))};
         return this.tooltipConfig;
      }
      
      public function deactivate() : void
      {
         var _loc1_:int = 0x205ACBD7 ^ -1987149132 ^ 0x07D0A2E7 ^ 0x08E681FB;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-366466157 ^ -986994781 ^ -16823482 ^ 0x771EAD09))
            {
               case 0:
                  if(dailyQuestsModel != null)
                  {
                     _loc1_ = -57822045 ^ -772629322 ^ 0x7F61A8AE ^ -184751419;
                  }
                  else
                  {
                     _loc1_ = -616685719 ^ 0x08CB721D ^ 0x2906E863 ^ 0x5C11EF6C;
                  }
                  break;
               case 1:
                  dailyQuestsModel.removeEventListener(_d639e2c43447781c972a23b3.CHANGE_DAILY_QUEST_DATA,this._f9509c3649ce4002127d0bb4);
                  _loc1_ = 0x1D1487FE ^ 0x2898674D ^ -516428093 ^ 0x7259640B;
                  break;
               case 2:
                  return;
               case 3:
                  removeEventListener(MouseEvent.CLICK,this.onMouseClick);
                  _loc1_ = 0x389BDF4A ^ -16405955 ^ 0x55B828E6 ^ 0x34C437EC;
                  break;
               case 4:
                  if(hasEventListener(MouseEvent.CLICK))
                  {
                     _loc1_ = 0x1D84E523 ^ 0x610F214C ^ -1946012997 ^ 0x566B9CA8;
                  }
                  else
                  {
                     _loc1_ = 0x4EDFAC05 ^ 0x637D48FC ^ 0x4A4870BD ^ -1056375239;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

