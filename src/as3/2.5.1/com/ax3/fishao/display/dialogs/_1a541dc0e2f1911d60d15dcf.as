package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._d248fcdc0f7611518f3784e3;
   import com.ax3.fishao.model.types._3e150da9e23ba0916ccbf8e9;
   import com.ax3.fishao.model.types._5b7284c7fd381f8e2dcb8905;
   import com.ax3.fishao.model.vo._4958d20007bef43d6fa5624d;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._18e7e995c035945574a2abc9;
   import com.ax3.fishao.view.dialogs._6e3e496e7a4ab1988577523d;
   import com.ax3.fishao.view.dialogs._f0bf8b8194e79c9122458f74;
   import flash.events.MouseEvent;
   
   public class _1a541dc0e2f1911d60d15dcf extends _18e7e995c035945574a2abc9
   {
      
      private var _16d6bc21425bc047122a1474:_4958d20007bef43d6fa5624d;
      
      public var processReportHandler:Function;
      
      public function _1a541dc0e2f1911d60d15dcf()
      {
         super();
      }
      
      public function _27d0c2c0e8a772401e2175c6(param1:_4958d20007bef43d6fa5624d) : void
      {
         this._16d6bc21425bc047122a1474 = param1;
         show();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.update();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         abuserPanel.viewProfileButton.handler = this._c85ceda0d051a535fce65692;
         abuserPanel.viewLogsButton.handler = this._5ced3a7a3208dfc741f3fdd6;
         reporterPanel.viewProfileButton.handler = this._1d21eeeffa03d5f6c5a5e55e;
         reporterPanel.viewLogsButton.handler = this._7b2ec76a3fc6fe1b15b27dfc;
         processButton.handler = this._a4eda2090fdc468a02971898;
      }
      
      private function _a4eda2090fdc468a02971898(param1:MouseEvent) : void
      {
         var _loc2_:_532cdbb4a995ec5c253adbc5 = app.dialogFactory._3687890959399d31d2252ca9();
         _loc2_.handlerReportSuccess = this._3b12c6a4efe7b27544b59114;
         _loc2_._27d0c2c0e8a772401e2175c6(this._16d6bc21425bc047122a1474);
      }
      
      private function _c85ceda0d051a535fce65692(param1:MouseEvent) : void
      {
         var _loc2_:_6e3e496e7a4ab1988577523d = app.dialogFactory._8d55f033b2325aa0d830aa55();
         _loc2_._e52343156d490543715f0266(this._16d6bc21425bc047122a1474.abuserUsername);
         _loc2_.show();
      }
      
      private function _1d21eeeffa03d5f6c5a5e55e(param1:MouseEvent) : void
      {
         var _loc2_:_6e3e496e7a4ab1988577523d = app.dialogFactory._8d55f033b2325aa0d830aa55();
         if(this._16d6bc21425bc047122a1474.status == _5b7284c7fd381f8e2dcb8905.CLOSED)
         {
            _loc2_._e52343156d490543715f0266(this._16d6bc21425bc047122a1474.abuserUsername);
         }
         else
         {
            _loc2_._e52343156d490543715f0266(this._16d6bc21425bc047122a1474.reporterUsername);
         }
         _loc2_.show();
      }
      
      private function _5ced3a7a3208dfc741f3fdd6(param1:MouseEvent) : void
      {
         var _loc2_:_f0bf8b8194e79c9122458f74 = app.dialogFactory._0b51743fd74146c6929027c6();
         _loc2_.viewedByModerator = true;
         _loc2_.init(this._16d6bc21425bc047122a1474.abuserUsername);
         _loc2_.show();
      }
      
      private function _7b2ec76a3fc6fe1b15b27dfc(param1:MouseEvent) : void
      {
         var _loc2_:_f0bf8b8194e79c9122458f74 = app.dialogFactory._0b51743fd74146c6929027c6();
         _loc2_.viewedByModerator = true;
         if(this._16d6bc21425bc047122a1474.status == _5b7284c7fd381f8e2dcb8905.CLOSED)
         {
            _loc2_.init(this._16d6bc21425bc047122a1474.abuserUsername);
         }
         else
         {
            _loc2_.init(this._16d6bc21425bc047122a1474.reporterUsername);
         }
         _loc2_.show();
      }
      
      private function _3b12c6a4efe7b27544b59114() : void
      {
         var _loc1_:int = 0x6B8397DE ^ 0x58315F83 ^ -355718219 ^ 0x455E9A2F;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1818637573 ^ -66213516 ^ 0x1EF1841F ^ -314204587))
            {
               case 0:
                  this.processReportHandler();
                  _loc1_ = 0x34303D36 ^ 0x215B0A75 ^ -126211626 ^ 0x71316751;
                  break;
               case 1:
                  this.close();
                  return;
               case 2:
                  if(this.processReportHandler != null)
                  {
                     _loc1_ = 0x3B251791 ^ 0x44856C28 ^ -719614005 ^ 0x369B8DB7;
                  }
                  else
                  {
                     _loc1_ = -1573805551 ^ 0x5CBD3C16 ^ 0x49B27F9E ^ 0x2B1E985D;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _ec9e8fded1f21e9a06d314c7() : void
      {
         _app.dialogManager.showDialogWithOverlay(this);
      }
      
      override public function close() : void
      {
         super.close();
         if(this._16d6bc21425bc047122a1474 != null && this._16d6bc21425bc047122a1474.status == _5b7284c7fd381f8e2dcb8905.OPEN)
         {
            app.moderatorModel._a72a6703134c2589bed6226e(this._16d6bc21425bc047122a1474.key);
         }
         this._16d6bc21425bc047122a1474 = null;
      }
      
      override protected function update() : void
      {
         var _loc1_:String = null;
         if(_state == _d248fcdc0f7611518f3784e3.READY)
         {
            super.update();
            scrollText.visible = true;
            scrollTextBg.visible = true;
            abuseThemeLabel.visible = true;
            directBanDesc.visible = false;
            if(this._16d6bc21425bc047122a1474.status == _5b7284c7fd381f8e2dcb8905.OPEN)
            {
               reportState = STATE_NEW_REPORT;
               abuserPanel.username = this._16d6bc21425bc047122a1474.abuserUsername;
               app.resourceManager.replaceBitmapDataFromURL(abuserPanel.flag.image,_3b0c83955f875982aead2f14._91ebc674b1c847663ee04172(this._16d6bc21425bc047122a1474.abuserLang));
               reporterPanel.username = this._16d6bc21425bc047122a1474.reporterUsername;
               app.resourceManager.replaceBitmapDataFromURL(reporterPanel.flag.image,_3b0c83955f875982aead2f14._91ebc674b1c847663ee04172(this._16d6bc21425bc047122a1474.reporterLang));
               descriptionText = this._16d6bc21425bc047122a1474.description;
               abuseThemeLabel.text = this._16d6bc21425bc047122a1474.subject;
               chatMessagesText = this._16d6bc21425bc047122a1474._24c5dc30ce79f46fd9fea526();
            }
            else if(this._16d6bc21425bc047122a1474.status == _5b7284c7fd381f8e2dcb8905.CLOSED)
            {
               reportState = STATE_VIEW_REPORT;
               if(this._16d6bc21425bc047122a1474.punishableSide == _4958d20007bef43d6fa5624d.UNKNOWN_PUNISHABLE)
               {
                  reporterPanel.title = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劁割劺刉勖勣刦劜勪劁別刽勧勜剆剬刼勜勣剕勅則创势勾则务募剪劒刎効剳刿剘勈切勾","勎劣勹剭劮刚勸劵務勋刓勾勨剉剹刴"));
               }
               else if(this._16d6bc21425bc047122a1474.punishableSide == _4958d20007bef43d6fa5624d.ABUSER_PUNISHABLE)
               {
                  reporterPanel.title = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挢掆挚揁捖揠按揞掉揋捯揿捲掝指挢挿掆捕捫捄揈挦揄掩掆掼捷捦掠","挆掔授挒捘援揪挴掳挞揔揭掴捫挪掞"));
               }
               else if(this._16d6bc21425bc047122a1474.punishableSide == _4958d20007bef43d6fa5624d.REPORTER_PUNISHABLE)
               {
                  reporterPanel.title = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挐捥掲掣挘捞揌揮掉捲揌捥捆挫掗捓挙挂挣挒揨捥挊授揌捒挸揂捫揪挮揝挡挵","揇掇捚挗揯挝捤揱援挤揃掼掖捯掛挾"));
               }
               reporterPanel.username = this._16d6bc21425bc047122a1474.abuserUsername;
               app.resourceManager.replaceBitmapDataFromURL(reporterPanel.flag.image,_3b0c83955f875982aead2f14._91ebc674b1c847663ee04172(this._16d6bc21425bc047122a1474.lang));
               if(this._16d6bc21425bc047122a1474.subject == null || this._16d6bc21425bc047122a1474.punishableSide == _4958d20007bef43d6fa5624d.REPORTER_PUNISHABLE)
               {
                  scrollText.visible = false;
                  scrollTextBg.visible = false;
                  abuseThemeLabel.visible = false;
                  directBanDesc.visible = this._16d6bc21425bc047122a1474.punishableSide != _4958d20007bef43d6fa5624d.REPORTER_PUNISHABLE;
                  if(this._16d6bc21425bc047122a1474.banType == _3e150da9e23ba0916ccbf8e9.DISMISS_REPORT)
                  {
                     directBanDesc.text = "";
                  }
                  else
                  {
                     directBanDesc.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揵挒掀挛掽掾挕挷挴掄掵捷挛掸挝捘捾挰挽掰揀揄捔挜掵捾挺揪挬捌揪掩掠挶揇挟","揞揇捜挅掣揃挺揑掊揟挽掬掅掺揣揪") + this._16d6bc21425bc047122a1474.banType.name);
                  }
               }
               else
               {
                  descriptionText = this._16d6bc21425bc047122a1474.description;
                  abuseThemeLabel.text = this._16d6bc21425bc047122a1474.subject;
               }
               chatMessagesText = this._16d6bc21425bc047122a1474._24c5dc30ce79f46fd9fea526();
               _loc1_ = _c2ad9d37d7be0097d6d2e977.template(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴋၟဈტဵဒႌဳဤ჆ၨჸႵဉၘၸ႐႕ဘကჷၹစႚဘႫၹဤႴၨჵჵჀၲჁဿှდ","ဨႳၿ႖ბჷဝხဘၴၳჄჯႏႫჳ"),{
                  (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ბဠბდဇႠ့၎၃းႃၝჺစჵႂးၡၪႯၕჅၲႛၧ჏","ၕရ၉ရဩၟၼმ႘ြရၕჺႉე჈")):this._16d6bc21425bc047122a1474.reporterUsername,
                  (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴝစဏၟဗၶ၎ပ჆Ⴐ။ნჲႋჽဘၻၓ჻သ႓ნ","ပდၻიေ၇ၴწ၌ေ၌ါၞၬ႖Ⴉ")):_c2ad9d37d7be0097d6d2e977.get(this._16d6bc21425bc047122a1474.banType.name)
               });
               if(this._16d6bc21425bc047122a1474.banType.hasTime)
               {
                  if(this._16d6bc21425bc047122a1474.timeAgoSec > (-534338804 ^ 0x5CF8C198 ^ -440280451 ^ 0x591FB8E9))
                  {
                     _loc1_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ოჲ჈჈ჾდႹဠဨჼ႕႒","ဓკုႹႶჼဦခငၘჽჱხ၈႕ဈ") + _c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪剫剀功副務剕剥劘勒劽剓勻勐劙勆募劏劃切劢勛剸劍剿力勗勳刑别刔刖劏剑勮剿力刺勗勨剻勎劚剗刳刯剞剡","劆劐刜勉剕剈刺勹刋勊刨刞勽劂剙刻"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჋ပ၌Ⴙဣိ႑ნျჵ႟ထဓထဢၦმဝ႖ဖဦၸ၈Ⴉ","ၭჃ၂ဉယႶငპၙტ၈တၹႳဢဵ")):_c2ad9d37d7be0097d6d2e977._9c73905d95ecb7dae39a4243(this._16d6bc21425bc047122a1474.timeAgoSec)});
                  }
                  else
                  {
                     _loc1_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勒剳剋刄勂刭勥刍初劐","剳功勄刑劐勘劝到勫勋副勍勿助剨劈") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭挞捙掳揁揼揽揤掼捯揮掝揚掃捪掵掉挬揉挖挽掓捶据揜捸揥掫捜捶援挲按揈捑振掳揵捋揄捝揞挾掾揤掆掣揇揧挳捦挹揻捴挫揙挖挰揋揅捾捔捱捄","捡揲挠揲捶掌挢持挍掞掬捀挓揜捈捈"));
                  }
               }
               descriptionLabel.text = _loc1_;
               descriptionLabel.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剓勖剦勁则刐副刦劦劣勾勺剗勷剜剣","勲勗剤刈刹勬勫勩创刺刕剏勤剥刐勋")):_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ცၞႝဿႵၪူ၃ၪ႟჊ჺყႽၚၤဒဲႺႏჹႉၭဦႸၝ჉ဟု့","ဵဥးლႆႼၷსဘၕპ჌ဠစဝႢ")) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჄႱოငႪၖႨၑႰဩ","ၠႆၩჱဲჵუၽ၃ၳဥၚძင၃Ⴠ") + this._16d6bc21425bc047122a1474.penaltyDesc};
            }
         }
      }
   }
}

