package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._73f5d17d09eb8739d4a22162;
   import com.ax3.display.wrappers.impl._ddf29697ecb85732c2e48007;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import com.ax3.utils._a8d907fd0d19c674da3a32f4;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _211b92248baafbfbfc3db418 extends _8071087ebe26c264282580d0
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:_6b91a781d828662e84e05553;
      
      public var fish_name:TextField;
      
      public var time_left:TextField;
      
      public var success_chance:TextField;
      
      public var stars:MovieClip;
      
      public var minus_minutes:TextField;
      
      public var plus_chance:TextField;
      
      public var chance_percent:TextField;
      
      public var time_left_timer:TextField;
      
      public var addChanceButton:FrameButtonWrapper;
      
      public var subTimeButton:FrameButtonWrapper;
      
      public var fishcoinsIndicator:_ddf29697ecb85732c2e48007;
      
      public var fishbucksIndicator:_73f5d17d09eb8739d4a22162;
      
      public function _211b92248baafbfbfc3db418()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬揥揬掔掑挚揹挧捛掬捒掓捷挾掞換挳挴捿捀挊挧揢授掁揞挮捾捔挆捒捼掔挭指揮揍掝捧捬挔掳掜挬捋捥","揷挏捜揢揚捓捳揤捨捆挔挛捸捸探振");
         super(_loc1_);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.closeButton.handler = this._37697c94197a63a95f11a93e;
         this.title.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别刴勷剑切勆刐劤勚创办劺剦劇剎剃劫刺勇刟勓剳勍务勔划刣功劵刓力刨劒剖勾劥剶勞剕勣劂券勚剆刌劢勒勢刹劙副劘剻劚剔别刈劽劇劙","剣励劳勴劝刖劦刔勽刚刽剢剓募刦劼"));
         this.time_left.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刚剉勥劯勩勥券劶勹剜剛功刔勊剳刊刬刎劊剦刪剙効勻剔副劜剕劦勔助勼刂刑勶助助勑劦剳势勭勗剻劘割募勜別刄剽剆剂勰劒勼勯勉剙刣刈勹则努劋刦刁劺","切剅勤剌刐务勃劝剹列勠勜刼勽勗勵")) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挰掐揦挫挙掀接捦挊揝","插换挞揭掂揇捇挔持挣指挜揀探揼挆");
         this.success_chance.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဃႏၮႰკဤჲပၻუငრၐაჍဍ჋ეၽ္၌ၡႥၿ႐ჴႶၬႄၲဇၾၥႰႣဨჵႤჽႋႃ႐ႎაეႡႬუ႟჋းၧႮၴჵბႪ၇ဧွမჽြႥညႣဿၩၟჲဈჂ၅Ⴢိჸ჆က","ၘုჲ჋ხ႖႑ၛჯႯဢ္ႅၦႈႻ")) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣捘挕揼掆掻挅揀揤掛","挵插採捌掣捭揑揙揵捙挽排揼掵排挕");
         this.minus_minutes.text = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劭勼劃刂剃刚劰剔劭剩刘刌剺効勩劽","勧労剜刦刢勫刖勷労刕分剓剑刹勜劇") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劋刭初刘勎剅剼劉剗刪劒劇办删劘剂刁劲剙勝劐勄","剗刲刖剉劆劧剳刼刎勈劑勖剖剱刽勌")) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჩႭၖჱ჊ႲၬၰႬთ","პၸႊမႳ၇წၘჵဤဢჶ၇ၴႜႲ");
         this.plus_chance.text = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳ၆პႷჴၚႾძლႻၣၘ႒Ⴛစူ","႑Ⴭဪ၍ၒჭဋာဍ၆ၓლ၄ႂႊႶ") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捯捒挀掵挙描挔揷掅捉捪揱捈揢挾挠握捊振揽","捊揋接捹換授挣挄挃掙掇掼挈掶揰揧")) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၩဒႼဿျၥჴၲၴჹ","တჸဦჂႆႅဦဂႇჺါ်ၟႵၖჀ");
         this.fishcoinsIndicator.addButton.handler = GameSwf.instance._e6f0a7b005cacf7751286e97;
         this.fishbucksIndicator.addButton.handler = GameSwf.instance._cb81036d0354ae254b0556b1;
         this.fishbucksIndicator.setFishBucks = app.user.fishbucks;
         this.fishcoinsIndicator.setFishCoins = app.user.fishcoins;
         this.fishcoinsIndicator.label.text = _a8d907fd0d19c674da3a32f4._b59de14642fc8a3e6112b7fd(app.user.fishcoins).toString();
         this.fishbucksIndicator.label.text = _a8d907fd0d19c674da3a32f4._b59de14642fc8a3e6112b7fd(app.user.fishbucks).toString();
         app.user._b4cae3abe96a2089ccbc80fc(this._c87a9c06a9b546eb5fc05000);
         app.user._c2cb288bf8bd6f749d06eb93(this._4cfe7f65cbc3dd5856c5872d);
         super._935ac2966ddad68dfc449202();
      }
      
      protected function _37697c94197a63a95f11a93e(param1:MouseEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         app.user._8577097c0ec141ab849ff3ae(this._c87a9c06a9b546eb5fc05000);
         app.user._c9d56ed8e8557c55b8235f4f(this._4cfe7f65cbc3dd5856c5872d);
         super.close();
      }
      
      private function _c87a9c06a9b546eb5fc05000(param1:_720429110fd3cfc01812b5a0) : void
      {
         this.fishbucksIndicator.setFishBucks = int(param1.newValue);
      }
      
      private function _4cfe7f65cbc3dd5856c5872d(param1:_720429110fd3cfc01812b5a0) : void
      {
         this.fishcoinsIndicator.setFishCoins = int(param1.newValue);
      }
   }
}

