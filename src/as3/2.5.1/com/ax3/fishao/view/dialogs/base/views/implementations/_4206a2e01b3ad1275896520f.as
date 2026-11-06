package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._91443e554fdccabd3846f5da;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class _4206a2e01b3ad1275896520f extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static const _5202acf9d3e546564214a4ac:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဤဵႦ჆၈ၑရဋံဠჭႪံၨၔႢ","ဳဃ႐ჭအဋံနီჍၧჀჾჾႉწ");
      
      private static const _1878236d1a42aa6fbf5510b3:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劮勮刋剾剬分刱勇勇劀剀刁剑勲劮副劊劤剈剽勮勊劚剀刓劸剙刃","剖刹劝刬勿剎勍劍剥剑剢利别劥制劭");
      
      private var _fbe167ade7a8065d1ad32f2d:DisplayObjectContainer;
      
      private var _4f2287a9cc861353ffbcb941:DisplayObject;
      
      private var _92172663d1ec73ad0ff906de:DisplayObject;
      
      private var _825fb15d70cf48d835803fe6:Number;
      
      private var _0ec66e5fc2dee8c715e79103:Number;
      
      private var _6a17f3af2c808527c09cc247:Point;
      
      private var _43f4ab2d6d03fe3e03c4673d:String;
      
      private var _e6b1ec60bc00393fa442b6aa:Point;
      
      public function _4206a2e01b3ad1275896520f(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer, param3:String)
      {
         this._43f4ab2d6d03fe3e03c4673d = param3;
         this._fbe167ade7a8065d1ad32f2d = param2;
         super(param1,this._fbe167ade7a8065d1ad32f2d);
         this.init();
      }
      
      public function set bodySizeRelated(param1:Number) : void
      {
         this._0ec66e5fc2dee8c715e79103 = limit(param1,-1131818750 ^ 0x55D67DB7 ^ -398436169 ^ 0x011FF402,-1550193960 ^ -1695303071 ^ 0x12584D40 ^ 0x2B321DF8);
         this._d02972fc970b79508137aa11();
      }
      
      public function set position(param1:Number) : void
      {
         this._825fb15d70cf48d835803fe6 = limit(param1,0x6ADE894D ^ -1959558239 ^ 0x172CB31C ^ -155076112,0x6F1E0780 ^ 0x6BC817CF ^ 0x6CB538CE ^ 0x68632880);
         this._a69aaaac47f206bd2be967e1();
      }
      
      public function get position() : Number
      {
         return this._825fb15d70cf48d835803fe6;
      }
      
      public function set offset(param1:Point) : void
      {
         this._6a17f3af2c808527c09cc247 = param1;
         this._d02972fc970b79508137aa11();
      }
      
      public function get moveSpace() : Number
      {
         var _loc1_:Number = 0x66CCEDC5 ^ 0x7931E0A1 ^ -85747740 ^ -450979200;
         switch(this._43f4ab2d6d03fe3e03c4673d)
         {
            case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
               §§push(0x351E7370 ^ -1705018947 ^ -1327201935 ^ 0x1FA58BBC);
               break;
            case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
               §§push(-185358524 ^ -553484317 ^ 0x5C334A8B ^ 0x77C2922D);
               break;
            default:
               §§push(-542990408 ^ 0x782F3287 ^ -2107600089 ^ 0x25ED3E1A);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = this._e6b1ec60bc00393fa442b6aa.x;
               break;
            case 1:
               _loc1_ = this._e6b1ec60bc00393fa442b6aa.y;
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("အ႞჊Ⴕႇვးი჉ၑၟၝ႘ႂႉၘႭჁႮၱါဴ္ၚႹဃ္჉ჭၯხსဘლႵ၀Ⴍဉჩ႟჋၈ႃဋၙ႒ၗ၌ჳဋၯჺႻၓშ჈჊ხၧ႐ငၑ။ნ჏ာჱႈူ჏၏႓ჟၣდႱၦၒဍဗၿჄႝ჆ჩ჊Ⴗ჎ၕၕၦြ჌ၛცშ့႑ၪႈ႞ဧၰႳ჌჏ႽၘႩ၊აဒဋ၂ၶ჆ၻႇၺ჎ხႊჿ჎ၩဥႯ၈ვူჇკ၈კနბၠဿၱ႙၅၌Ⴙႏဠၑ჌ၕუ၀ဦႁီႠ","ၤჁ႟၎ცႺဂဂ჈ါဈႡႸႀခႪ") + this._43f4ab2d6d03fe3e03c4673d);
         }
         return _loc1_;
      }
      
      private function init() : void
      {
         this._4f2287a9cc861353ffbcb941 = Debug.assertProperty(this._fbe167ade7a8065d1ad32f2d,_5202acf9d3e546564214a4ac);
         this._92172663d1ec73ad0ff906de = Debug.assertProperty(this._fbe167ade7a8065d1ad32f2d,_1878236d1a42aa6fbf5510b3);
         this._92172663d1ec73ad0ff906de.alpha = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掐捣描捙捍挎挈捔掽掘揠控挕挢揔挤挳捷揉接揬挄掴挬","揍捛插捻捝捳挭挰挰挜揧按挣挛掴揢");
         (this._92172663d1ec73ad0ff906de as Sprite).buttonMode = true;
         (this._92172663d1ec73ad0ff906de as Sprite).useHandCursor = true;
         this._6a17f3af2c808527c09cc247 = new Point();
         this._e6b1ec60bc00393fa442b6aa = new Point();
         _fc17178734ae7cc816dbcc2f(false,false,false,false,true);
      }
      
      private function _a69aaaac47f206bd2be967e1() : void
      {
         switch(this._43f4ab2d6d03fe3e03c4673d)
         {
            case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
               §§push(-1017219127 ^ 0x40B9440B ^ 0x5E105950 ^ -570987886);
               break;
            case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
               §§push(0x3EA916D9 ^ -872572523 ^ -417028524 ^ 0x12702919);
               break;
            default:
               §§push(0x3B344ADE ^ -461956844 ^ -828516141 ^ 0x11DE8B1B);
         }
         switch(§§pop())
         {
            case 0:
               this._4f2287a9cc861353ffbcb941.x = this._6a17f3af2c808527c09cc247.x + (this._92172663d1ec73ad0ff906de.width - this._6a17f3af2c808527c09cc247.x * (0x053BEBAF ^ -455561547 ^ 0x38190D4E ^ -637908906) - this._4f2287a9cc861353ffbcb941.width) * this._825fb15d70cf48d835803fe6;
               this._4f2287a9cc861353ffbcb941.y = this._92172663d1ec73ad0ff906de.y + this._6a17f3af2c808527c09cc247.y;
               break;
            case 1:
               this._4f2287a9cc861353ffbcb941.x = this._92172663d1ec73ad0ff906de.x + this._6a17f3af2c808527c09cc247.x;
               this._4f2287a9cc861353ffbcb941.y = this._6a17f3af2c808527c09cc247.y + (this._92172663d1ec73ad0ff906de.height - this._6a17f3af2c808527c09cc247.y * (-115028848 ^ 0x197E1474 ^ -164429788 ^ 0x1669D8C2) - this._4f2287a9cc861353ffbcb941.height) * this._825fb15d70cf48d835803fe6;
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揃掴揀捰捸掲揱捪掵挛挠捛振掰掙揨捿揙捌掱掐挑揋掑揝揬揓掿捂掇掓掚接挱挭揲捲捯揙捕挩捵挷挮挥揩捪描揀掦掊揻挌提揬挱揦揬挣掌挟换掱揾挟揅捤挈捤捼挂掇挻掿揈揝揹捃捭揪揞捃揤挱挸揿捵揄捙捭掣掯挃捹掏揧揠持援挄挿挿掜捴持换揣挥掓捝掱揈掏挃掏掬插捨掎揞挰掟捔捨挃掼捹捖掗挐揠揽捜掑挙捷掑捱挑挿掭接掕挿掬挧捿挤捵掲挑挿挂掐","掩掃捦挍挱揮掜指挌挙挓揥挗揳挥挩") + this._43f4ab2d6d03fe3e03c4673d);
         }
      }
      
      private function _d02972fc970b79508137aa11() : void
      {
         switch(this._43f4ab2d6d03fe3e03c4673d)
         {
            case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
               §§push(0x6B85467B ^ -40208734 ^ -77523334 ^ 0x6D7E26A3);
               break;
            case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
               §§push(0x23B9DF9C ^ 0x7027A231 ^ -733804232 ^ -2015529836);
               break;
            default:
               §§push(-866298094 ^ -1598936261 ^ -1523271884 ^ -908342497);
         }
         switch(§§pop())
         {
            case 0:
               this._4f2287a9cc861353ffbcb941.width = (this._92172663d1ec73ad0ff906de.width - this._6a17f3af2c808527c09cc247.x * (-19649196 ^ -2116527879 ^ -637497905 ^ -1525876640)) * this._0ec66e5fc2dee8c715e79103;
               this._4f2287a9cc861353ffbcb941.height = this._92172663d1ec73ad0ff906de.height - this._6a17f3af2c808527c09cc247.y * (0x0DB93813 ^ 0x39142696 ^ -152045616 ^ -1035802281);
               break;
            case 1:
               this._4f2287a9cc861353ffbcb941.width = this._92172663d1ec73ad0ff906de.width - this._6a17f3af2c808527c09cc247.x * (0x713BD89D ^ -1314700474 ^ -1510771198 ^ 0x656BEDDB);
               this._4f2287a9cc861353ffbcb941.height = (this._92172663d1ec73ad0ff906de.height - this._6a17f3af2c808527c09cc247.y * (-1379352813 ^ -317727993 ^ 0x7564E56A ^ 0x35A3817C)) * this._0ec66e5fc2dee8c715e79103;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剸勡刻到刴刟勒剑剛剷勏到剏劃劄剕勩剸劔剓刢勚力則劮利劇刣剃勐勯勗勮刹劻刞勎劉务勆刻努刬勸勅助刘刺劀剻初刌剹剾刖剿剞刟劣劣分刼刂刪勮剐劉剦利勺勒劼剣刀創剆刪刘劁動剸劏剰剂劭劧劏劄剭勓剓劄勄办劋勹刳劂刬剿刱勓剏剁勉刄勵剿勚勗劧刃剾勡勞剁刿劥削剜劄勜勞勱刑剘刄到切勫励劯劄剐力劣刋刱勛勓利剚勏剫务勷労劕劲剎勞劖刮劰","刐剐副刋剐劽劎勪労劳刄剶剤刬劅剓") + this._43f4ab2d6d03fe3e03c4673d);
         }
         this._e6b1ec60bc00393fa442b6aa.x = this._92172663d1ec73ad0ff906de.width - this._6a17f3af2c808527c09cc247.x * (-1114181247 ^ -1851159817 ^ -51247789 ^ -791839193) - this._4f2287a9cc861353ffbcb941.width;
         this._e6b1ec60bc00393fa442b6aa.y = this._92172663d1ec73ad0ff906de.height - this._6a17f3af2c808527c09cc247.y * (0x76FDC034 ^ -1224550378 ^ 0x4241CA89 ^ -2084646231) - this._4f2287a9cc861353ffbcb941.height;
      }
   }
}

