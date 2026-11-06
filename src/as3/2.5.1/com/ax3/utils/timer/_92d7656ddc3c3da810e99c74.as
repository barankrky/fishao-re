package com.ax3.utils.timer
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.errors._dd6ebc11900ce0615333d85b;
   import flash.display.Stage;
   import flash.utils.Dictionary;
   
   public class _92d7656ddc3c3da810e99c74
   {
      
      private static var _7a396a0033ea5e22f7834abb:_92d7656ddc3c3da810e99c74;
      
      public static var frameRate:Number;
      
      public static var frameTimeMs:Number = -1549623400 ^ -2044799640 ^ 0x671527BD ^ 0x42A96D6C;
      
      private var _15f335b4e420eb41df4482e2:Dictionary;
      
      private var _cfa27f9fdb3be6060f83d4f5:Stage;
      
      public function _92d7656ddc3c3da810e99c74()
      {
         super();
         if(_7a396a0033ea5e22f7834abb != null)
         {
            throw new Error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ნ၀မჁႶႵჲၕჂ႟ရჽჟკၼီဝჱဵ႘ၪჸညိშႫွႺ၉ိႁစჵ჆პဥဉჍ჉ႯႿჄၘႮဵႛၕဏ်჻Ⴓီ჌ფჵႩုႭ","Ⴘჸၛၪწႅၼၟ၁လჩၷႠၺშძ"));
         }
         _7a396a0033ea5e22f7834abb = this;
         this._15f335b4e420eb41df4482e2 = new Dictionary();
      }
      
      public static function getInstance() : _92d7656ddc3c3da810e99c74
      {
         var _loc1_:int = -868376570 ^ -333669230 ^ 0x4F5E5648 ^ -1536988712;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-532795500 ^ -1077643780 ^ 0x22503E14 ^ -1229559943))
            {
               case 0:
                  return _7a396a0033ea5e22f7834abb;
               case 1:
                  if(_7a396a0033ea5e22f7834abb == null)
                  {
                     _loc1_ = 0x37EF40B7 ^ 0x0F6EF19F ^ -777189575 ^ 0x2230B516;
                  }
                  else
                  {
                     _loc1_ = -1334472590 ^ -53377054 ^ 0x530879E1 ^ -726635148;
                  }
                  break;
               case 2:
                  _7a396a0033ea5e22f7834abb = new _92d7656ddc3c3da810e99c74();
                  _loc1_ = 0x5C4460EE ^ -167609856 ^ -818402889 ^ -1369296804;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function init(param1:Stage) : void
      {
         this._cfa27f9fdb3be6060f83d4f5 = param1;
      }
      
      public function _313a8b8f13b48a64d931013e(param1:String, param2:Number = -1) : void
      {
         var _loc3_:int = 0x5E681604 ^ -1759968731 ^ -1072994482 ^ 0x676DB8D4;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1888713083 ^ -1171592444 ^ -1166435958 ^ -517455951))
            {
               case 0:
                  this._15f335b4e420eb41df4482e2[param1] = new _34a2ba6ad978d976b8b0f5a4(this._cfa27f9fdb3be6060f83d4f5,param2);
                  return;
               case 1:
                  if(this._cfa27f9fdb3be6060f83d4f5 == null)
                  {
                     _loc3_ = 0x09614523 ^ 0x7D322FC4 ^ -1827041616 ^ -1990381586;
                  }
                  else
                  {
                     _loc3_ = 0x6AB7CEBD ^ 0x4E7A59A1 ^ -2081771310 ^ -919540618;
                  }
                  break;
               case 2:
                  if(this._15f335b4e420eb41df4482e2[param1] == null)
                  {
                     _loc3_ = -1196826027 ^ -821255893 ^ -199326419 ^ -307491351;
                  }
                  else
                  {
                     _loc3_ = 0x3467BA14 ^ 0x59053B57 ^ 0x13DA0962 ^ 0x10AF439F;
                  }
                  break;
               case 3:
                  throw new _dd6ebc11900ce0615333d85b();
               case 4:
                  throw new Error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劍劯剨剋勉务剑勭剕势刳勗势勥划勏勀功勈劦划勝刹勨勉劜劌劯剽劏刓勞刞剢勗切","劗劀劐剱劕労刚则劰剾剛刑剷剣划動") + param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揤挼捅掠揖掰揟揹掟掂挖捁捄挍揭揺揶揄捛掎採揇","捬挨挢掯揩揫振掌揺挊捝挟揙挋掦捴"));
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _57ad3faeff9ca92cbf9fe447(param1:String) : _34a2ba6ad978d976b8b0f5a4
      {
         return this._15f335b4e420eb41df4482e2[param1];
      }
   }
}

