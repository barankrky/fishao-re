package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _60ca73acc6a9648cf0a76e6f extends Sprite
   {
      
      public static const ICE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ღႧ၂ႲყမჾဥჟႪဍၱბၮ","ႆၭფ။ၸံၷႹႭჯဵ჆჊ဩႬჍ");
      
      public static const WATER:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描揄挡揎捊掔挜掓揓揻捍挥掻挝掕揅挜挌","挐挻挦揑挊捷捣捒揄掿握捂揦描挦挻");
      
      public static const FREEZING:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("分劗剤剝劜劄勑剦刱功刱刘剡功初剣劗勥勉刌劰剾剥力","勱功剜劗勣劈勠劃刁刾刯刼劗刻刋勱");
      
      public static const MELTING:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措捠捼挢揗捰捈掽挟揞挐振掙揕按揻捁掷挳掼捚挔","据挿揎揉揘掵揷挎挄掌挄掮掏捵掄捂");
      
      private static const _b36b64f6ab47efbabe226b14:int = -1144683674 ^ 0x32D9802E ^ 0x171BD656 ^ -1643653867;
      
      private static const _8f08e7dd22ddcc311b8356dd:int = 0x31DFEC6E ^ -646681689 ^ -1600160277 ^ 0x4834FA29;
      
      private var _asset:MovieClip;
      
      private var _c7dcf9d4a470bfd61cf26bac:Boolean = false;
      
      private var _49ea77f3ad143d2fb3f893f9:BitmapData;
      
      private var _eee82c8acfb542959fd63087:Rectangle;
      
      public var xOffset:Number;
      
      public var yOffset:Number;
      
      public var origX:Number;
      
      public var origY:Number;
      
      public function _60ca73acc6a9648cf0a76e6f()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
         this.origX = this._asset.x;
         this.origY = this._asset.y;
         var _loc2_:DisplayObject = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揎换捒捙掰挰掙掫挰挶挥捞接换揀挖捫揥掣提捩挾掀揊掻捛捂挃捣挰","挐捉掏捕揚掞掭挂捨挓揙掸掺揯捉揎"));
         this._eee82c8acfb542959fd63087 = _loc2_.getBounds(_loc2_);
         this._49ea77f3ad143d2fb3f893f9 = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc2_);
         _loc2_.visible = false;
         this.frame = -2076007105 ^ 0x19F273F2 ^ 0x75DF38BE ^ -395317646;
         this.xOffset = this._asset.x + this._eee82c8acfb542959fd63087.x;
         this.yOffset = this._asset.y + this._eee82c8acfb542959fd63087.y;
         ShiftWrapper.shiftDisplayObject(this._asset,this);
         addChild(this._asset);
         this.visible = false;
      }
      
      public function _1963d0a948fa760e5dca0769() : void
      {
         var _loc1_:int = -1414002190 ^ 0x50C055C4 ^ 0x2CE2740C ^ -1155587847;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-924866907 ^ 0x131D688C ^ 0x067D859A ^ -1321581710))
            {
               case 0:
                  return;
               case 1:
                  Cc.warn(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剮剀勹别剫勇勗刂勁勈剈勽剴刡剬勫勰勁刳剈剃劀劍劘勦勗刭刓刀剥剿劻劈刌劁剥剳勜勁刓劀勶剏劒剈剶劼刻剬勻勶分勻勈","劺勀劫劸剬劤剒別剥剆剛剎勾刧刎勦"));
                  _loc1_ = -1243736692 ^ 0x46976D1D ^ -1978759800 ^ 0x15C2F5D8;
                  break;
               case 2:
                  Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刣判劗劗勠刽勞刃創勒勝刦刽劐劬勛务勺功劓刂募刽刧劳勵勷勺劵刈劏刊","刻劑劢切勔刚勑利剏剥別剀勡劒勑勂"),this._c7dcf9d4a470bfd61cf26bac);
                  if(this._c7dcf9d4a470bfd61cf26bac == false)
                  {
                     _loc1_ = 0x4BABB55C ^ -1896289621 ^ 0x2500E7D9 ^ -1932087060;
                  }
                  else
                  {
                     _loc1_ = -1557771485 ^ -845448 ^ 0x79F61488 ^ 0x49A64E13;
                  }
                  break;
               case 3:
                  this._c7dcf9d4a470bfd61cf26bac = true;
                  this.visible = true;
                  TweenCube.destroyTweensOf(this,true);
                  this.frame = -1759483206 ^ -959837652 ^ -634712208 ^ -1950257177;
                  TweenCube.to(this,_b36b64f6ab47efbabe226b14,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႧၗညჺဴთბფჍဣႣဵ၅ႍဈ၀ၤტ","၌ႧၜცჱဧဟႰვၖ႟ჟၜႷၱႴ")):this._asset.totalFrames},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勱刣加劂剏勑勳劑勖刯勖刎剧劰刄勗劰勛剜劵刿勱劃勵剸劌剉刧","勾剮勊努勜劋剥剔勏勣剼勘利勼剖勫")):this.onFreezeComplete});
                  _loc1_ = -2139068287 ^ -1041818266 ^ 0x7163DE36 ^ 0x5C81A310;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function onFreezeComplete() : void
      {
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞挔捒挞挲捜揍授揍揬授捶捛挚揖掖挄捭损揔揞揶掺损掉捌掽揣挓掺掮推挠揯揖揣揩掴揊挅","捏挍揤揋挫捳揳捞揠挀掝掫挪掐挮掀"));
      }
      
      public function _3d761c07ae6e66955a4a38f5() : Boolean
      {
         var _loc1_:int = 0x645D2C10 ^ -883907838 ^ 0x1801AE40 ^ -2069407219;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-97609133 ^ 0x2A4CC5F7 ^ 0x4707BC53 ^ -1529964375))
            {
               case 0:
                  Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揢指捺揉插捩捕揱揋掭揋捾掀揧揞捠捖揱揯捅掸排掸揜掔挿捄捞挲揪捖捔掑掉揶捕掐控捗挪揭挛挲捵捵挆挱捳授捍掝挙挬挘揜捞揇挽掮捧挨捊","挳挦揥掫揠挩揔揘捥挝捴捈掑捲捎捌"));
                  return false;
               case 1:
                  Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡၮၻူဳခၗ႔ၿჁႝႬ჋Ⴙဩၐ၁ႾႧსၵႲဌჹ჻Ⴄჲႎႇ၄တဈჶႎၕဤဃဖ","႙ဲႊလှႼჂ႑၃ဖႨၐၷဋჵဇ"),this._c7dcf9d4a470bfd61cf26bac);
                  if(this._c7dcf9d4a470bfd61cf26bac == true)
                  {
                     _loc1_ = -618634945 ^ 0x53449E1A ^ 0x41F2885F ^ -96662490;
                  }
                  else
                  {
                     _loc1_ = 0x699DACF3 ^ 0x5CA4EABA ^ -760886349 ^ -734529884;
                  }
                  break;
               case 2:
                  _3a8a2602dcf9bf49b62e62af._d2b72a74253af6d1c777cb05(_3a8a2602dcf9bf49b62e62af.SFX_026_AMB_Ice_MERGED);
                  TweenCube.destroyTweensOf(this,true);
                  TweenCube.to(this,_8f08e7dd22ddcc311b8356dd,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勆勸創務削劊勑劙刂勵割剡勅勊劕勋刬剕","刳剴剈務剉剔券劁剸勏券刜勇剉刱勌")):-476938650 ^ 0x578983A1 ^ 0x1E4C4B13 ^ -1437092139},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხၬာထგၹဦტႝჭဖဴႢၸ႙ၔဎႲၵჃတၴ၌ာေႀဂှ","ႛၹႫၛိၝ჌ၶဈွၞဥ၁ქႴၨ")):this.onThawOutComplete});
                  return true;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function onThawOutComplete() : void
      {
         _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_026_AMB_Ice_MERGED);
         Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ွၗစၒფ႗ჳိဧိထ၁၁ၽဢႹ၄Ⴊზဂ჉ႌႜၕႄიၕၔ၇ႁစშဘ၏჉ႱჇႪတဉႍႮ","ၐၑဠ႞ႬჵჼထးႮ႔ႧႦဳႰအ"));
         this._c7dcf9d4a470bfd61cf26bac = false;
         this.visible = false;
      }
      
      public function set frame(param1:int) : void
      {
         if(this._asset != null && this._asset.currentFrame != param1)
         {
            this._asset.gotoAndStop(param1);
         }
      }
      
      public function get frame() : int
      {
         return this._asset.currentFrame;
      }
      
      public function get isFullFreezen() : Boolean
      {
         return this._c7dcf9d4a470bfd61cf26bac && this._asset.currentFrame == this._asset.totalFrames;
      }
      
      public function hitTest(param1:Number, param2:Number) : Boolean
      {
         param1 -= this.xOffset;
         param2 -= this.yOffset;
         return this._c7dcf9d4a470bfd61cf26bac == true && this._49ea77f3ad143d2fb3f893f9 != null && param1 > (0x5DB40996 ^ -180548038 ^ -1541300243 ^ 0x0CA89841) && param2 > (0x64C88320 ^ 0x5314C9AE ^ 0x0E7C9CB9 ^ 0x39A0D637) && param1 < this._49ea77f3ad143d2fb3f893f9.width && param2 < this._49ea77f3ad143d2fb3f893f9.height && this._49ea77f3ad143d2fb3f893f9.getPixel32(param1,param2) > (0x22712A18 ^ -1933146615 ^ -609969130 ^ 0x75ECCFF8);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(this._asset != null)
         {
            if(param1)
            {
               this._asset.gotoAndStop(this._asset.totalFrames);
            }
            this._asset.visible = this._c7dcf9d4a470bfd61cf26bac && param1;
         }
      }
      
      public function _cb990101fc1243fd154418cf() : void
      {
         TweenCube.destroyTweensOf(this,true);
         this._c7dcf9d4a470bfd61cf26bac = true;
         this.visible = true;
      }
      
      public function _14152fa7dbf62a4518031306() : void
      {
         TweenCube.destroyTweensOf(this,true);
         this._c7dcf9d4a470bfd61cf26bac = false;
         this.visible = false;
      }
      
      override public function get width() : Number
      {
         return this._asset.width;
      }
      
      override public function get height() : Number
      {
         return this._asset.height;
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._49ea77f3ad143d2fb3f893f9.dispose();
         this._49ea77f3ad143d2fb3f893f9 = null;
         this._eee82c8acfb542959fd63087 = null;
      }
   }
}

