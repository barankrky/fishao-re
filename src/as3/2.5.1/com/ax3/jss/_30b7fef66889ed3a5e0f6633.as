package com.ax3.jss
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import air.net.WebSocket;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.jss.events._d2f221bbcfd428bfdc43d954;
   import com.ax3.jss.requests.client._5353568798ce574eb410b08d;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.jss.requests.server.enums._759d77b0a7c8387256769f74;
   import com.ax3.utils._34294b5e52d6394ccdb6bfca;
   import com.ax3.utils.datetime.getCurrentUTCTime;
   import com.ax3.utils.log._a3c5fecf8c9fbb572219f84e;
   import com.ax3.utils.log.globalLogger;
   import flash.events.DNSResolverEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.WebSocketEvent;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.net.dns.ARecord;
   import flash.net.dns.DNSResolver;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import protocol.cr.MvUsrToRq;
   
   public class _30b7fef66889ed3a5e0f6633 implements _811d87cfbfe44a2ae26e35df
   {
      
      public static var slowConnectionEmulator:Boolean = false;
      
      public static var tracePackets:Boolean = !_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653();
      
      private static const _b6de7a05e91203f1dd529a68:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挈揉挘揹掜掮振捥掮掱捎捱挵捣揮揎捙捊挮挊挔挸揝捍捙排揳揸掌挿捎措捲挾换捧","挅挍捇按揋挎捖掣掷掏掊捣挥挊捹掾");
      
      private static const _b1333ec00fb93aa55c34600c:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴛზႄ၇ჳံခၡႿႺၺႦ၇Ⴌ჎ၱႈႰუတထ၅ၕၦူဋၮႛჁအႝႲ჆ၾလთჱၗდဦၢဇႩံ","ႀႿသ჎ဖၺဧၺჰၷႰဢဟခၞၾ");
      
      private static const _fc38b3bb31cb4fc738c1c5c3:int = (-1433938723 ^ 0x058AD6A5 ^ 0x058320BE ^ -1433525306) * (-1580668432 ^ 0x1A0E9766 ^ 0x4D79DD17 ^ -155211903);
      
      private var _04802e5ca4d09c640e296968:String;
      
      private var _9c4516764b0fe963a379ae02:WebSocket;
      
      private var _ef83ed7dbf63e8e307af067e:IEventDispatcher;
      
      private var _95e5da9937dc1f75267794c9:Boolean;
      
      private var _77b53f0b4ece2569bb47d447:Boolean = true;
      
      private var _f59949ac54b59357536a8d80:int;
      
      private var _99529794f2fddc7b70101bd0:int;
      
      private var _5027370c693db47021cdcf5e:DNSResolver;
      
      private var _4f67a36d9b664eff69637bf5:Boolean = false;
      
      public var logger:Function = _a3c5fecf8c9fbb572219f84e.trace;
      
      public var sendLog:Function;
      
      private var _e233946c8f564ac49c3bdb19:int = 0;
      
      public var callbackManager:_34294b5e52d6394ccdb6bfca = new _34294b5e52d6394ccdb6bfca();
      
      public function _30b7fef66889ed3a5e0f6633(param1:Boolean = false)
      {
         this.sendLog = _a3c5fecf8c9fbb572219f84e.sendLog;
         super();
         this._4f67a36d9b664eff69637bf5 = param1;
      }
      
      public static function _70342170be67ef22838205c5(param1:String) : void
      {
         _92249437fe29fd83c5a9831c(param1);
      }
      
      private static function _67e6dbd7574669f3a11d7d29(param1:int) : String
      {
         return param1 < (-1265339750 ^ 0x6B5711B9 ^ -1446986577 ^ 0x7603DF86) ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("利勮勇劏剦勏勴刅劗勫","剣剴勤刿務劕勲刺勿剤勓剙勫勯勝勀") + param1 : String(param1);
      }
      
      private static function _92249437fe29fd83c5a9831c(param1:String) : void
      {
         var _loc5_:File = null;
         var _loc2_:Date = new Date();
         var _loc3_:String = _loc2_.fullYearUTC + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勾勗剏剆剗剕剬剈刚剭","劾劐勈勦劝勻刮剂劇劓刑加劸勣勧勦") + _67e6dbd7574669f3a11d7d29(_loc2_.monthUTC + (0x7065A52E ^ 0x0354A89B ^ -1777223410 ^ -450841414)) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勅势勛刭剨剶劲刯劾劑","剮劂剡功剌剠削刻剑剼勣剚刖前劅剳") + _67e6dbd7574669f3a11d7d29(_loc2_.dateUTC) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劲劼勛剞剐劑勱剦刦剃","勶勯勾剅勆剰勘动剤剏勦切勺勌刭刋") + getCurrentUTCTime() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫挭挭捚授掐掞掯捊掘","掃捚捇捓挽挸捤掹捄挺捎捁掶捏掻捁") + param1;
         var _loc4_:FileStream = new FileStream();
         try
         {
            _loc5_ = File.applicationStorageDirectory.resolvePath(_b6de7a05e91203f1dd529a68);
            if(Boolean(_loc5_.exists) && _loc5_.size > _fc38b3bb31cb4fc738c1c5c3)
            {
               _loc5_.moveTo(File.applicationStorageDirectory.resolvePath(_b1333ec00fb93aa55c34600c),true);
            }
            _loc4_.open(_loc5_,FileMode.APPEND);
            _loc4_.writeUTFBytes(_loc3_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劲勘勚勺勂刜劶別刔剄前剴","判刳创剜劄刑刢劯剴劐删勠勢制刂刦"));
         }
         catch(e:Error)
         {
         }
         try
         {
            _loc4_.close();
         }
         catch(e:Error)
         {
         }
      }
      
      public function init(param1:IEventDispatcher) : void
      {
         this._ef83ed7dbf63e8e307af067e = param1;
      }
      
      public function connect(param1:String) : void
      {
         var url:String = param1;
         this._04802e5ca4d09c640e296968 = url;
         this.destroySocket();
         this._77b53f0b4ece2569bb47d447 = false;
         this._9c4516764b0fe963a379ae02 = new WebSocket();
         this._9c4516764b0fe963a379ae02.addEventListener(Event.CONNECT,this._a777d2d5eb9baadb0e944e86);
         this._9c4516764b0fe963a379ae02.addEventListener(Event.CLOSE,this._99ec7516299f1044266885c5);
         this._9c4516764b0fe963a379ae02.addEventListener(IOErrorEvent.IO_ERROR,this._3371a624aba2925b3ddffec4);
         this._9c4516764b0fe963a379ae02.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._2aa01b4e3ea4bc8391e8bc27);
         this._9c4516764b0fe963a379ae02.addEventListener(SecurityErrorEvent.CERTIFICATE_ERROR,this._2aa01b4e3ea4bc8391e8bc27);
         this._9c4516764b0fe963a379ae02.addEventListener(WebSocketEvent.DATA,this._e78f177cd6316c01959c0e1f);
         try
         {
            this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣刜勖剡券剓則刑刿勺劣利剕劼列勞刊功删剽刽剨劂劥刏剹勽勍剓劧労劭動刾剽刵創劝勁労勗劳勢劸刁剴剭勘勎刖","勎劏勃劂勁勱剸剫剟刑劤劫刱勑剮劙") + url + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捑掇掮援捏捝挦挵掵挮掷捏揁揝挝挈挼掗捌掺掃掓挙挺掳捆","揵授捾捶捇挼捌掗揢挜揓捔揢揘措捇") + _9f0379c95e97da0c1ff2a833.VERSION + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၓეႁႭ჏ၮိွၽၽါႫၝჾ჉၏","ჅႤჭျဎရႩ၉္ႳႡ၎ყჼၻဂ") + Capabilities.os);
            this._99529794f2fddc7b70101bd0 = getTimer();
            this._9c4516764b0fe963a379ae02.connect(url);
         }
         catch(error:SecurityError)
         {
            this.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჹဥ၄ბၙႋဥႅၢჹၵხ၈ၯဇၡဳႢၾ჻ာႡႴႎ၀၀ၶၟ၇ჩ၏ჟ၄့ၖჺჃၚဖဏၟေးჰဲဳဥ჊တ჆Ⴉჲၶ႞Ⴭ჏်၍ဢ႘Ⴓဒ၎ၝჱႬ","ၼာဉႠ჌ီၘႿႫ၅ၗႌძႣყဤ") + error);
            this.sendLog();
            this.destroySocket();
            this.reportConnectionLost(_759d77b0a7c8387256769f74.SECURITY_ERROR);
         }
         catch(error:Error)
         {
            this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊勆切勡刹剽剉刁剒劀列刹劉剙勫剹剱勢刧勉初劅刟刑劓別劍勸劦别刏刣勒劁劌勛剂勤剠励剶功勏剐勫剪刏刣前剦勿勷勜刃刌劰勶剙勒势勞刋刄勪勐剛勸刐勨勡","勓剔劇劃刻劬刁剓劼勼刣劽劒刷劝剩") + error);
            this.sendLog();
            this.destroySocket();
            this.reportConnectionLost(_759d77b0a7c8387256769f74.SOCKET_ERROR);
         }
      }
      
      public function disconnect(param1:String = null) : void
      {
         if(param1 == null)
         {
            param1 = _759d77b0a7c8387256769f74.MANUAL_DISCONNECT;
         }
         this.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘၡၢჍჴၯူჄႲ႞Ⴙჺნၧၲၬ၉စ႕၊ၘ႖ၩႎဌღჯჯჽ၂ၶၫ႖ၬჳბბჂშၹზဆცღဧტ","ჼ႙Ⴂၪ႕აဇပჺႲၐნဃိ჌႘") + param1);
         this.destroySocket();
         this.reportConnectionLost(param1);
      }
      
      public function send(param1:_5353568798ce574eb410b08d, param2:Function) : Boolean
      {
         var request:_5353568798ce574eb410b08d = param1;
         var callback:Function = param2;
         var text:String = null;
         ++this._e233946c8f564ac49c3bdb19;
         request._87ffe3b11124e2ee3c9924c7(this._e233946c8f564ac49c3bdb19);
         if(!this._42e6ec115b7a961390cb6808())
         {
            this.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掾捭捛捘挭掤揼挔挮揚捁挿捴捖挺挛挥揤挪挍掜捜捖挭挳授挸揦捷描挶捖掖挜揪掲捪掍捙揅挴揥挘掊挧捝挢揼揕揪採揜掳掋授捷捣掔探挲挍掱掊揝掴掅捘掜挒捄捴挋掿掇挢揔掵揑掱挏掾捀掄挣掘揕揌揷","揇捎掀捷揇掆揑揕挒挆挶捖揯捏掤挴") + request);
            return false;
         }
         try
         {
            text = _b0dc1e3df388e376abf4d4a0.encode(request);
         }
         catch(e:Error)
         {
            this.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捅捗揞掠按捶捣捺按捒握捑掷揆掭掍换挿掑措揣挥揇援掱揞损捅揂揽掱挜挝挖掇揨揙揋挲捋授接掀捩挐捵揝捎掝掾挰揟","掟捬挣捚揰掃挍挱掲採掴援挛捡捀接") + request + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剉勏剀剛勁刹劈刵劆勍勻剤","刵勼剄劻勀劽劃勿勒勺刻助剆剸勣刲") + e.message);
            return false;
         }
         if(this._4f67a36d9b664eff69637bf5 && !(request is MvUsrToRq))
         {
            this.logger(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣掽挋挎揺挷掂按挩挟揟持捼揚振提捰揆揻揂挽挨掕挆捹捏捁揹捀挢掰捳","捁掓揦揔控捭挩掙措揾捷揳揤掘揷揽") + this._e233946c8f564ac49c3bdb19 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("授掠掂捶掛揇挲掘挐捄掀捴挀挱","捑掘捓揭挨揅掣捧揪捯揁掞挞掄揼捣") + request + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勹剓劖剠助勔刊剽刞刏勈剔","劸剳勝劀劇刉劥劐刺劎刼勩劂剭劄勧") + text);
         }
         this._9d27d2ef2dad7724498ab389(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬၙၳၜစဧჀ၊Ⴤ႑ၗၸဘၦ","ၨြგნၙ႟၊ჁႂႸၯႉူႻဗ၅"),text);
         if(callback != null)
         {
            this.callbackManager.add(this._e233946c8f564ac49c3bdb19,callback);
         }
         try
         {
            if(slowConnectionEmulator)
            {
               setTimeout(this._9c4516764b0fe963a379ae02.sendMessage,0x20018303 ^ 0x5655F809 ^ -1126420749 ^ -897032639,WebSocket.fmtTEXT,text);
            }
            else
            {
               this._9c4516764b0fe963a379ae02.sendMessage(WebSocket.fmtTEXT,text);
            }
         }
         catch(e:Error)
         {
            this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勧刹剥剗劍剆劣刎剎剃刴刯刹剥办勥勝剪勫剭刋刏勉刢刽剾别勄刜勸則劦勍劣","剔勀刧刱刖剧劑勬刹券劽剮到剝劅勹") + e.message);
            this.destroySocket();
            this.reportConnectionLost(_759d77b0a7c8387256769f74.SOCKED_CONNECTED_FAIL);
            return false;
         }
         return true;
      }
      
      public function _42e6ec115b7a961390cb6808() : Boolean
      {
         return this._9c4516764b0fe963a379ae02 != null && this._95e5da9937dc1f75267794c9;
      }
      
      public function get url() : String
      {
         return this._04802e5ca4d09c640e296968;
      }
      
      private function _a777d2d5eb9baadb0e944e86(param1:Event) : void
      {
         var _loc2_:int = -1066828495 ^ 0x3786958E ^ -1292412822 ^ 0x4F498B56;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-331903564 ^ -1945900226 ^ -1093077011 ^ -725767451))
            {
               case 0:
                  return;
               case 1:
                  this.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿揫挂採挄掿捌捄揈捈掶揥揖挈挅揓掃握掊掱捂掘掘捖揞掺挾揭挿按挜挖掅掀捈揓捚換","掑挆掵掕挹揖挦揘揯揑揎捘揄挬捰揦") + this._04802e5ca4d09c640e296968);
                  this._95e5da9937dc1f75267794c9 = true;
                  this._f59949ac54b59357536a8d80 = getTimer();
                  if(this._ef83ed7dbf63e8e307af067e != null)
                  {
                     _loc2_ = 0x4272DAB8 ^ -1448764139 ^ -572072105 ^ 0x3C60A37A;
                  }
                  else
                  {
                     _loc2_ = 0x52B2A28D ^ 0x7E4C27E5 ^ -790175525 ^ -162963919;
                  }
                  break;
               case 2:
                  this._ef83ed7dbf63e8e307af067e.dispatchEvent(new _d2f221bbcfd428bfdc43d954(_d2f221bbcfd428bfdc43d954.CONNECT_TO_SERVER_SOCKET));
                  _loc2_ = 0x0545723F ^ -1815434087 ^ -1997124924 ^ 0x1428AFE0;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _99ec7516299f1044266885c5(param1:Event) : void
      {
         var _loc2_:int = int(this._9c4516764b0fe963a379ae02.closeReason);
         this.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掗揵挾捴揊揬捓接掲揉控掖挌掝挎捅挠掲捉掴挟捁揬捤掖捊挂捄掦掄捨挅揌揿挌挧掔掇捣揃挕揁挱揫揽捝握捬","持揌掆揈掜捪揿挰掹挋揾揶掕掿捗揳") + _loc2_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掓掬挋挏据授掀掻掵捯捰揰指掂捜掐掫挑揲掭揗掫","掿掊捳挿接揯挤授揯挃捐揂捪換掭指") + this._f066c23f16a2ffa5bf8225d5() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剰剽剔刘勢勯勓勄劼剀","勃勌刯刳剷剎勺刀勘割别劼劸劦劶刼") + (_loc2_ == (-1090141700 ^ -1581133943 ^ 0x29601C9F ^ -933499627) ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဃၜაၥၟၥထკჟსၣწြၻႾ၍ၵაႡწၙჅჳထ၁Ⴤღ႔ჩ၉ၪးၺძჇဖႋႋလႶ၎ၚၥ၅ႴႸდეშၷმჇႹၗხျဇႶჼ္ჭအႳႳဥ့၅ၵႼႭႽႈღ႞စ၈ၵႸရ္ჾၒဢဿტၕၹჍ႔ၸၷၲჯჲ႟႒Ⴖၼ","ၹၰၥဴၭၜႈဒჃပჭအလၾႆრ") : ""));
         this.destroySocket();
         this.reportConnectionLost(_759d77b0a7c8387256769f74.SOCKET_CLOSE);
      }
      
      private function _3371a624aba2925b3ddffec4(param1:IOErrorEvent) : void
      {
         var _loc2_:int = 0x438F6A22 ^ -1193531143 ^ 0x133E961C ^ -1246820151;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7FBFB398 ^ -2015458542 ^ 0x143E96C0 ^ -1315081658))
            {
               case 0:
                  this._3b6a0db3446469fb23a9ec3e(param1.text);
                  _loc2_ = 0x04CDA6ED ^ 0x2982DB7C ^ -1925462856 ^ -38378202;
                  break;
               case 1:
                  this.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴒ႕ၒ჆ბႳၨႎပၮჍဥဍှါ჆ჇဝდၐႃႍၦჇჇჰိၟჵ႒ဪ၇နၳსၣ","ၝ჎နၓီႵီလၛ჆ဥႴ၀႘ၡჿ") + param1.text + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剎刻勨勛勯勡勁勏刬刅劣勦剎勉劐劜刀勽刔勿勣刘","勚務勈勇劸剐刹勖刯剷剓勴删動劘刀") + this._f066c23f16a2ffa5bf8225d5() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挑掬捹掷挨捴捉採捔捗","挜揝掂捿挺揱挒掌掳掰換捙掎捇捏捊"));
                  _loc2_ = -442511328 ^ -1814917103 ^ 0x17DC2983 ^ 0x3C53B5BD;
                  break;
               case 2:
                  if(this._95e5da9937dc1f75267794c9)
                  {
                     _loc2_ = -391863742 ^ -1272353134 ^ 0x4B505338 ^ 0x4A1F43E5;
                  }
                  else
                  {
                     _loc2_ = -1718439690 ^ 0x457C2E80 ^ 0x466EB8A6 ^ -951911716;
                  }
                  break;
               case 3:
                  this.destroySocket();
                  this.reportConnectionLost(_759d77b0a7c8387256769f74.SOCKET_ERROR);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _2aa01b4e3ea4bc8391e8bc27(param1:SecurityErrorEvent) : void
      {
         this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勷劢剿劆创勡劐勷勝刪分剠剨刳剌剦刓剨劯劜勫劦剐剛勎則劳剛剅勃刦勫勶勝勊勋刡剗劰剾剚剽劂勚劍勎刜勑剟剿剆分剧剭刧副","勧刼刑刭剖剔劖勈勞剑剼办劼劷刯刟") + param1.errorID + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ာၝၳၪၹ၌ေ႞႑ဧოၝႠლၪ႙ო჉ႋဒ","ဟႄၜၾတოႧၻ့ႩႩჿნჃჃၰ") + param1.text);
         this._d5de2e70589828af2eb3199e();
         this.sendLog();
         this.destroySocket();
         this.reportConnectionLost(_759d77b0a7c8387256769f74.SECURITY_ERROR);
      }
      
      private function _e78f177cd6316c01959c0e1f(param1:WebSocketEvent) : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:String = param1.data as String;
         if(_loc3_ == null && param1.data is ByteArray)
         {
            _loc2_ = ByteArray(param1.data);
            _loc2_.position = 0x15AF5D00 ^ -386252630 ^ -1047423944 ^ 0x3CC48992;
            _loc3_ = _loc2_.readUTFBytes(_loc2_.bytesAvailable);
         }
         if(_loc3_ == null || _loc3_.length == (0x2C53357D ^ -1370339193 ^ -1223350736 ^ 0x35145BCA))
         {
            return;
         }
         this._9d27d2ef2dad7724498ab389(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刣刀劣剚刳剼勺刴剿刑劘勠劼勑","刀刢则刢劬判剓勔剒助剏刦别剃勯初"),_loc3_);
         var _loc4_:_5e1bab759fcaea6d1f84faa7 = this._c46f5c40e7c4185d4344c51a(_loc3_) as _5e1bab759fcaea6d1f84faa7;
         if(_loc4_ == null)
         {
            return;
         }
         if(_loc4_.needLog)
         {
            this.logger(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揣掟挽揤挈捍掾掍捄振捶捲捀捡掄挶捕掬捓揦掌揈挻挓揨揌掇掷据援揂捹挮掽捤挑捛掑授揟掿捺按捃","掁揧挑揦挭捍揯挃捉掮捐掯掉揱掜掭") + _loc4_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႁႸဩရှဂုჵၑႆုၹ","့ႈႂႳၝဇ႕Ⴃ჌ႀ၌ႅႭံჾ၀") + _loc3_);
         }
         if(_loc4_.reqId > (-1601519821 ^ -385679791 ^ -213757612 ^ 0x4535EFC9))
         {
            if(slowConnectionEmulator)
            {
               setTimeout(this.callbackManager.dispatch,0x7D97A955 ^ -272264243 ^ -2120686795 ^ 0x13CAD215,_loc4_.reqId,[_loc4_]);
            }
            else
            {
               this.callbackManager.dispatch(_loc4_.reqId,[_loc4_]);
            }
         }
         this._ef83ed7dbf63e8e307af067e.dispatchEvent(new _d2f221bbcfd428bfdc43d954(_d2f221bbcfd428bfdc43d954.RECEIVE_DATA,_loc4_));
      }
      
      private function _c46f5c40e7c4185d4344c51a(param1:String) : Object
      {
         var text:String = param1;
         var decodedData:Object = null;
         try
         {
            decodedData = _b0dc1e3df388e376abf4d4a0.decode(text);
         }
         catch(e:Error)
         {
            globalLogger.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴝႇ႗ჾ჌တႵဂრေ჎ၵဳმဒၗယဆრ၈ဩၓ၆႞Ⴐၐဨၨ၊ခႎႤ၉ၮၑჿဘဆႨფ႗ၢၘႃ","၆ႜ။ჽ္ၶဃႡ჉ၠ၄ၨႮဠჱ჉"));
            globalLogger.error(e);
            this.destroySocket();
            this.reportConnectionLost(_759d77b0a7c8387256769f74.DECODE_ERROR);
         }
         return decodedData;
      }
      
      private function reportConnectionLost(param1:String) : void
      {
         if(this._77b53f0b4ece2569bb47d447)
         {
            return;
         }
         this._77b53f0b4ece2569bb47d447 = true;
         this._95e5da9937dc1f75267794c9 = false;
         var _loc2_:int = this.callbackManager.clear();
         if(_loc2_ > (0x2DEF84EB ^ -499510287 ^ -1286081776 ^ 0x7C82640A))
         {
            this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剌剂劊勂劺勛剚剝刪剦剮刲勓劂勿劦刟刷刈別券劸制勂","勯劃刏劶剞刓刈務勁剿剆劤劤劳副勫") + _loc2_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣刻剢勝务剸剓勴劂劖剚刵勵劊勑募勗勥刿刧刬刅刏動勣勸劆劽勝劺劳割勳劁劰勀勨刓勅剨効劏勩劐劻削刏判勲劻刕勇則勥勨勖勏刈劣刭剂券剗勒","劉勠勴剐剧势动別勵別劾劻劺劼制务"));
         }
         this.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掽挩挘挞揇掯揤捉掼捼挱揸掣援掿揤挑捓挾挅挦捡揗插掮揁掹挖掭掽挈揽揍掹捫揂揄挶挏挨捓掉","揎揉捐掟揁挽捾挾捱掜捖掳捧捑掘揀") + param1);
         if(this._ef83ed7dbf63e8e307af067e != null)
         {
            this._ef83ed7dbf63e8e307af067e.dispatchEvent(new _d2f221bbcfd428bfdc43d954(_d2f221bbcfd428bfdc43d954.CONNECTION_LOST,param1));
         }
      }
      
      private function destroySocket() : void
      {
         this._95e5da9937dc1f75267794c9 = false;
         if(this._9c4516764b0fe963a379ae02 == null)
         {
            return;
         }
         this._9c4516764b0fe963a379ae02.removeEventListener(Event.CONNECT,this._a777d2d5eb9baadb0e944e86);
         this._9c4516764b0fe963a379ae02.removeEventListener(Event.CLOSE,this._99ec7516299f1044266885c5);
         this._9c4516764b0fe963a379ae02.removeEventListener(IOErrorEvent.IO_ERROR,this._3371a624aba2925b3ddffec4);
         this._9c4516764b0fe963a379ae02.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._2aa01b4e3ea4bc8391e8bc27);
         this._9c4516764b0fe963a379ae02.removeEventListener(SecurityErrorEvent.CERTIFICATE_ERROR,this._2aa01b4e3ea4bc8391e8bc27);
         this._9c4516764b0fe963a379ae02.removeEventListener(WebSocketEvent.DATA,this._e78f177cd6316c01959c0e1f);
         try
         {
            this._9c4516764b0fe963a379ae02.close();
         }
         catch(e:Error)
         {
         }
         this._9c4516764b0fe963a379ae02 = null;
      }
      
      public function log(param1:String) : void
      {
         var _loc2_:String = getCurrentUTCTime() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捀挼掱捬掍挿捺挡挢捔","挺揯捁挩捾掭挓掫捾损挾捶推揚揣指") + param1;
         if(tracePackets)
         {
         }
         this.logger(_loc2_);
         _92249437fe29fd83c5a9831c(param1);
      }
      
      private function _3b6a0db3446469fb23a9ec3e(param1:String) : void
      {
         var _loc2_:String = param1.indexOf(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挧捝挰揩掆揇挧挅掀捱挳捨挩揄","挒捪掛掚捓捄揟挑捛掼掻捤揘挂掗揑")) != (-2005144022 ^ 0x2B0CBB88 ^ 0x0507DB3F ^ 0x598F7162) ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劉剼刱勢刼剟劇刺剸別利刢剼勨勇刕别劏剞剻劬勎剔劙劝勚刜劸删剪刷制劒剔勞刽剐励剩则劖力勶剤刪勼劊剀勳剪剬勔劬剫劵劁募勚刷刮剉刐劒列勹刖刐刓刻刃剼剫剌勞切劜动剑剴剝劤剝勔刽勃刘劎刀刵勸勺勆劫劔利剗剼创剉勽劲勏刟勧勀利劙力剬勛勿刏劜剩劈劤勓勮劦劸剣功勂劉剅剈刺刪券刦劺勎励勓剫劆","剪劎劭勂剞劃勋刂剶劯劖刮刟劦剫刑") : _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၯႠၳူჽဖဤရထჇၥ႙ჰ၂჉၂ၕ၌჊ျႽ႕႒ၾဋြႧႺწლვჳჲမသმ၈ჵၯႉ჎၁႓ျ၊ႮၵႨ႙ၝဌ၈႕ႽႨၘၳၾၚဟၹႋီჵჱ၌Ⴔნၛဨဍဖႉဈ჎ႁၟჿၼ၉ွ჌ႋခံးဢၜဘႫႢၑႼჶၰမၴါჲხჴჁဩ႑ဳე","ႝၬ႙ၕჿႸဤဎၬႩო႑ဴဿ႗ၩ");
         this.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("အႈၥၖဇზჭႿა჆჏ღႸႠျႍႾမჺအ၃აၽ჉၌Ⴃိჸ႒ტႊဝ႟ბႯ၊Ⴏ჊၇ဧၾၕၭၬခဩჟၼဗဥ","ဦၴၯ၁ႆ၈႕ၖသူဇႍၘဉၢნ") + (getTimer() - this._99529794f2fddc7b70101bd0) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဠჍၨႺဃ၀ჶწှၦၼဉၵၢჟၤ","ၤ႑ႋဗၼ၈ၫၺ႞ჶნၯ჌၀იၧ") + param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勩剾剔勤勑划剾勣勶勎剔剎","勂劳刦劄剗勥劔劥勋劰割剴刻剝初切") + _loc2_);
         this._d5de2e70589828af2eb3199e();
      }
      
      private function _d5de2e70589828af2eb3199e() : void
      {
         var host:String = null;
         try
         {
            host = this._04802e5ca4d09c640e296968.replace(new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("分勦刽剖勚勥劧勓劐刋刿劶剡剻刦勲办刈刿勠勳勺初劺刼勆","勩剿勜剝剖剒励劇刚刂勺刟勁剘剓勘")),"").replace(new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劄勹刹创劆劷刍勍初劳勜剒刉勀勫勩勧勩刷前剃劢劍劔","劗劂勭劮刪动劚劍剌動劚剨剔劳劗劖")),"");
            if(!DNSResolver.isSupported || host.charAt(-2032576108 ^ -1676279368 ^ -880723742 ^ -783392562) == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揌挦捼挽捭捉捀揗揝措","揄挃捞揪捋挠挞揾掑描掲揘掋指揮捽") || new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜換揇挡掍掲掶损捲揼揑揕挾援挾捎授挀掗挽掬挎捲掇","挦掵捝授挲捻揗揈捩捜掵捊捆捬掍捣")).test(host))
            {
               return;
            }
            this._5027370c693db47021cdcf5e = new DNSResolver();
            this._5027370c693db47021cdcf5e.addEventListener(DNSResolverEvent.LOOKUP,function(param1:DNSResolverEvent):void
            {
               var _loc3_:ARecord = null;
               var _loc2_:Array = [];
               for each(_loc3_ in param1.resourceRecords)
               {
                  _loc2_.push(_loc3_.address);
               }
               log("DNS " + host + " -> " + _loc2_.join(", "));
            });
            this._5027370c693db47021cdcf5e.addEventListener(ErrorEvent.ERROR,function(param1:ErrorEvent):void
            {
               log("DNS " + host + " failed: " + param1.text);
            });
            this._5027370c693db47021cdcf5e.lookup(host,ARecord);
         }
         catch(e:Error)
         {
            this.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၟဆჽမမဖႢႅႃნတ၁ၙဦမၺဍၳၤၥ၄႔ဆ၌ၗႼႽဘႍჹႲနဠႤნჱၞဪჁჟ။ႁႀ၏","ဇဵဗငအႥႺ႕ၞၿეႣဤლწၖ") + e.message);
         }
      }
      
      private function _f066c23f16a2ffa5bf8225d5() : int
      {
         return this._95e5da9937dc1f75267794c9 ? int((getTimer() - this._f59949ac54b59357536a8d80) / (0x2BE73DD9 ^ 0x1E5BEC30 ^ 0x588518A6 ^ 0x6D39CAA7)) : -864363367 ^ -1777288024 ^ -2023298090 ^ -586380313;
      }
      
      private function _9d27d2ef2dad7724498ab389(param1:String, param2:String) : void
      {
         var _loc3_:int = 0x55D81D1E ^ 0x3BD1EDC9 ^ -1094703506 ^ 0x24292958;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x55D915AF ^ 0x0468C5EC ^ 0x44DFA50B ^ -510752085))
            {
               case 0:
                  return;
               case 1:
                  return;
               case 2:
                  if(!tracePackets)
                  {
                     _loc3_ = 0x3CF09480 ^ 0x2A5B0985 ^ 0x76DBEAF3 ^ -1802467308;
                  }
                  else
                  {
                     _loc3_ = -1070848537 ^ 0x0AE056F6 ^ 0x06E3B134 ^ 0x38CF3DC6;
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

