package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.display.dialogs._477aae31689d8cc1711fcd75;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model.vo._4570af2a509c6469de588ba4;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _daef801c4e38e5d4bc89acd5 extends Sprite implements IAssetWrapper, _5851c671824f640d4d36d175
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _fdc383e49ab782769faaedcc:_eb2314ffc37429732989b460;
      
      private var _title:TextField;
      
      private var _8f0433914790887353ba562c:TextField;
      
      private var _c95759854f290bab4543d6c1:TextField;
      
      private var _5cab503d437ecc732be24fe9:TextField;
      
      private var _2202378f4c577568f9135c41:TextField;
      
      private var _2c3920aa912a76b5787a870c:TextField;
      
      private var _80eb828a2ac92a3fb1db2f4a:TextField;
      
      private var _eff30103e09cfd6950b96ba6:TextField;
      
      private var _515431bbbb97d9a83785a45f:MovieClip;
      
      private var _3f55813367dfcb79f8f374e6:FrameButtonWrapper;
      
      private var _073c90f45b2f2972cc666c72:FrameButtonWrapper;
      
      private var _aab775a6e4ab499c875f9c8d:FrameButtonWrapper;
      
      private var _1c134873101622e74b75887f:FrameButtonWrapper;
      
      private var _2fe371e8e4e65fa79299a503:_477aae31689d8cc1711fcd75;
      
      private var _9a237d25dd48bcde4ae536d9:_477aae31689d8cc1711fcd75;
      
      private var _8005469a6f9b0d9f1aaee224:_477aae31689d8cc1711fcd75;
      
      private var _42efd61378e8fd55e2b57ab7:_17b0e624d249fd1d3827289b;
      
      private var _c2f3c38bd17ee33747c101b7:TextField;
      
      private var _73dc37b381bee192c938be44:MovieClip;
      
      private var _317757665e3b9e35ed182a23:MovieClip;
      
      private var _6f44823f8b24bd1bcc84de27:Rectangle;
      
      public var buyHandler:Function;
      
      private var _a64cdd980ad9b51971410ca1:_4570af2a509c6469de588ba4;
      
      public function _daef801c4e38e5d4bc89acd5()
      {
         super();
      }
      
      public function get buyByFishcoinsButtonBig() : FrameButtonWrapper
      {
         return this._3f55813367dfcb79f8f374e6;
      }
      
      public function get buyByFishbucksButtonBig() : FrameButtonWrapper
      {
         return this._073c90f45b2f2972cc666c72;
      }
      
      public function get buyByFishcoinsButtonMedium() : FrameButtonWrapper
      {
         return this._aab775a6e4ab499c875f9c8d;
      }
      
      public function get buyByFishbucksButtonMedium() : FrameButtonWrapper
      {
         return this._1c134873101622e74b75887f;
      }
      
      public function get data() : Object
      {
         return this._a64cdd980ad9b51971410ca1;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = null;
         this._a64cdd980ad9b51971410ca1 = _4570af2a509c6469de588ba4(param1);
         this._3f55813367dfcb79f8f374e6.label = String(this._a64cdd980ad9b51971410ca1.priceFishcoins);
         this._073c90f45b2f2972cc666c72.label = String(this._a64cdd980ad9b51971410ca1.priceFishbucks);
         this._aab775a6e4ab499c875f9c8d.label = String(this._a64cdd980ad9b51971410ca1.priceFishcoins);
         this._1c134873101622e74b75887f.label = String(this._a64cdd980ad9b51971410ca1.priceFishbucks);
         this._59d87c9e7c1b2ba29d5daa17(this._a64cdd980ad9b51971410ca1);
         var _loc3_:String = this._a64cdd980ad9b51971410ca1.name;
         if(this._a64cdd980ad9b51971410ca1.amount > (0x7A4209B7 ^ 0x0287CA01 ^ 0x68BA8E12 ^ -276778405))
         {
            _loc3_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勷劣到剬前勂劸勝劈刑","劻刹剜刣刜勏勴劍务劝创勭刄刵劜募") + _c2ad9d37d7be0097d6d2e977.template(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႱၚთၘၳဴႦၕგဖႴႏဪჟၤင၈ჹၓ်၇ဩႜ჎Ⴛფკးႅဘჵဳჯၠ႞ဖႣဳႻ့ၭဦၤအဪဧ","ႚჸთလႤဧႥ၂ၷၸ၆ၔ჻჻ဘჲ"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ფြၡၠ္ၦၠစဌႲံဗၩဇჭჵჼႦၪၠ","ၪၾႮႩႿၚჂჅၳ႖၆ၗჲဿဎ႒")):this._a64cdd980ad9b51971410ca1.amount});
            if(this._a64cdd980ad9b51971410ca1.amount == (-618389506 ^ 0x46969001 ^ -769185791 ^ 0x4F95A7FE))
            {
               this._3f55813367dfcb79f8f374e6.disable();
               this._073c90f45b2f2972cc666c72.disable();
               this._aab775a6e4ab499c875f9c8d.disable();
               this._1c134873101622e74b75887f.disable();
            }
            else
            {
               this._3f55813367dfcb79f8f374e6.enable();
               this._073c90f45b2f2972cc666c72.enable();
               this._aab775a6e4ab499c875f9c8d.enable();
               this._1c134873101622e74b75887f.enable();
            }
         }
         this._title.text = _loc3_;
         switch(this._a64cdd980ad9b51971410ca1.type)
         {
            case _67282af25befe9778e5c8dd1.BAIT:
               §§push(0x4EDD9AB4 ^ 0x4BA5C64E ^ -479350214 ^ -434770240);
               break;
            case _67282af25befe9778e5c8dd1.ROD:
               §§push(0x6A97558A ^ 0x4EA4A9B0 ^ -530840181 ^ -999294544);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR:
               §§push(-139479686 ^ 0x4D3C506B ^ -1719084566 ^ 0x231B3CF9);
               break;
            case _67282af25befe9778e5c8dd1.LUCK_POTION:
               §§push(0x044F8F58 ^ -1996996644 ^ -1395386406 ^ 0x2063A75D);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH:
               §§push(-620024467 ^ 0x0B90E761 ^ 0x142CDF3F ^ -994634441);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER:
               §§push(-399822023 ^ 0x0EA54939 ^ 0x30DFF058 ^ -699299235);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION:
               §§push(-2081835714 ^ 0x4C059AC3 ^ 0x0A12D361 ^ -973144934);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER:
               §§push(-2101728540 ^ 0x19AF8DDA ^ 0x6190CF47 ^ -91920258);
               break;
            default:
               §§push(-340864623 ^ 0x4D6A5E13 ^ 0x647D2090 ^ -1028018406);
         }
         switch(§§pop())
         {
            case 0:
               this._2fe371e8e4e65fa79299a503.setValue(0x55E983B3 ^ -1441213842 ^ -1948125331 ^ 0x7410A6B0,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_BAIT_CATEGORY));
               this._9a237d25dd48bcde4ae536d9.setValue(-974596465 ^ 0x67649007 ^ -1521054083 ^ 0x07DAC8F5,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_BAIT_AMOUNT));
               this._8005469a6f9b0d9f1aaee224.setValue(0x5696D27B ^ -1683773482 ^ -1840640068 ^ 0x5F7F7A11,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_BAIT_EXTRA));
               break;
            case 1:
               this._2fe371e8e4e65fa79299a503.setValue(0x5E3AE9F2 ^ 0x37C8152E ^ 0x4CDD3A70 ^ 0x252FC6AC,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_ROD_SIZE));
               this._9a237d25dd48bcde4ae536d9.setValue(0x5BEF4909 ^ -1393854752 ^ 0x646F0298 ^ -1821688463,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_ROD_POWER));
               this._8005469a6f9b0d9f1aaee224.setValue(0x4B2453C4 ^ -1120521860 ^ 0x5763D63D ^ -1586383739,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_ROD_QUALITY));
               break;
            case 2:
               this._2fe371e8e4e65fa79299a503.setValue(0x3374A1BB ^ -262888039 ^ -1659139078 ^ 0x5E3B8FD8,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_FISH_RADAR));
               this._9a237d25dd48bcde4ae536d9.setValue(-1386395943 ^ 0x55070603 ^ 0x708F9340 ^ -1999252582,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case 3:
               this._2fe371e8e4e65fa79299a503.setValue(0x42A13D79 ^ -157121619 ^ -69728522 ^ 0x4FDBB822,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_LUCK_POTION));
               this._9a237d25dd48bcde4ae536d9.setValue(-2126229543 ^ -1744859468 ^ 0x0287DD6D ^ 0x143C1C00,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case 4:
               this._2fe371e8e4e65fa79299a503.setValue(-1644801486 ^ -1877769118 ^ 0x134D1D3E ^ 0x1EA8CB6E,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_MAGIC_WATCH));
               this._9a237d25dd48bcde4ae536d9.setValue(-1557679663 ^ 0x08E04974 ^ -272333 ^ 0x543C2096,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case 5:
               this._2fe371e8e4e65fa79299a503.setValue(0x5ADB01BC ^ -1472419101 ^ -296473901 ^ 0x1CB3818C,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_EXP_BOOSTER));
               this._9a237d25dd48bcde4ae536d9.setValue(0x4C716686 ^ -783079583 ^ 0x7DF6D5D8 ^ -522939329,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case 6:
               this._2fe371e8e4e65fa79299a503.setValue(-2139322730 ^ 0x75B13A62 ^ 0x015069BA ^ -190982834,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_SHINY_POTION));
               this._9a237d25dd48bcde4ae536d9.setValue(0x7BC7ECB3 ^ 0x337E3514 ^ -53300139 ^ -1268027918,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case 7:
               this._2fe371e8e4e65fa79299a503.setValue(0x0551EA85 ^ 0x5598504F ^ -1368797618 ^ -23038844,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_POWER_BOOSTER));
               this._9a237d25dd48bcde4ae536d9.setValue(0x10C8FC13 ^ 0x39E67F6C ^ 0x29C4114D ^ 0xEA9232,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
         }
         if(this._a64cdd980ad9b51971410ca1.param1 != null)
         {
            this._8f0433914790887353ba562c.visible = true;
            this._c95759854f290bab4543d6c1.visible = true;
            this._2fe371e8e4e65fa79299a503.setValue(-653533122 ^ -1563159391 ^ -1982449258 ^ -234238712,this._a64cdd980ad9b51971410ca1.param1);
         }
         else
         {
            this._8f0433914790887353ba562c.visible = false;
            this._c95759854f290bab4543d6c1.visible = false;
         }
         if(this._a64cdd980ad9b51971410ca1.param2 != null)
         {
            this._5cab503d437ecc732be24fe9.visible = true;
            this._2202378f4c577568f9135c41.visible = true;
            this._9a237d25dd48bcde4ae536d9.setValue(-378985547 ^ -618980718 ^ 0x40983617 ^ 0x72EA0F31,this._a64cdd980ad9b51971410ca1.param2);
         }
         else
         {
            this._5cab503d437ecc732be24fe9.visible = false;
            this._2202378f4c577568f9135c41.visible = false;
         }
         if(this._a64cdd980ad9b51971410ca1.param3 != null)
         {
            this._2c3920aa912a76b5787a870c.visible = true;
            this._80eb828a2ac92a3fb1db2f4a.visible = true;
            this._8005469a6f9b0d9f1aaee224.setValue(0x76A6E2EB ^ 0x78AA3CCC ^ 0x1C6CB17A ^ 0x12606F5C,this._a64cdd980ad9b51971410ca1.param3);
         }
         else
         {
            this._2c3920aa912a76b5787a870c.visible = false;
            this._80eb828a2ac92a3fb1db2f4a.visible = false;
         }
         if(this._a64cdd980ad9b51971410ca1.colors == null || this._a64cdd980ad9b51971410ca1.colors.length == (-1690862069 ^ -1841237701 ^ -1717543923 ^ -1864903875))
         {
            this._eff30103e09cfd6950b96ba6.visible = false;
         }
         else
         {
            this._24386e5b484966dd2457ea3d(this._a64cdd980ad9b51971410ca1.colors);
         }
         if(this._a64cdd980ad9b51971410ca1.blockReason != null)
         {
            this._073c90f45b2f2972cc666c72.disable();
            this._3f55813367dfcb79f8f374e6.disable();
            this._1c134873101622e74b75887f.disable();
            this._aab775a6e4ab499c875f9c8d.disable();
            this._c2f3c38bd17ee33747c101b7.text = this._a64cdd980ad9b51971410ca1.blockReason;
            addChild(this._73dc37b381bee192c938be44);
            addChild(this._317757665e3b9e35ed182a23);
            addChild(this._c2f3c38bd17ee33747c101b7);
         }
         else
         {
            this._c2f3c38bd17ee33747c101b7.visible = false;
            this._73dc37b381bee192c938be44.visible = false;
            this._317757665e3b9e35ed182a23.visible = false;
         }
         removeAllChildren(this._fdc383e49ab782769faaedcc);
         if(this._a64cdd980ad9b51971410ca1.imageUrl != null)
         {
            _loc2_ = new _a4e47350c89a50d87a148c28(null);
            _loc2_.width = this._6f44823f8b24bd1bcc84de27.width;
            _loc2_.height = this._6f44823f8b24bd1bcc84de27.height;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,this._a64cdd980ad9b51971410ca1.imageUrl);
            this._fdc383e49ab782769faaedcc.addChild(_loc2_);
            if(this._a64cdd980ad9b51971410ca1.description != null)
            {
               this._fdc383e49ab782769faaedcc.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劥劦刁劲勻勢勃勾剦剺劦劋勝剟剐勃","刐别劐力刍剀剐券刴勑劝剚剿勄列刣")):this._a64cdd980ad9b51971410ca1.description};
            }
         }
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._fdc383e49ab782769faaedcc = new _eb2314ffc37429732989b460();
         this._fdc383e49ab782769faaedcc.x = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揊探挟掹插捋挢揘掼掰掉挻挩挅掘掵挡捔","掶掃掇揟掀捨揖捯据揑掁掝掳挣捣挕")).x;
         this._fdc383e49ab782769faaedcc.y = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劾劂剏劦刣刳勏剝刡劂劮勒剉劇劆刪勗加","务勏刾剔劷劔劋刧勩効剨努剘則办刳")).y;
         this._6f44823f8b24bd1bcc84de27 = new Rectangle();
         this._6f44823f8b24bd1bcc84de27.width = int(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剒切劧劁剖勩劍勎則勎刿券剸到務務勸創","剑券刊劦勑务刦剿勚勓剳剻剂勠劀劜")).width);
         this._6f44823f8b24bd1bcc84de27.height = int(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙挅揫揔捌揔挌挌捞挋掀捜挜挲挨掹掿掀","捏挰挹揅揜捱捋捦挓挺挼揷捐捬插捝")).height);
         ShiftWrapper.shiftDisplayObject(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挊揠掐握捇捲揣捤揦掱挴揨掃挹掟挌掇掗","捲捫揸挢掶採挖挃捥掓揂揢挑揕揊掣")),this._fdc383e49ab782769faaedcc);
         this._title = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဣျၚပႛႚၤလႷဘုၖჼူၘာდ႙","ၙကჾ၎ႠჶၺႌბჰႠႅႭႥဍႝ")));
         this._8f0433914790887353ba562c = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႫဃჴႮყეၝၵႮ၇ဳပჼတძდၬဴღၦအჟႬწၴჰ","၍ဃ჻စႲဍ჌ဎვჅၘჿ჊ၸမႱ")));
         this._c95759854f290bab4543d6c1 = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剚勌到効剒劤劓劢剗剙刔刬剨剪制剼劬剖勼劐刹勾劌勗務劅","剘剨勑则劄別刀勂剽勣势勤劧勞勤勀")));
         this._2fe371e8e4e65fa79299a503 = new _477aae31689d8cc1711fcd75(this._8f0433914790887353ba562c,this._c95759854f290bab4543d6c1);
         this._2fe371e8e4e65fa79299a503.setValue(0x643909D9 ^ 0x6C5A2795 ^ 0x74F533A1 ^ 0x7C961DED,_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၿცႎႩჅ჈႐ႀႶၑႵႶბႝჅၫქႝႿ့Ⴣ၇ၼသဌႉჇპႂ္ၨწჺეჍ၄ၣဤဆူဴွဵჴႷ႗ႋჵႍჱႝၮႁၾ","်ၽჟၲၟဓၲ၂წႌပჄၦႁဋၓ")));
         this._5cab503d437ecc732be24fe9 = TextField(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掜揼捗挱掾揱挓推挊掏掗掿捚捣挻挨揦揮掓挈掅掱掞揵挧捕揭掋","揎挩揍挷挽捙掍挺捹挾捼捵挅描捍揑")));
         this._2202378f4c577568f9135c41 = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("უႢბ၍ၢၮၥၖႯႌခႴနၵၩ၌ჱၝငႋ႔ၞვဣჾ႙Ⴥპ","ၳွၻၔႌ႔ႀოယႼၱဌန჻ဨႴ")));
         this._9a237d25dd48bcde4ae536d9 = new _477aae31689d8cc1711fcd75(this._5cab503d437ecc732be24fe9,this._2202378f4c577568f9135c41);
         this._9a237d25dd48bcde4ae536d9.setValue(-1939955308 ^ 0x0BEC60B6 ^ 0x16D942DA ^ -1855224840,_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ფფ၆ၿဵဗဖ႞၈ၑၚႲဖႮႧဃႵჀ჉ႊဲႪჟိၢႠზီჅႅႧႬ჊ჺႁႊႃႼႷქၺჰႇჴ၅Ⴇ႕ၐ၆၂","ၝဦჾႰ၃ႶႅဖჹჾაႯဈႠ၎Ⴉ")));
         this._2c3920aa912a76b5787a870c = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("到勼劫刱務勝勜劊剀劣刻劀勇刚剗劖剝功努勺刏剽刊刉刚劜劷劊劝剆刮剰","刺劁刲勣勤剌労勖劑勴劳剝勑刷剗勬")));
         this._80eb828a2ac92a3fb1db2f4a = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剄刄劃剌剈力刡剈剮勔刺勾剝切剫刱勛勶劕勵剃剔勑剃刈勺剶剬分务副勅","剷勳刡勩務刞勼剪刿刐则劸刳刍剬剟")));
         this._8005469a6f9b0d9f1aaee224 = new _477aae31689d8cc1711fcd75(this._2c3920aa912a76b5787a870c,this._80eb828a2ac92a3fb1db2f4a);
         this._8005469a6f9b0d9f1aaee224.setValue(0x79C5646C ^ 0x56C2FD84 ^ -1704777046 ^ -1251691710,_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဨცჯ႘၂ა႐ဣႰ၏ႁႮၗႇႃၼმ჎შႼთႛ၍း၅ၟဓငႛေုრႧၶიဟၜჲႍ႑ဴွႠჱႯჺႝႎနထ჏ჯცၾ","ႹယဍდဏၥံၥႥႺდთ၊ဇო႐")));
         this._eff30103e09cfd6950b96ba6 = TextField(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤掘揺掌揞捇揅揤挎揬授捫插掌挫揥揸揶捰挏掠挮掛描揦捙揳挎","揼掐捾挍揱挝揻捭掞捊揯挆揔揨掄挭")));
         this._eff30103e09cfd6950b96ba6.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗勷劫劓剁剼剋勋勑勁勚劷剳勦勔励剏劤勍刮剔勵勬勳劚勄劗勰剽删刖剌勺則勭勾剠务剈刯删劅勐劝剭刀划勣勭勌","劮剧刪劍劁刖勎刐剽勡創勎刷剹刴劫"));
         this._515431bbbb97d9a83785a45f = MovieClip(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("創勥刚勯划劙刹剀券劷勚剐創剭刂刨勦劮剶剸勮勗剄前刏勶初劥勚劫剾勓勣勩刿勚勾剸勻劯","功势剙刍剶劫剻剚勻剒刷劧创刻剖劁")));
         this._515431bbbb97d9a83785a45f.visible = false;
         this._3f55813367dfcb79f8f374e6 = new FrameButtonWrapper();
         this._3f55813367dfcb79f8f374e6.process(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劉劔劰劢劆剽劶勒勄劝剩劼劾勤制刻劲勝劎刓剕刀勔刍创劢刓刂功労刻刳剁勷刭勏勱刕刉勣刻剟勚勼剻剓刢努効切刳剽努劗","勺勖刄刞刚剅则勣勦勣刾勖刕剰剃劷")));
         this._3f55813367dfcb79f8f374e6.handler = this._09e4073ab372f6d25f0ac1af;
         this._073c90f45b2f2972cc666c72 = new FrameButtonWrapper();
         this._073c90f45b2f2972cc666c72.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႂၒჾႏၐႯဩၼႦၘႲპჷႡံမြჰၑၠჰံჩვშჩၯ჻ၢၪვႹ႔ဦပၻႋစဥ့Ⴍင၉ၬႌႱ჏ူႈჭဉၻႩ჌","လეႛဘპჯာႩႌမၙၦ჌ქလါ")));
         this._073c90f45b2f2972cc666c72.handler = this._52387088a0f2be9c74f0913d;
         this._aab775a6e4ab499c875f9c8d = new FrameButtonWrapper();
         this._aab775a6e4ab499c875f9c8d.process(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捡接揠按掎挚挈揱掫捡挩挗掁挘揟揻揉掤描挼捩揚揁挘挶揥揟揣挎挘掑揑捙捒挟揟揬揸挽探揍按排描掩掷掣採挂揦指挧掫掽揔掉捑掺掭捭","捼捈捉掏捳捌揻挥掹掗掜捜控挗揣捵")));
         this._aab775a6e4ab499c875f9c8d.handler = this._09e4073ab372f6d25f0ac1af;
         this._1c134873101622e74b75887f = new FrameButtonWrapper();
         this._1c134873101622e74b75887f.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၅ုဿ႟ႤဿဘၡႏဤმနၲပၝგံაႡဇႵႺၾ၎ႻႆဋၨၛჼთႳဏန႞့ၸჼၔံါဃႲၪზ჊ၠႋჃႛსႽ့၍ၼၳၕၺႦၳ","ၙၺၫ၌Ⴠ၊წဇჇ၁ေჷၭჵႺၙ")));
         this._1c134873101622e74b75887f.handler = this._52387088a0f2be9c74f0913d;
         this._c2f3c38bd17ee33747c101b7 = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဏႳၠჃჭ႐ၥდဍဟცဌႩႏ႐ႥၜႱრ႘ၪၩဝჁႉႫ၃ၖ","ႮვႌႆႮჱၥႹკဪၲ၁ၣၙႶჃ")));
         this._73dc37b381bee192c938be44 = MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("კၘაႨႜၰქაႯႬჃငဌႼდჶლၧჷ႓ၰღ","ၩწ჻ၕညႴဠჿზၮၤလဥဟ၂ႎ")));
         this._317757665e3b9e35ed182a23 = MovieClip(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刌劂剃刺剖助劇剢勼剃判劮务刁剚剁勰劻剨勛剮勛剡勡勅劳","剟剿券創刬剉剮刀勑勍刬剀勃勷刕割")));
         addChild(this._asset);
      }
      
      private function _09e4073ab372f6d25f0ac1af(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x41BC98E0 ^ 0x5906D2DE ^ 0x4D8690FF ^ 0x71AE621B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-909609454 ^ 0x294BFB4E ^ -1100684237 ^ 0x7A75D1B7))
            {
               case 0:
                  if(this._42efd61378e8fd55e2b57ab7 != null)
                  {
                     _loc2_ = 0x76559DA6 ^ -1358047656 ^ -1331727445 ^ 0x4D55808E;
                  }
                  else
                  {
                     _loc2_ = 0x2DAAF25F ^ 0x083DC2AB ^ 0x445A901C ^ 0x455F1834;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  if(this.buyHandler != null)
                  {
                     _loc2_ = 0x3080E763 ^ -182791350 ^ 0x0BA0BF5D ^ -358075476;
                  }
                  else
                  {
                     _loc2_ = 0x143F24DE ^ 0x0ABA657E ^ 0x1CF8D08D ^ 0x26EF29F4;
                  }
                  break;
               case 3:
                  this._a64cdd980ad9b51971410ca1.selectedColor = this._42efd61378e8fd55e2b57ab7.selectedColor;
                  _loc2_ = 0x13C50C2D ^ 0x6D08071A ^ -876651482 ^ -1847529523;
                  break;
               case 4:
                  this.buyHandler(this._a64cdd980ad9b51971410ca1,_67282af25befe9778e5c8dd1.FISHCOINS.id);
                  _loc2_ = -1177605809 ^ -204134445 ^ -912515791 ^ -1491817612;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _52387088a0f2be9c74f0913d(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x7BD41065 ^ -1878517438 ^ 0x5C855EFD ^ -908773718;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1103723560 ^ -1235300347 ^ 0x747FA255 ^ 0x029B90F8))
            {
               case 0:
                  if(this.buyHandler != null)
                  {
                     _loc2_ = -2077069926 ^ 0x51F65CED ^ -1225266933 ^ 0x1DBFB90F;
                  }
                  else
                  {
                     _loc2_ = 0x155BE364 ^ -1039133463 ^ -1052180135 ^ 0x688E97A6;
                  }
                  break;
               case 1:
                  this._a64cdd980ad9b51971410ca1.selectedColor = this._42efd61378e8fd55e2b57ab7.selectedColor;
                  _loc2_ = -668339664 ^ -1901784335 ^ -1555943369 ^ -1958563454;
                  break;
               case 2:
                  return;
               case 3:
                  if(this._42efd61378e8fd55e2b57ab7 != null)
                  {
                     _loc2_ = -747172499 ^ -2106375128 ^ -540538580 ^ -264232680;
                  }
                  else
                  {
                     _loc2_ = -1840822006 ^ -1843700822 ^ 0x1A8268A8 ^ 0x64521B7C;
                  }
                  break;
               case 4:
                  this.buyHandler(this._a64cdd980ad9b51971410ca1,_67282af25befe9778e5c8dd1.FISHBUCKS.id);
                  _loc2_ = -937699217 ^ -1984830150 ^ 0x1A760404 ^ 0x25505823;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _59d87c9e7c1b2ba29d5daa17(param1:_4570af2a509c6469de588ba4) : void
      {
         if(param1.priceFishbucks >= (-1497436466 ^ -983871153 ^ -732699344 ^ -1212785999) && param1.priceFishcoins >= (-1931553081 ^ 0x2513B9C5 ^ -398683931 ^ 0x41F1FFE7))
         {
            if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剀勦劂到勲剡刴勯勍劬刕劲则劗劒刧勣劇剼創","劷劗削勃剀劦劽劙刱剚剋勞勧劰刽务")) && param1.colors != null && param1.colors.length > (-1832577497 ^ -1884325118 ^ -555396636 ^ -1014022975))
            {
               this._073c90f45b2f2972cc666c72.visible = false;
               this._3f55813367dfcb79f8f374e6.visible = false;
               this._aab775a6e4ab499c875f9c8d.x = 0x347AF6C9 ^ 0x715F50E9 ^ -419169257 ^ -1574545384;
               this._aab775a6e4ab499c875f9c8d.y = -1661958047 ^ 0x320C341C ^ -39300070 ^ 0x5354E837;
               this._1c134873101622e74b75887f.x = -996286719 ^ -1707949281 ^ 0x685575CD ^ 0x36FA6816;
               this._1c134873101622e74b75887f.y = -1116752175 ^ -574548907 ^ -1115714737 ^ -573494885;
            }
            else
            {
               this._1c134873101622e74b75887f.visible = false;
               this._aab775a6e4ab499c875f9c8d.visible = false;
               this._3f55813367dfcb79f8f374e6.x = 0x096A245B ^ 0x1D4817BE ^ -346422635 ^ -8899733;
               this._3f55813367dfcb79f8f374e6.y = 0x7A395000 ^ -580081458 ^ 0x033FF0D0 ^ -1536554992;
               this._073c90f45b2f2972cc666c72.x = 0x4F180607 ^ 0x353303D6 ^ -135837412 ^ -1915990314;
               this._073c90f45b2f2972cc666c72.y = -1625696919 ^ -2013420181 ^ -358661201 ^ -226806815;
            }
         }
         else if(param1.priceFishbucks < (0x6CB42B9C ^ -411875808 ^ -2103954828 ^ 0x095F5FC8) && param1.priceFishcoins >= (-1887273498 ^ -2054855304 ^ -1781061498 ^ -1613746152))
         {
            this._073c90f45b2f2972cc666c72.visible = false;
            this._1c134873101622e74b75887f.visible = false;
            this._aab775a6e4ab499c875f9c8d.visible = false;
            if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑႞ၩ჋ၿႛၒႱ჈ႥဤျဵဣၝးႼြႆၻ","ႅႪႜၐၕံႁ့Ⴌဨသခჹျ჈န")) && param1.colors != null && param1.colors.length > (-1997345071 ^ 0x15C9673D ^ -177553909 ^ 0x685137E7))
            {
               this._3f55813367dfcb79f8f374e6.x = -973976179 ^ -1977152277 ^ 0x09A163D3 ^ 0x467420AE;
               this._3f55813367dfcb79f8f374e6.y = -2023332851 ^ -1101094666 ^ -1173334288 ^ -2094493113;
            }
            else
            {
               this._3f55813367dfcb79f8f374e6.x = 0x432490AC ^ -1855225933 ^ 0x356F3C96 ^ -417279598;
               this._3f55813367dfcb79f8f374e6.y = -461356873 ^ 0x56E21AEB ^ -1821817309 ^ 0x210B1C52;
            }
         }
      }
      
      private function _24386e5b484966dd2457ea3d(param1:Vector.<_91aad973ddd3030366bf3e1f>) : void
      {
         var _loc2_:int = -1250807811 ^ -789336954 ^ -881587721 ^ -628764106;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1014822414 ^ 0x5FC7B6C5 ^ 0x7C24A07C ^ -1810872333))
            {
               case 0:
                  this._42efd61378e8fd55e2b57ab7 = new _17b0e624d249fd1d3827289b(this._515431bbbb97d9a83785a45f,this,this._a64cdd980ad9b51971410ca1.id);
                  _loc2_ = -620299151 ^ -1126472981 ^ -1498533401 ^ -1258031164;
                  break;
               case 1:
                  this._42efd61378e8fd55e2b57ab7._4096a421aec0e1671583161c(param1);
                  this._42efd61378e8fd55e2b57ab7._36e02c53b4ca314d3d8ed766(this._fdc383e49ab782769faaedcc);
                  return;
               case 2:
                  if(this._42efd61378e8fd55e2b57ab7 == null)
                  {
                     _loc2_ = 0x5DD823C5 ^ 0x4200108F ^ 0x1014A781 ^ 0x7BBCCC73;
                  }
                  else
                  {
                     _loc2_ = 0x09DAA329 ^ 0x275E9B71 ^ 0x24375A06 ^ 0x7EC33AE7;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
         this.data = this._a64cdd980ad9b51971410ca1;
      }
   }
}

