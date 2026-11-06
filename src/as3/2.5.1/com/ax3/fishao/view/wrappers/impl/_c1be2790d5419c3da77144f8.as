package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._8365e76620d1837a83b767d1;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.model._5498f2805ab21b5b2ee3fcc9;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.states._0c5d7c87ef42d62a09e53b93;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.NetStatusEvent;
   import flash.net.SharedObject;
   import flash.net.SharedObjectFlushStatus;
   
   public class _c1be2790d5419c3da77144f8
   {
      
      private const _872b31c69840a9a866abb627:int = 50;
      
      private var _24fa1ea076ed42a60ae4c075:MovieClip;
      
      private var bg:MovieClip;
      
      private var button:MovieClip;
      
      private var _6a0a9754f02fe0e1740d8d5b:Boolean = false;
      
      private var _845d4554d33f6aff4f886b59:Number = 0;
      
      private var _d33ad787b8bb4be1f5d6eb90:Boolean = false;
      
      private var _d4a64dfc75e257aea6377d43:Number;
      
      private var _3efbe7ae6afbd84885b4c9fe:_8a5b0c698d40931e860c0aeb;
      
      private var _82976490d4ea04a4137bc3ab:_2076c76f22ea26ded82d6238 = new _2076c76f22ea26ded82d6238();
      
      private var _bf299c1560f2118c5e365d54:Vector.<_5498f2805ab21b5b2ee3fcc9>;
      
      private var lines:Vector.<_2076c76f22ea26ded82d6238>;
      
      private var _b39b72204ab767d5d4f7e609:Number;
      
      private var _fab9d650cbf82bba0a01f967:SharedObject;
      
      public function _c1be2790d5419c3da77144f8(param1:MovieClip)
      {
         super();
         this._24fa1ea076ed42a60ae4c075 = param1;
         this.bg = param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捈揿揦捳挱揝掿掎捨指挪挜","挅挿掻捏捖捨挓掗挆掜挾挹掚捠揨捼")) as MovieClip;
         this.button = param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捈挧揃掜掌揉掝捥换捳掘捿捏捙揎捚捀捕捄掫","捜措挡揋掠挓掏揞採挌捝挞据挶捾揳")) as MovieClip;
         this.button.buttonMode = true;
         this.button.addEventListener(MouseEvent.MOUSE_DOWN,this._667050b8e3c033613df580ff);
         this.lines = new Vector.<_2076c76f22ea26ded82d6238>();
         this._bf299c1560f2118c5e365d54 = new Vector.<_5498f2805ab21b5b2ee3fcc9>();
         this._b39b72204ab767d5d4f7e609 = param1.y + param1.height;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.globalDispatcher,_8365e76620d1837a83b767d1.RESIZE,this._3a2f9d1c1399f8472716ac41);
         this._8d1daac25875c4248a0a56ee();
         param1.alpha = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("利券加刷勧勽勗刍勍劫刓剀劐勢勛剷刟劾削到刅勩劭剋","勝勰剶劰劑剶勷劂删割勷刜勋劔劼剫");
         this._4cc3657f86b3a36252da6cf9();
      }
      
      private function _8d1daac25875c4248a0a56ee() : void
      {
         var _loc1_:int = 0x5F699A75 ^ -1603363209 ^ -458184651 ^ 0x6AB87CC9;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2145641581 ^ -575116611 ^ -1260930623 ^ -1736697840))
            {
               case 0:
                  return;
               case 1:
                  this._fab9d650cbf82bba0a01f967 = SharedObject.getLocal(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剸勬刿刑劁勳刬勺删刖勧勲勘剮劇前劇剸劬別分删勱剶勋刍剪剭剴势劣割刏劘割勋刾刬勢勴劇勹劌剏劲到勑勔","刧剋劁刮劮劽勠勊勬刭勫勋勝勧前勀") + app.user.username);
                  if(this._fab9d650cbf82bba0a01f967.data.lines == undefined)
                  {
                     _loc1_ = 0x5DBEB635 ^ -1894606944 ^ 0x62F22BC5 ^ -1051600211;
                  }
                  else
                  {
                     _loc1_ = -625573880 ^ -1747989888 ^ -927662539 ^ -188586942;
                  }
                  break;
               case 2:
                  this._fab9d650cbf82bba0a01f967.data.lines = 0x2375C9F8 ^ 0x611FFF3C ^ -223353100 ^ -1329213389;
                  this._3f5649affaf7190e9e5ac696();
                  _loc1_ = 0x0EDB9729 ^ 0x7AB5B463 ^ 0x4DCF07C6 ^ 0x48AEF473;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3f5649affaf7190e9e5ac696() : void
      {
         var _loc1_:String = null;
         try
         {
            _loc1_ = this._fab9d650cbf82bba0a01f967.flush();
         }
         catch(error:Error)
         {
         }
         if(_loc1_ != null)
         {
            switch(_loc1_)
            {
               case SharedObjectFlushStatus.PENDING:
                  §§push(0x579711A1 ^ -159791023 ^ 0x48AF0546 ^ -381559626);
                  break;
               case SharedObjectFlushStatus.FLUSHED:
                  §§push(0x55B4DDC0 ^ -606072636 ^ -2068400509 ^ 0x0AE27B86);
                  break;
               default:
                  §§push(-1398647554 ^ -1819488772 ^ -1246012620 ^ -1969896908);
            }
            switch(§§pop())
            {
               case 0:
                  this._fab9d650cbf82bba0a01f967.addEventListener(NetStatusEvent.NET_STATUS,this._3c39b1822d54f008c1b1ee27);
                  break;
               case 1:
            }
         }
      }
      
      private function _3c39b1822d54f008c1b1ee27(param1:NetStatusEvent) : void
      {
         switch(param1.info.code)
         {
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剑勩勋勪勮剈劅勗剖勼劾勉勎務勃劃勺勊勶劁剅勌刟刻剘删剽劚刯勼勪剞剤剉劕勱勃力剒劂動勌勂剆剩刼剈勣劉勭勥剛刌勹勅勨刈劧剡刑","劥刻勧剿剆动勚劭勆刳剾則劮剾剻列"):
               §§push(0x5249B506 ^ 0x5876624B ^ 0x5A4C6521 ^ 0x5073B26C);
               break;
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劉制劳劙劺刬勅务劭剣加刼剓剜刵勍剾剧務劢剎初剓劶勫刣労勹剗刉剕別勈劲剔勷劔勎勗勌刌列剦剀勛勡勫列势剷力勡劤剀劒勘劮勦","划勗勉勺刑勡刢剫刯力割刼剀劜剶劎"):
               §§push(-582914026 ^ -669259928 ^ 0x7797D918 ^ 0x72CD4E67);
               break;
            default:
               §§push(0x34B0AC55 ^ -60276265 ^ -354734875 ^ 0x2203C165);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
         }
         this._fab9d650cbf82bba0a01f967.removeEventListener(NetStatusEvent.NET_STATUS,this._3c39b1822d54f008c1b1ee27);
      }
      
      public function get visible() : Boolean
      {
         return this._24fa1ea076ed42a60ae4c075.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._24fa1ea076ed42a60ae4c075.visible = param1;
      }
      
      public function set x(param1:Number) : void
      {
         this._24fa1ea076ed42a60ae4c075.x = param1;
      }
      
      public function get x() : Number
      {
         return this._24fa1ea076ed42a60ae4c075.x;
      }
      
      public function set y(param1:Number) : void
      {
         this._24fa1ea076ed42a60ae4c075.y = param1;
      }
      
      public function get y() : Number
      {
         return this._24fa1ea076ed42a60ae4c075.y;
      }
      
      public function _c0b4096a776edb7b0920ebf6(param1:String, param2:String) : void
      {
         var _loc3_:_5498f2805ab21b5b2ee3fcc9 = new _5498f2805ab21b5b2ee3fcc9(param1,param2);
         this._bf299c1560f2118c5e365d54.push(_loc3_);
         if(this._bf299c1560f2118c5e365d54.length > this._872b31c69840a9a866abb627)
         {
            this._bf299c1560f2118c5e365d54.shift();
         }
         if(this.lines.length < this._bf299c1560f2118c5e365d54.length && this.lines.length < this.capacity)
         {
            this._99901af689cd92c04aa0d89c(param1,param2);
         }
         this._be79e62ea45c8b622be6c4e5();
      }
      
      private function _99901af689cd92c04aa0d89c(param1:String, param2:String) : void
      {
         var _loc3_:_2076c76f22ea26ded82d6238 = new _2076c76f22ea26ded82d6238();
         _loc3_.sender = param1;
         _loc3_.message = param2;
         _loc3_.x = -1541881763 ^ 0x63C2E5D5 ^ 0x485C0DEC ^ -1887033233;
         _loc3_.y = this.lines.length * _loc3_.height + (-1976206589 ^ 0x0D4C1DAA ^ -841302229 ^ 0x4AA3D999);
         this._24fa1ea076ed42a60ae4c075.addChild(_loc3_);
         this.lines.push(_loc3_);
      }
      
      public function get capacity() : int
      {
         return Math.round((this.bg.height - (0x25A59BDF ^ 0x75040B19 ^ -662867718 ^ -1998790653) - (0x7852C215 ^ -462806330 ^ 0x777DAF34 ^ -347779082)) / this._82976490d4ea04a4137bc3ab.height);
      }
      
      public function set capacity(param1:int) : void
      {
         if(param1 < (-1182470702 ^ 0x6530A196 ^ 0x548F9060 ^ -2009342940))
         {
            param1 = -1998929588 ^ -339529001 ^ -1525492182 ^ -972347983;
         }
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.locationLayersBase != null && GameSwf.currentLocationDialog.locationLayersBase.scrollRect != null)
         {
            if((GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height - (0x682B8B4B ^ -2112754832 ^ 0x78529957 ^ -1838614108)) / this._82976490d4ea04a4137bc3ab.height < param1)
            {
               param1 = (GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height - (0x55120633 ^ -1652716388 ^ -1677971900 ^ 0x5393A423)) / this._82976490d4ea04a4137bc3ab.height;
            }
         }
         this.bg.height = param1 * this._82976490d4ea04a4137bc3ab.height + (-1091022711 ^ 0x6CD97B7A ^ -1359259175 ^ 0x7CDA7215) + (0x716D8927 ^ -307651002 ^ -767225866 ^ 0x4E811886);
         this._24fa1ea076ed42a60ae4c075.y = Math.round(this._b39b72204ab767d5d4f7e609 - this._24fa1ea076ed42a60ae4c075.height);
         this.bg.y = 0x7011A003 ^ 0x70DC99FE ^ -949556843 ^ -945041306;
         this.button.y = -831747845 ^ 0x299921E8 ^ -675768520 ^ 0x304D3E2B;
         if(param1 == (0x3A0103BB ^ -733944734 ^ -185647732 ^ 0x1AAEDA55))
         {
            this._24fa1ea076ed42a60ae4c075.y = -1456203954 ^ 0x31CB0D20 ^ 0x19D7A4C9 ^ 0x7ED74153;
            GameSwf.guiState.chatPanelFolded = true;
         }
         else if(param1 > (0x1A543FE2 ^ -240268089 ^ -946137015 ^ 0x2C62EB6C))
         {
            this._fab9d650cbf82bba0a01f967.data.lines = param1;
            this._3f5649affaf7190e9e5ac696();
            GameSwf.guiState.chatPanelFolded = false;
         }
         this._cc64be96747df37fd5a94e02();
      }
      
      private function _cc64be96747df37fd5a94e02() : void
      {
         var _loc1_:int = 0x7D8A2B20 ^ -1733568608 ^ -1418622402 ^ 0x4E5076BE;
         var _loc2_:_2076c76f22ea26ded82d6238 = null;
         var _loc3_:int = -537615081 ^ 0x34E9C649 ^ -332390992 ^ 0x072D7EEE;
         var _loc4_:int = -796777752 ^ -2126251904 ^ -1248537001 ^ -464188353;
         var _loc5_:int = 0x098861C8 ^ -1888469686 ^ -414090782 ^ 0x61A92560;
         if(this.lines.length > this.capacity)
         {
            _loc1_ = this.lines.length - this.capacity;
            _loc3_ = -2085402167 ^ 0x75930C7C ^ -1945283201 ^ 0x7A2D10CA;
            while(_loc3_ < _loc1_)
            {
               _loc2_ = this.lines.pop();
               if(_loc2_ != null)
               {
                  this._24fa1ea076ed42a60ae4c075.removeChild(_loc2_);
               }
               _loc3_++;
            }
         }
         else if(this.lines.length < this.capacity && this.lines.length < this._bf299c1560f2118c5e365d54.length && this.capacity > (0x0E6CF9FE ^ 0x619AF410 ^ 0x46343719 ^ 0x29C23AF7))
         {
            _loc4_ = Math.min(this.capacity,this._bf299c1560f2118c5e365d54.length) - this.lines.length;
            _loc5_ = 0x1E1AC26C ^ -1068376145 ^ -706404454 ^ 0x0BAE0259;
            while(_loc5_ < _loc4_)
            {
               this._99901af689cd92c04aa0d89c(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭掭挭捐捧揞掔挰持揚掾揥挿揀掩揟","按挢掩掞捿掤捬揯捇揅捨挚挭挶挓掔"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႭჼႥၳၧဲႌဟျာၲၬဟჭ","Ⴛ၉჉မ႟ၫ႖႐ვရ၊ဎႌဖფႳ"));
               _loc5_++;
            }
         }
         this._be79e62ea45c8b622be6c4e5();
      }
      
      private function _667050b8e3c033613df580ff(param1:MouseEvent) : void
      {
         this._845d4554d33f6aff4f886b59 = param1.stageY - this._24fa1ea076ed42a60ae4c075.y;
         this._6a0a9754f02fe0e1740d8d5b = true;
         this._d4a64dfc75e257aea6377d43 = param1.stageY;
         GameSwf.stage.addEventListener(MouseEvent.MOUSE_MOVE,this._42910497e09c0c4ae4003fe6);
         GameSwf.stage.addEventListener(MouseEvent.MOUSE_UP,this._c59ddaa6f8623836d933a9cc);
      }
      
      private function _c59ddaa6f8623836d933a9cc(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x248C2AB6 ^ -895965085 ^ -1583864886 ^ -940742309;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7BC65626 ^ 0x23326FD4 ^ -1059469669 ^ 0x104C372F))
            {
               case 0:
                  this._aa2b0f001ca3e3c77316086f(param1);
                  this._d922b6b024378d508eb27f3b();
                  return;
               case 1:
                  this._d33ad787b8bb4be1f5d6eb90 = false;
                  this.capacity = this.capacity;
                  this._d922b6b024378d508eb27f3b();
                  return;
               case 2:
                  GameSwf.stage.removeEventListener(MouseEvent.MOUSE_UP,this._c59ddaa6f8623836d933a9cc);
                  GameSwf.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._42910497e09c0c4ae4003fe6);
                  this._6a0a9754f02fe0e1740d8d5b = false;
                  if(!this._d33ad787b8bb4be1f5d6eb90)
                  {
                     _loc2_ = 0x2A8DC212 ^ -1625923806 ^ 0x4432B266 ^ 0x79C8E710;
                  }
                  else
                  {
                     _loc2_ = 0x677900B6 ^ 0x7EE59D69 ^ 0x0790F096 ^ -1771199218;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _d922b6b024378d508eb27f3b() : void
      {
         var _loc1_:int = -1954293555 ^ 0x25179381 ^ 0x41509CC7 ^ -272312437;
         var _loc2_:int = -1623339246 ^ -1446453625 ^ 0x71FCEEEF ^ 0x062B158F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x53280DAC ^ -1976353628 ^ -677871953 ^ 0x4FA1A550))
            {
               case 0:
                  if(_loc1_ >= this.lines.length)
                  {
                     _loc2_ = -1892071334 ^ 0x1EB79C57 ^ -305135479 ^ 0x3D7C3E70;
                  }
                  else
                  {
                     _loc2_ = 0x175B717C ^ -804153069 ^ 0x31E0E659 ^ -1215765312;
                  }
                  break;
               case 1:
                  this.lines[_loc1_].y = _loc1_ * this._82976490d4ea04a4137bc3ab.height + (0x664F50D5 ^ 0x21BCE109 ^ 0x3872BF08 ^ 0x7F810ECF);
                  _loc1_++;
                  _loc2_ = -348237594 ^ -1638958204 ^ 0x35CEC491 ^ 0x019D0504;
                  break;
               case 2:
                  _loc1_ = -741835767 ^ -154789744 ^ 0x79AD5FFF ^ 0x5CA33B66;
                  _loc2_ = -1232543911 ^ -1493786762 ^ 0x465B4A40 ^ 0x1707E098;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _42910497e09c0c4ae4003fe6(param1:MouseEvent) : void
      {
         if(this._3efbe7ae6afbd84885b4c9fe == null)
         {
            this._3efbe7ae6afbd84885b4c9fe = GameSwf.currentLocationDialog.gui;
         }
         if(this._6a0a9754f02fe0e1740d8d5b)
         {
            this._d33ad787b8bb4be1f5d6eb90 = true;
            if(param1.stageY - (this._3efbe7ae6afbd84885b4c9fe.energyIndicator.y + this._3efbe7ae6afbd84885b4c9fe.energyIndicator.height) < (-292062541 ^ -1813900287 ^ -1449061810 ^ -724271922) && this._d4a64dfc75e257aea6377d43 > param1.stageY)
            {
               this._c59ddaa6f8623836d933a9cc(param1);
               return;
            }
            if(this._24fa1ea076ed42a60ae4c075.y > (-1345810216 ^ -2122137199 ^ 0x558B111E ^ -2076262473) && this._d4a64dfc75e257aea6377d43 < param1.stageY)
            {
               this._c59ddaa6f8623836d933a9cc(param1);
               return;
            }
            this._d4a64dfc75e257aea6377d43 = param1.stageY;
            this._a20ad867b1280e681a9aea82(param1.stageY);
         }
      }
      
      private function _aa2b0f001ca3e3c77316086f(param1:*) : void
      {
         this.capacity = this.capacity > (-61130833 ^ -724762704 ^ -45002763 ^ -708409366) ? 0x79C8D1CB ^ 0x3548130A ^ 0x3BAF9817 ^ 0x772F5AD6 : int(this._fab9d650cbf82bba0a01f967.data.lines);
         this._4cc3657f86b3a36252da6cf9();
      }
      
      private function _a20ad867b1280e681a9aea82(param1:Number) : void
      {
         var _loc2_:Number = (0x01279C66 ^ 0x6FC1887F ^ -879141671 ^ -1518384946) - this._845d4554d33f6aff4f886b59;
         var _loc3_:Number = param1 + _loc2_;
         this.bg.height = this._b39b72204ab767d5d4f7e609 - _loc3_;
         this._24fa1ea076ed42a60ae4c075.y = this._b39b72204ab767d5d4f7e609 - this._24fa1ea076ed42a60ae4c075.height;
         this.bg.y = -1368549157 ^ 0x1D502527 ^ -454990512 ^ 0x57DCD8A2;
         this.button.y = 0x1A261FC9 ^ 0x50A88E46 ^ -603075864 ^ -1769776281;
         this._cc64be96747df37fd5a94e02();
      }
      
      private function _be79e62ea45c8b622be6c4e5() : void
      {
         var _loc1_:_2076c76f22ea26ded82d6238 = null;
         var _loc2_:int = -2087703270 ^ 0x2788FB42 ^ -619159848 ^ 0x7F008880;
         var _loc3_:int = -1750615236 ^ 0x636DA898 ^ -2002578199 ^ 0x7C69074D;
         while(_loc3_ < this.lines.length)
         {
            _loc1_ = this.lines[_loc3_];
            _loc2_ = _loc3_ + (this.capacity < this._bf299c1560f2118c5e365d54.length ? this._bf299c1560f2118c5e365d54.length - this.capacity : -1900613889 ^ -2059433161 ^ 0x5DFB25A8 ^ 0x56724060);
            if(_loc2_ < this._bf299c1560f2118c5e365d54.length)
            {
               _loc1_.sender = this._bf299c1560f2118c5e365d54[_loc2_].sender;
               _loc1_.message = this._bf299c1560f2118c5e365d54[_loc2_].message;
            }
            else
            {
               _loc1_ = this.lines.pop();
               this._24fa1ea076ed42a60ae4c075.removeChild(_loc1_);
            }
            _loc3_++;
         }
         this._d922b6b024378d508eb27f3b();
      }
      
      private function _3a2f9d1c1399f8472716ac41(param1:* = null) : void
      {
         if(this._3efbe7ae6afbd84885b4c9fe == null && GameSwf.currentLocationDialog != null)
         {
            this._3efbe7ae6afbd84885b4c9fe = GameSwf.currentLocationDialog.gui;
         }
         this._4cc3657f86b3a36252da6cf9();
      }
      
      public function _4cc3657f86b3a36252da6cf9() : void
      {
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.gui != null && GameSwf.currentLocationDialog.locationLayersBase != null && GameSwf.currentLocationDialog.locationLayersBase.scrollRect != null && this._24fa1ea076ed42a60ae4c075 != null)
         {
            if(this._24fa1ea076ed42a60ae4c075.height > GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height - (-143636968 ^ -624067964 ^ 0x052CAD45 ^ 0x289191BD))
            {
               this._a20ad867b1280e681a9aea82(GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height + (0x7AF65544 ^ -677339192 ^ -1457181086 ^ 0x0473E48A));
               this.capacity = this.capacity;
            }
         }
      }
      
      public function get draggingNow() : Boolean
      {
         return this._6a0a9754f02fe0e1740d8d5b;
      }
      
      public function _e7e9991913759be9d51d4c5f(param1:_0c5d7c87ef42d62a09e53b93) : void
      {
         this._fab9d650cbf82bba0a01f967 = param1.chatPanelCookie;
         this._bf299c1560f2118c5e365d54 = param1.chatPanelMessages;
         this.capacity = 0x7A319263 ^ -443029916 ^ -114942166 ^ 0x66806B2D;
         this._4cc3657f86b3a36252da6cf9();
         this._cc64be96747df37fd5a94e02();
      }
      
      public function get canSendChatMessage() : Boolean
      {
         var _loc1_:Date = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = -887968696 ^ -1507366341 ^ -2018406935 ^ -360428646;
         var _loc4_:_5498f2805ab21b5b2ee3fcc9 = null;
         var _loc5_:int = int(this._bf299c1560f2118c5e365d54.length);
         if(_loc5_ > (-1854767998 ^ -428611004 ^ 0x69E74CD7 ^ 0x1EE6DA13))
         {
            if(this._bf299c1560f2118c5e365d54[_loc5_ - 1].sentByMe && this._bf299c1560f2118c5e365d54[_loc5_ - (0x43D2A287 ^ 0x392AF7F0 ^ -89054297 ^ -2142669102)].sentByMe && this._bf299c1560f2118c5e365d54[_loc5_ - (0x7C84AE62 ^ 0x03F7FFED ^ 0x42C61EF7 ^ 0x3DB54F7B)].sentByMe)
            {
               return false;
            }
         }
         if(_loc5_ > (0x6BE4C324 ^ -1445312103 ^ -756322377 ^ 0x10D5E503))
         {
            _loc1_ = new Date();
            _loc2_ = _loc1_.getTime() - (-956312656 ^ 0x5A1663FA ^ 0x03C273B8 ^ -1624525118);
            _loc3_ = -580915808 ^ 0x1A6E1932 ^ -538916081 ^ 0x18D13F9D;
            for each(_loc4_ in this._bf299c1560f2118c5e365d54)
            {
               if(_loc4_.sender == app.user.username && _loc4_._3590359b68f1ef42c56a52e7(_loc2_))
               {
                  _loc3_++;
               }
            }
            if(_loc3_ > (0x72DEB5CC ^ -429682287 ^ -557820328 ^ 0x4A7D720C))
            {
               return false;
            }
         }
         return true;
      }
   }
}

