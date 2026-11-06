package com.ax3.net
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._b8cf18222865bdcc29af1c94;
   import com.ax3.utils.log.globalLogger;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class _f5d3c19b4de5df055d1bc952 extends Loader
   {
      
      public static var logger:Function = trace;
      
      public static var globalInstanceId:int = -128187278 ^ -1380556707 ^ 0x71B6306F ^ 0x245C5440;
      
      protected var _repeats:int = 0;
      
      protected var _request:URLRequest;
      
      protected var _context:LoaderContext;
      
      private var _a6b90dfa75c83c53dd64ca25:URLLoader;
      
      private var _8b7aef7420558af2bcef39d8:Boolean = false;
      
      public var instanceId:int;
      
      public function _f5d3c19b4de5df055d1bc952(param1:int = 999)
      {
         super();
         this.instanceId = globalInstanceId++;
         this._repeats = param1;
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null) : void
      {
         logger(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("到劐券刻勍勴剥刦加勗劝劔勰剫刾勃努剬剉勚劸劄切勐动勾刉剿刱劻勥刳劫剹劔刱利刞刍劚刟別剀刔劦勇勊删劵勹剕勀則剡勞劙勼勁勖劂剒别","勚務剤勏劅剒劁剞刱効删剝劅劑劏剋"),param1.url);
         this._request = param1;
         this._context = param2 || new LoaderContext();
         this._context.allowCodeImport = true;
         this._c518c64ac8b8c79dc95051db();
         this._a6b90dfa75c83c53dd64ca25 = new _ea6442e70d64d75e3df1d2ef(this._repeats);
         this._a6b90dfa75c83c53dd64ca25.dataFormat = URLLoaderDataFormat.BINARY;
         this._a6b90dfa75c83c53dd64ca25.addEventListener(Event.COMPLETE,this._8c0d898c452b31a0b75310c8);
         this._a6b90dfa75c83c53dd64ca25.addEventListener(ProgressEvent.PROGRESS,this._0018921bc7f6f58c34ab5601);
         this._a6b90dfa75c83c53dd64ca25.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         this._a6b90dfa75c83c53dd64ca25.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this._a6b90dfa75c83c53dd64ca25.load(new URLRequest(this.url));
      }
      
      private function _0018921bc7f6f58c34ab5601(param1:ProgressEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         logger(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剋劊劯勷勅剧劀列勖勤刋刖剻勵創刉劀勑勉劭刧剐办剗剴分剳刷剺剠剻剶勖剴勇勤力勇务劝劻势勷勎刹勹剺创勺劗剞刚剨劖剚劄劃勗剽刹刉勦勡劺劎勚劇勸勶勨剭前勞刿劲剏劷动勌労勪剚剄削","剅剦勛劧劊助劁勍劑劗刾剉分删划剧") + this._request.url);
         logger(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揣揽挘捊掿揩揆掁捜捭捹捫捝揝捍掺掝掯揕挪捔揌揋挰揌捚揃捒掴掲捇揵挦揁排掵揼揜捐挣掙捰揢掳挺揺掱捡捄挋揢掌掌挗揀掊挕揌控接捬捵掔揜揣掾揝揫挸捈挥揧挧挶掶捁揱捷捚掓掘捵掾掙控捵挎挸捺掬捖挧揸捃捓捏掍捻挊揘捷推揿挼","揃掤揾揹掀挖揜掞挳掃接揮捻掗捎揃") + param1.errorID);
         var _loc2_:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ნဎცၷဣၾჸနႺဘ၂ၫှၑჵႇႲဲါ၇ဩზ၄Ⴃ၍ာჍဗႀတၼဇၒდႂშრဇၳ჊ီၥဎკႆဎၾႏၱံတႹႱჶ၌ၗစ႙ჼၚ႕თဦჯၝჶ႕გၖყယၧင႑ႽჀၟႻ჻်ბၟვჾႝၐყဗႭႄწჴၗოဗႏႼფ႑იႾႪ်ြ","ၛဏ၃့ცဝჾမအဓ၅၉ႆဏ၂ႃ") + param1.errorID + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႟ရფჹႋგၶထ႔ဗစဝ၇დၼၖၤဒႌႃჩ႖მ၆ჭၧ","სူႱ၍Ⴔၛ჌Ⴌၰ႞შၬႄუჿქ") + this._request.url;
         globalLogger.dispatchEvent(new _b8cf18222865bdcc29af1c94(_b8cf18222865bdcc29af1c94.ASSET_LOAD_ERROR,_loc2_));
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         logger(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勀剷劄勮勫剳剓剃勑剦劏劾勶刿前劺删助勈劎剑剌劚劁刣勴刞創刍剧劮剋刀劅劀刜剖刳判刉劓剝副劗勌刅刌刳剡刀刔刓剴劮勃划効劔副剁剐勮励剛剄剈剣剌创刲剱刷刀剽勼剂剰勄剌创刢劺刅勔劳劔勐劬募刿刂刧勫劊剄剿","剜刢勌劅勸剉剝勅勿勩刀剪割劸剧勜"),this._request.url);
         logger(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႅၼႫႠိေၶႁვ၃ფ჉ဍႺ၉ႚႌစ၄Ⴉျ႞ჍႱႌႇဓဇნცၔးၢ၌ოႶၭဪတႱ჏ႿဥၰအჇၴႡၝၴ္ၥႼ၆ဃဘჀွႁႾဓ႘ဍၐგႭမლွ჎ဢყႎჿႿ჈ძဉၟႚ၌မိၖოၶ႔ჾ჌ჿ႕၇჎Ⴍ႗၌ူဃႁဵါႴၔဵဎဿჸၿႋქႻဧၥლ၄ဉ","ჩႍဘწႩ၅၌ၳႵႮငႂႭႦႢဋ"),param1.errorID);
         var _loc2_:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掻挺捠揢捑揼掣捝挮捽揨捉挨揁捹推挀换揇捋掔挭掻捅掟揰挴捚掦掬掻捀捀揻捿揍接揁捙揀揮挦掍掜挛挨捝掃捄掙捌揻揶挖挦捝掄掅揞挰揕掼捫捦捜捣揃挤掉掤揽捯挾捭捄捰捐掿挴排揷捒揧挠捭揰揩捤捳持揗揇挨挝按捴掂掶捶揗掵揸捣推掋挺掍掸揹揯掳揠捈捳捊掚","揭挧接掋掓揷捄挺掬挆掱接捨援挆捷") + param1.errorID + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劅勒刿剓劳劬剌刧势刽勎别勮動勢剒刅劷剝刦勉勂別剖勈利","劬劫劽勁力勾勈剮加划労勊勲劏刓募") + this._request.url;
         globalLogger.error();
         globalLogger.dispatchEvent(new _b8cf18222865bdcc29af1c94(_b8cf18222865bdcc29af1c94.ASSET_LOAD_ERROR,_loc2_));
      }
      
      private function _8c0d898c452b31a0b75310c8(param1:Event) : void
      {
         var _loc2_:int = -1290299584 ^ -1897835854 ^ 0x23C62989 ^ -1208278634;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x0AD8DA04 ^ 0x140A2ED7 ^ -1746791328 ^ 0x20FB2D58))
            {
               case 0:
                  this._context.securityDomain = null;
                  _loc2_ = 0x6B575B33 ^ -1199333695 ^ -1745346190 ^ -303617682;
                  break;
               case 1:
                  logger(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ნჀှႴႥ၆ၾၰႸႝ၃ლ჎ၚ႐Ⴝ჆Ⴜ჏၇ႉဵၦ჻႔ည၈ံၔတႸ၇ဿၶဧႂၜ჋ၒၳႷჅၪჀၣၶ჆ႍ၍჊႐Ⴟ჏ႾမႛၴႽ჊ဋၟმჴဦၼငျဝၞც၄჈ၧტჵ႙ჱဝၪႍ႑ၚႾ႔ၔჱၸၞၱဂၩၬ","။჈ႉჶႬ჏ၱ႘ၔე჉ႶဉჶႎჃ"),this._request.url);
                  if(this._context != null)
                  {
                     _loc2_ = 0x51BAB9A3 ^ -1707244139 ^ 0x4CC92F90 ^ 0x2E85DE4D;
                  }
                  else
                  {
                     _loc2_ = 0x4ACE32D2 ^ 0x08E79E6D ^ 0x5D424752 ^ -1231018493;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  return;
               case 4:
                  contentLoaderInfo.addEventListener(Event.COMPLETE,this._f9bc98d5cb6f50839b759241);
                  loadBytes(this._a6b90dfa75c83c53dd64ca25.data,this._context);
                  _loc2_ = -1506032045 ^ 0x78468165 ^ -622833878 ^ -1386822156;
                  break;
               case 5:
                  if(this._a6b90dfa75c83c53dd64ca25.bytesLoaded == (-226718881 ^ -1748839045 ^ 0x254A25AC ^ 0x40F47B88))
                  {
                     _loc2_ = 0x1703478E ^ -745408645 ^ -2007522813 ^ -452010214;
                  }
                  else
                  {
                     _loc2_ = -14943801 ^ 0x57D2611C ^ 0x6A4B565A ^ 0x6B49036E;
                  }
                  break;
               case 6:
                  if(this._request == null)
                  {
                     _loc2_ = 0x547A7F64 ^ 0x584CB7EC ^ -1150963462 ^ 0x1E98B59B;
                  }
                  else
                  {
                     _loc2_ = -923916465 ^ -1980252669 ^ 0x04C809CF ^ -333816471;
                  }
                  break;
               case 7:
                  globalLogger.dispatchEvent(new _b8cf18222865bdcc29af1c94(_b8cf18222865bdcc29af1c94.ASSET_LOAD_ERROR));
                  _loc2_ = 0x1DE07304 ^ 0x4660E00A ^ 0x714A7DCE ^ -2097077464;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f9bc98d5cb6f50839b759241(param1:Event) : void
      {
         var _loc2_:int = -1613412751 ^ 0x090D03FA ^ 0x53CF2A29 ^ 0x67C4DF57;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6898B0B3 ^ 0x54E50BA8 ^ 0x4C6F74F4 ^ -759070950))
            {
               case 0:
                  if(this._request == null)
                  {
                     _loc2_ = 0x2ABF8F5F ^ -1473262870 ^ -714410250 ^ -181861452;
                  }
                  else
                  {
                     _loc2_ = -1152575730 ^ -1779272287 ^ 0x5D0FFA36 ^ -782030739;
                  }
                  break;
               case 1:
                  logger(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劄剷刐剜剒劯勂勷劓刓到勇剥制勶勖劗刔剅勗勡刬勥勯劦努刴刌勥勥剻制勢刍勲効劒刌刦刼剌劣劓刭剾剁劼勢勥勢剆剱剧劗剽劚劂劽剧劮勌剜効劃分勻勱分剢劓刺剑创勿务刖剣勡制则劉勀","刲動剱劘初劾刴劭勂劾勵勣券剄勻剪"),this._request.url);
                  this._8b7aef7420558af2bcef39d8 = true;
                  contentLoaderInfo.removeEventListener(Event.COMPLETE,this._f9bc98d5cb6f50839b759241);
                  this._c518c64ac8b8c79dc95051db();
                  dispatchEvent(param1);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c518c64ac8b8c79dc95051db() : void
      {
         var _loc1_:int = -273843160 ^ 0x5216FF64 ^ 0x071DDCB9 ^ -1994875730;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6A6C5EB2 ^ 0x75535760 ^ 0x49B8305A ^ 0x6539FAD3))
            {
               case 0:
                  if(this._a6b90dfa75c83c53dd64ca25)
                  {
                     _loc1_ = -1723831478 ^ -1645271458 ^ 0x778111ED ^ 0x40909FA3;
                  }
                  else
                  {
                     _loc1_ = 0x0B2C0ED4 ^ -2143409092 ^ -1796600750 ^ 0x2C46EDE3;
                  }
                  break;
               case 1:
                  this._a6b90dfa75c83c53dd64ca25.close();
                  this._a6b90dfa75c83c53dd64ca25.removeEventListener(Event.COMPLETE,this._8c0d898c452b31a0b75310c8);
                  this._a6b90dfa75c83c53dd64ca25.removeEventListener(ProgressEvent.PROGRESS,this._0018921bc7f6f58c34ab5601);
                  this._a6b90dfa75c83c53dd64ca25.removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
                  this._a6b90dfa75c83c53dd64ca25.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
                  this._a6b90dfa75c83c53dd64ca25 = null;
                  _loc1_ = -1328075020 ^ -125284577 ^ -1855462646 ^ -360300104;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get url() : String
      {
         return this._request != null ? this._request.url : null;
      }
      
      override public function close() : void
      {
         this._c518c64ac8b8c79dc95051db();
         super.close();
      }
      
      public function get bytesTotal() : int
      {
         return this._a6b90dfa75c83c53dd64ca25 ? int(this._a6b90dfa75c83c53dd64ca25.bytesTotal) : 0x1E821EE3 ^ -1578847520 ^ 0x093F213A ^ -1235645127;
      }
      
      public function get bytesLoaded() : uint
      {
         return this._a6b90dfa75c83c53dd64ca25 ? this._a6b90dfa75c83c53dd64ca25.bytesLoaded : uint(0x4A4C0B0E ^ -657124338 ^ 0x53CF9525 ^ -1051293147);
      }
      
      public function isLoaded() : Boolean
      {
         return this._8b7aef7420558af2bcef39d8;
      }
      
      public function destroy() : void
      {
         this._request = null;
         this._context = null;
         this._a6b90dfa75c83c53dd64ca25 = null;
      }
      
      public function _fa617604776c92449ea4a8e0() : void
      {
         var _loc1_:int = 0x60B230DC ^ 0x2604D6BB ^ 0x7681BDA6 ^ 0x06E6BE54;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x134B06B1 ^ 0x759943D1 ^ 0x09318372 ^ 0x59322387))
            {
               case 0:
                  if(this.content is DisplayObjectContainer)
                  {
                     _loc1_ = -766700697 ^ 0x1B0E8F3B ^ -1189185207 ^ 0x468C0082;
                  }
                  else
                  {
                     _loc1_ = 0x7C0BA3B1 ^ -1990020873 ^ 0x4DF92C32 ^ -1908286752;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  removeAllChildren(DisplayObjectContainer(this.content));
                  _loc1_ = 0x4882B27F ^ -1174845518 ^ -985790734 ^ 0x029416AB;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

