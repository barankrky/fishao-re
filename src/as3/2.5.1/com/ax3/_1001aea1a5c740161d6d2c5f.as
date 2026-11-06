package com.ax3
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.core.ICEditor;
   import com.ax3.fishao.core.ICharacterEditor;
   import com.ax3.fishao.core._43e386d644f99926bc77847f;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.fishao.model._5c61816df588994ab1b4dbe4;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.ax3.net._f5d3c19b4de5df055d1bc952;
   import com.ax3.utils.empty;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.setTimeout;
   import protocol.sr.GetDataResp;
   
   public class _1001aea1a5c740161d6d2c5f extends EventDispatcher
   {
      
      private var _ff90845c02cde3a0b34ca08e:ICharacterEditor;
      
      private var _775fa7b033bde0ec1c6eb004:Boolean;
      
      private var _4791554e2f5da3045b5d1f47:_f5d3c19b4de5df055d1bc952;
      
      private var _de7b6e197d848823b3f55c6c:DisplayObjectContainer;
      
      private var _bb2d61f6a706c8d7d93ce5cd:Boolean = true;
      
      private var _367f368b760065ea28fb88c6:Object;
      
      private var _75864a83e23507b44757f2fc:_f11f4587bdf083a8dd45aa84;
      
      private var _5ff460997d7778b05918e2dd:Boolean;
      
      private var _e9640b2603a09828698d0f05:Array;
      
      public function _1001aea1a5c740161d6d2c5f(param1:String)
      {
         var url:String = param1;
         this._e9640b2603a09828698d0f05 = [];
         super();
         this._4791554e2f5da3045b5d1f47 = new _f5d3c19b4de5df055d1bc952(0x4C196D6E ^ -2080677021 ^ -68516230 ^ 0x34088874);
         this._4791554e2f5da3045b5d1f47.addEventListener(Event.COMPLETE,this._39721f2790d959b26c631140);
         this._4791554e2f5da3045b5d1f47.addEventListener(IOErrorEvent.IO_ERROR,this._a9d19f7563a171245b8127ee);
         Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("判劌剈劭刓剉勇劓切勰剻券勝刦剳剌剳刦","剙劌剡刼勉劉剿剒勘勱勨勭勄努券剞") + url);
         this._4791554e2f5da3045b5d1f47.load(new URLRequest(url),new LoaderContext(false,ApplicationDomain.currentDomain));
         this._75864a83e23507b44757f2fc = new _f11f4587bdf083a8dd45aa84(_141a5f7d84a4cfae1680515b.TYPE_TIPS);
         this._75864a83e23507b44757f2fc.progressHandler = this._fed6c0c135e06fd79cac692e;
         this._75864a83e23507b44757f2fc.start();
         if(_9f0379c95e97da0c1ff2a833.isLocal() && false)
         {
            setTimeout(function():void
            {
               _4791554e2f5da3045b5d1f47.load(new URLRequest(url),new LoaderContext(false,ApplicationDomain.currentDomain));
            },0x1583A4D7 ^ 0x4FB0BDEC ^ -176121744 ^ -1347185981);
         }
         else
         {
            this._4791554e2f5da3045b5d1f47.load(new URLRequest(url),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this._5ff460997d7778b05918e2dd = false;
      }
      
      private function _a9d19f7563a171245b8127ee(param1:IOErrorEvent) : void
      {
         Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ოၿဟჵႱၑმႏყჱၪ჻ဴ႙႞ყჂჿ၁ბဖႚႋၿႇႼၠ်ႽაჲဵၛႻလႸႛှဃၷဇၳွსဢშၴၳ႓ႋႅဩၘ႗Ⴊၧှၤၱၰ၉ဟდ၎၍က","ၜဒၙჰ့႔ၬჶဎჲთၯၙၖလ჎"),param1.toString());
      }
      
      private function _fed6c0c135e06fd79cac692e() : Number
      {
         var _loc1_:Number = 0x37AF9BC9 ^ -268569224 ^ 0x2A1F374A ^ -229811717;
         if(Boolean(this._4791554e2f5da3045b5d1f47) && this._4791554e2f5da3045b5d1f47.bytesTotal > (0x1F6DCF3A ^ 0x484D03D9 ^ 0x31CC6E15 ^ 0x66ECA2F6))
         {
            _loc1_ = this._4791554e2f5da3045b5d1f47.bytesLoaded / this._4791554e2f5da3045b5d1f47.bytesTotal;
         }
         return _loc1_;
      }
      
      private function _39721f2790d959b26c631140(param1:Event = null) : void
      {
         this._4791554e2f5da3045b5d1f47.removeEventListener(Event.COMPLETE,this._39721f2790d959b26c631140);
         this._4791554e2f5da3045b5d1f47.removeEventListener(IOErrorEvent.IO_ERROR,this._a9d19f7563a171245b8127ee);
         var _loc2_:DisplayObject = this._4791554e2f5da3045b5d1f47.content;
         this._ff90845c02cde3a0b34ca08e = _loc2_ as ICharacterEditor;
         this._ff90845c02cde3a0b34ca08e.setI18Conv(_c2ad9d37d7be0097d6d2e977.get);
         if(this._de7b6e197d848823b3f55c6c != null)
         {
            this.show(this._de7b6e197d848823b3f55c6c,this._bb2d61f6a706c8d7d93ce5cd,this._367f368b760065ea28fb88c6);
            this._de7b6e197d848823b3f55c6c = null;
         }
         this._507b10d5526d396c8287a058();
      }
      
      public function show(param1:DisplayObjectContainer, param2:Boolean, param3:Object) : void
      {
         var _loc4_:CharViewConfig = CharViewConfig.fromObject(_43e386d644f99926bc77847f(app).char);
         if(this._ff90845c02cde3a0b34ca08e != null)
         {
            this._ff90845c02cde3a0b34ca08e.setI18Conv(_c2ad9d37d7be0097d6d2e977.get);
            this._ff90845c02cde3a0b34ca08e.setDefault(_loc4_,this._7be94b31002e4cdb4859aeac,this._fcf34ec4064868b4d1a86948,this._d5b429db733d4ccea8e47522,param3,param2,app.user.isGuest,app.user.isModerator,false);
            this._ff90845c02cde3a0b34ca08e.updateCharacter(_loc4_);
            Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挢持挠捡掆掦揘挤掽掋捶捇捵掦掑揎掌掯揾掰提挡掶挑捈挢揈揿挖挰","掿揊捎揀握掻据掄捽揹捛掩振揠揦揮") + app.user);
            _0737efdbd5337ba3fbc64b2e.getInstance().showAt(_0737efdbd5337ba3fbc64b2e.DIALOG_LAYER,this._ff90845c02cde3a0b34ca08e);
            _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN._73bc65955b0f014b23436384(this._75864a83e23507b44757f2fc);
            if(!empty(app.sid))
            {
               _dfa25706e58a240c1e33e5c6.updateExtension._8d3d7abec439e9601739cbff(this._6c3b1c1378bebdda7611025d);
            }
            this._e9640b2603a09828698d0f05 = app.user.inventory.extraClothesItems;
            this._ff90845c02cde3a0b34ca08e.setExtraList(this._e9640b2603a09828698d0f05);
            this._ff90845c02cde3a0b34ca08e.setActiveTab(_5c61816df588994ab1b4dbe4.currentLookIdForCharEditor);
            this._775fa7b033bde0ec1c6eb004 = true;
         }
         else
         {
            _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN._2b080f46e549b4b5a001764c(this._75864a83e23507b44757f2fc);
            this._de7b6e197d848823b3f55c6c = param1;
            this._bb2d61f6a706c8d7d93ce5cd = param2;
            this._367f368b760065ea28fb88c6 = param3;
         }
      }
      
      private function _6c3b1c1378bebdda7611025d(param1:GetDataResp) : void
      {
         var _loc2_:Array = null;
         if(param1.data.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捪掙揁捔揍捳挽揌按挣掋捨掟挩挏挝捬揃掻揎揆挎挊揧挘揔挺据捋揮掃捿掙掳捊揠","揻掅掂挅揫挄挅掼掳挤揉挗挊挟揍挌")))
         {
            _loc2_ = JSON.parse(param1.data.closedClothing) as Array;
            if(_loc2_ != null)
            {
               this._ff90845c02cde3a0b34ca08e.setLockedList(_loc2_);
            }
         }
      }
      
      private function _fcf34ec4064868b4d1a86948(param1:MouseEvent) : void
      {
         this.close();
         _5c61816df588994ab1b4dbe4.currentLookIdForCharEditor = -1205603700 ^ 0x46DB30E5 ^ 0x1CF7A733 ^ -502307494;
      }
      
      private function _7be94b31002e4cdb4859aeac(param1:MouseEvent) : void
      {
         _dfa25706e58a240c1e33e5c6.updateExtension.update(ICEditor(this._ff90845c02cde3a0b34ca08e).getCharacter(),app.sid);
         this.close();
         var _loc2_:_283b592e1b144e604db439f2 = GameSwf.instance.managerTutorial;
         if(!_loc2_.isTutorialCommonComplete)
         {
            _loc2_._a8aa662a62a5d3db6b825dfe();
         }
      }
      
      public function _a86f35bd82a5beb7ef78ef94() : void
      {
         _dfa25706e58a240c1e33e5c6.updateExtension.update(ICEditor(this._ff90845c02cde3a0b34ca08e).getCharacter(),app.sid);
      }
      
      public function close() : void
      {
         var _loc1_:int = 0x49AF9329 ^ -179286106 ^ 0x6B0D04C5 ^ 0x47A1FCFE;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x74B84418 ^ -89971734 ^ 0x64826B55 ^ 0x7ACA2813))
            {
               case 0:
                  this._bb2d61f6a706c8d7d93ce5cd = false;
                  if(!this._775fa7b033bde0ec1c6eb004)
                  {
                     _loc1_ = -414680821 ^ -1246433793 ^ -1936320389 ^ 0x4E39A839;
                  }
                  else
                  {
                     _loc1_ = -2011924011 ^ 0x37739573 ^ 0x3D978E51 ^ 0x12A34642;
                  }
                  break;
               case 1:
                  _0737efdbd5337ba3fbc64b2e.getInstance().close(this._ff90845c02cde3a0b34ca08e);
                  this._775fa7b033bde0ec1c6eb004 = false;
                  dispatchEvent(new Event(Event.CLOSE));
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getCharacterBitmapDataByViewConfig(param1:CharViewConfig) : BitmapData
      {
         return this._ff90845c02cde3a0b34ca08e.getCharacterBitmapDataByViewConfig(param1);
      }
      
      private function _507b10d5526d396c8287a058() : void
      {
         this._5ff460997d7778b05918e2dd = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function _d5b429db733d4ccea8e47522(param1:MouseEvent) : void
      {
         _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN._73bc65955b0f014b23436384(this._75864a83e23507b44757f2fc);
      }
      
      public function get isLoaded() : Boolean
      {
         return this._5ff460997d7778b05918e2dd;
      }
      
      public function get isShowed() : Boolean
      {
         return this._775fa7b033bde0ec1c6eb004;
      }
   }
}

