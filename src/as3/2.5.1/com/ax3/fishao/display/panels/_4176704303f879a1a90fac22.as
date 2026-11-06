package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.display.popups._e954eed354e62564d4e8cd3c;
   import com.ax3.fishao.model.pling._acdfca446f7bd1a1ed443c02;
   import com.ax3.fishao.model.pling._f1c07aba4df28c8631391058;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.buttons.FishaoBaseButton;
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   import com.ax3.utils.timer._33dd41a12065671be9311587;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class _4176704303f879a1a90fac22 extends Sprite
   {
      
      private const _15e9fd5899cebbedbc007114:int = 3;
      
      private const _ef72cc78b6219f4c204bdd2a:int = 3;
      
      private const _3951adf34f7e553eff4fe483:int = 5;
      
      private var _ca3cd7a184ad03c411e054c5:Sprite;
      
      private var _605a3229b6d1ea5d6df29dfb:Vector.<_e954eed354e62564d4e8cd3c> = new Vector.<_e954eed354e62564d4e8cd3c>();
      
      private var _8a410bcd43690a3cec57a458:Dictionary = new Dictionary();
      
      private var _e8c466ff8c90462ad523ab93:Vector.<_e954eed354e62564d4e8cd3c> = new Vector.<_e954eed354e62564d4e8cd3c>();
      
      public function _4176704303f879a1a90fac22(param1:Sprite)
      {
         super();
         this._ca3cd7a184ad03c411e054c5 = param1;
         this.activate();
      }
      
      private function _eb3691d539ec00513b975af3(param1:Event) : void
      {
         this._49dc1cc3bedee0f26bae1843();
      }
      
      private function _49dc1cc3bedee0f26bae1843() : void
      {
         var _loc1_:_e954eed354e62564d4e8cd3c = null;
         var _loc2_:_acdfca446f7bd1a1ed443c02 = null;
         while(app.plings.newCount > (-174300368 ^ -1411110799 ^ 0x38968C0F ^ 0x66EEC74E))
         {
            _loc2_ = app.plings._78f936d8568b9e96c7b6ec90();
            if(!this._98524aea477e59be4d0d134f(_loc2_))
            {
               if(_loc2_ != null)
               {
                  _loc1_ = new _e954eed354e62564d4e8cd3c();
                  _loc1_.id = _loc2_.id;
                  _loc1_.text = _loc2_.message;
                  _loc1_.close.handler = this._da6421dc4690b8309a56c83f;
                  if(_loc2_.action != null)
                  {
                     _loc1_.useHandCursor = true;
                     _loc1_.buttonMode = true;
                  }
                  else
                  {
                     _loc1_.useHandCursor = false;
                     _loc1_.buttonMode = false;
                  }
                  _loc1_.alpha = 0x05C5523E ^ 0x41AA27C3 ^ -254559697 ^ -1262694446;
                  _loc1_.data = _loc2_;
                  if(_loc2_.action != null)
                  {
                     _loc1_.addEventListener(MouseEvent.CLICK,this._ba5595cc4ab380e820b56a2d);
                     _loc1_._6c9cdc942f359b4cafa13332();
                  }
                  this._e8c466ff8c90462ad523ab93.push(_loc1_);
                  this._04bd2a17ae121c30428321e0();
               }
            }
         }
      }
      
      private function _98524aea477e59be4d0d134f(param1:_acdfca446f7bd1a1ed443c02) : Boolean
      {
         var _loc2_:_e954eed354e62564d4e8cd3c = null;
         var _loc3_:_e954eed354e62564d4e8cd3c = null;
         if(param1.type == _f1c07aba4df28c8631391058.TOURNAMENT_START_IN)
         {
            for each(_loc2_ in this._e8c466ff8c90462ad523ab93)
            {
               if(_loc2_.data.type == _f1c07aba4df28c8631391058.TOURNAMENT_START_IN)
               {
                  return true;
               }
            }
            for each(_loc3_ in this._605a3229b6d1ea5d6df29dfb)
            {
               if(_loc3_.data.type == _f1c07aba4df28c8631391058.TOURNAMENT_START_IN)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function _ba5595cc4ab380e820b56a2d(param1:MouseEvent) : void
      {
         var _loc2_:_e954eed354e62564d4e8cd3c = _e954eed354e62564d4e8cd3c(param1.currentTarget);
         if(!(param1.target is FishaoBaseButton))
         {
            _loc2_.data.action(param1);
         }
      }
      
      private function _04bd2a17ae121c30428321e0() : void
      {
         var _loc1_:_e954eed354e62564d4e8cd3c = null;
         while(this._605a3229b6d1ea5d6df29dfb.length < this._15e9fd5899cebbedbc007114 && this._e8c466ff8c90462ad523ab93.length > (0x2838694F ^ 0x0651AA4B ^ 0x6044C355 ^ 0x4E2D0051))
         {
            _loc1_ = this._e8c466ff8c90462ad523ab93.shift();
            if(this._605a3229b6d1ea5d6df29dfb.length > (0x25EA3D70 ^ 0x4F439BCC ^ -2097476168 ^ -397235452))
            {
               _loc1_.y = this._605a3229b6d1ea5d6df29dfb.length * (this._605a3229b6d1ea5d6df29dfb[this._605a3229b6d1ea5d6df29dfb.length - 1].height + this._3951adf34f7e553eff4fe483);
            }
            addChild(_loc1_);
            this._605a3229b6d1ea5d6df29dfb.push(_loc1_);
            TweenLite.to(_loc1_,-589827672 ^ 0x779BFE88 ^ -2092240815 ^ 0x2806FF70,{
               (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წႍၓၾႿ၅ဲဝႁႸေ။ၢႠၮာ႖ၩ","ၗၓးၖეဧႉრ။კჲၸၥၭႝႊ")):-2143342142 ^ 0x4157E888 ^ 0x61FE5D4A ^ -1600748543,
               (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劈剏劝募动剩分労剣勘刵勎刱創劍助刚切勭勘劦劭剖剤刳划利分","刷刕刉勰剩劣勼勦勠劶劅勆劆劇勬刊")):this._aedfdb6cf920392df7aac5e0,
               (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჅၸტႮႻႆც၆ၑပ၆ჶၢ္ၼ႟ၿႽႳဪၬအ႕Ⴞ၇჆კ჊ဝၕႤჼფၴၳႰ၏Ⴗၪ჋","ဩျფဍၨႱჇ჉ၫუၱဓჀဋ႙ဟ")):[_loc1_]
            });
            _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_070_UI_Generic_ping);
         }
         if(this._605a3229b6d1ea5d6df29dfb.length > (0x415D5850 ^ -398997783 ^ 0x76C6A5DE ^ -542360729))
         {
            this._ca3cd7a184ad03c411e054c5.addChild(this);
         }
         else if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function _aedfdb6cf920392df7aac5e0(param1:_e954eed354e62564d4e8cd3c) : void
      {
         if(param1.data.mustBeRead == false)
         {
            this._8a410bcd43690a3cec57a458[param1] = new _33dd41a12065671be9311587();
            _33dd41a12065671be9311587(this._8a410bcd43690a3cec57a458[param1])._bc1d2c0c359bffe4ef99cfee(app.plings.newCount > this._15e9fd5899cebbedbc007114 ? 0x261B7F06 ^ 0x45BBC5DF ^ -631461821 ^ -1174662501 : this._ef72cc78b6219f4c204bdd2a,new _0ce7a4d99e17666ff0e19ce6(this._f5c3f3d5bc56c4c23a1a5db4,param1));
         }
      }
      
      private function _675b3c76b1cf2fe728e88650(param1:_e954eed354e62564d4e8cd3c) : void
      {
         if(param1.parent != null)
         {
            if(param1.data.mustBeRead == false)
            {
               if(param1 in this._8a410bcd43690a3cec57a458)
               {
                  _33dd41a12065671be9311587(this._8a410bcd43690a3cec57a458[param1]).destroy();
                  this._8a410bcd43690a3cec57a458[param1] = null;
                  delete this._8a410bcd43690a3cec57a458[param1];
               }
               param1.parent.removeChild(param1);
            }
         }
         var _loc2_:_acdfca446f7bd1a1ed443c02 = app.plings._1438a6090ec0a17e3abd0046(param1.id);
         if(_loc2_ != null && _loc2_.action != null)
         {
            param1.removeEventListener(MouseEvent.CLICK,_loc2_.action);
         }
         var _loc3_:int = this._605a3229b6d1ea5d6df29dfb.indexOf(param1);
         if(_loc3_ >= (0x208EF318 ^ -2080010476 ^ 0x52FE844B ^ -160040889))
         {
            this._605a3229b6d1ea5d6df29dfb.splice(_loc3_,-1530204783 ^ 0x0A49588C ^ -1595223792 ^ 0x0E69640C);
            this._860b649d670b25f959963c80(_loc3_);
         }
         else
         {
            this._860b649d670b25f959963c80(-340991112 ^ -1825725058 ^ 0x5AE9D7B2 ^ 0x226891B4);
         }
      }
      
      private function _860b649d670b25f959963c80(param1:int) : void
      {
         var _loc2_:Number = NaN;
         if(this._605a3229b6d1ea5d6df29dfb.length > param1)
         {
            _loc2_ = param1 * (this._605a3229b6d1ea5d6df29dfb[param1].height + this._3951adf34f7e553eff4fe483);
            if(this._605a3229b6d1ea5d6df29dfb[param1].y != _loc2_)
            {
               TweenLite.to(this._605a3229b6d1ea5d6df29dfb[param1],0x3F436914 ^ -2003374348 ^ 0x4EB1FBFE ^ -110855140,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ှၒႍ႙Ⴎႊ၅჏რႎ","ဴცႚရျဴဢ႖აဥၞ၊ၣჿၛႇ")):_loc2_});
            }
            this._860b649d670b25f959963c80(param1 + (0x5B689C8A ^ 0x2140033F ^ -1256397919 ^ -818643947));
         }
         else
         {
            this._04bd2a17ae121c30428321e0();
         }
      }
      
      private function _da6421dc4690b8309a56c83f(param1:MouseEvent) : void
      {
         var _loc2_:_e954eed354e62564d4e8cd3c = _e954eed354e62564d4e8cd3c(DisplayObject(param1.target.parent).parent);
         if(_loc2_.data.closeAction != null)
         {
            _loc2_.data.closeAction();
         }
         var _loc3_:int = this._605a3229b6d1ea5d6df29dfb.indexOf(_loc2_);
         if(_loc3_ >= (-337934374 ^ -1807815398 ^ -2078098655 ^ -70790687))
         {
            this._605a3229b6d1ea5d6df29dfb[_loc3_].close.handler = null;
            this._675b3c76b1cf2fe728e88650(this._605a3229b6d1ea5d6df29dfb[_loc3_]);
         }
      }
      
      private function _a6eea4794aec2017f212dfdb(param1:_acdfca446f7bd1a1ed443c02) : void
      {
      }
      
      private function _f5c3f3d5bc56c4c23a1a5db4(param1:_e954eed354e62564d4e8cd3c) : void
      {
         var _loc2_:int = -308607283 ^ -1601948929 ^ -1145113117 ^ -157171247;
         var _loc3_:int = -1456720729 ^ -1815001778 ^ -1835847590 ^ -781516084;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-482859687 ^ -1079128833 ^ -187401151 ^ -784017768))
            {
               case 0:
                  _loc2_ = this._605a3229b6d1ea5d6df29dfb.indexOf(param1);
                  if(_loc2_ >= (0x25065919 ^ -781694567 ^ -1648582012 ^ 0x69D2B204))
                  {
                     _loc3_ = -1938013822 ^ -802703209 ^ 0x2F30056D ^ 0x0A6EBF05;
                  }
                  else
                  {
                     _loc3_ = -1163770135 ^ -729995367 ^ 0x2F847D02 ^ 0x385E5F0C;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._605a3229b6d1ea5d6df29dfb[_loc2_].close.handler = null;
                  TweenLite.to(this._605a3229b6d1ea5d6df29dfb[_loc2_],-753935843 ^ 0x2F40F7E2 ^ -318738211 ^ 0x114F5D20,{
                     (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掩掦揽揊揦授揣捥換揹捌捳揍捑挅挖挄挐","掄挚挘捽捨挗揎捭掲掭掖捎插捰指捲")):0x137B1964 ^ -1224284309 ^ -1391588293 ^ 0x0973F234,
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗勆勾刄劃劄勠刻前剱劻劼劜剭劋剸剝劲勅勉剌劧劝勑剦勅剫剜","削初勨刱劎列副勇剘剑劈劇勦勤办剖")):this._675b3c76b1cf2fe728e88650,
                     (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႐Ⴄဧလး၉ၮၒႷ჈Ⴙ၃ႋဂ჻ႍჷဣ႟ဒၺ၊ု႞თတၘပဨႆၟႽდဧဿႥႂၼწმ","၄ჷၢၒႬၘ၉ႫႧၷၕကႷၷဿჾ")):[this._605a3229b6d1ea5d6df29dfb[_loc2_]]
                  });
                  _loc3_ = -1120795639 ^ 0x12FB24D1 ^ -1817983423 ^ 0x456FA5E7;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function activate() : void
      {
         app.plings.addEventListener(Event.CHANGE,this._eb3691d539ec00513b975af3);
      }
      
      public function deactivate() : void
      {
         app.plings.removeEventListener(Event.CHANGE,this._eb3691d539ec00513b975af3);
      }
   }
}

