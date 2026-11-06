package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _8e55d069d3b23302aff25778 extends _bdfc2793f4483f5853556c5a
   {
      
      public static const VIEW_TYPE_GARDEN:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挫掑掂振掵掂排捂捚掟挚挄掷揑挍挍掕掮掎挢","捜掀挩掂捾揌揹掍挭挴掽捹挕捾揍揶");
      
      public static const VIEW_TYPE_STAIRS_UP:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀၬგკႣ၊ဂဋფჀၘჁဥძႳၱၽၣှ၊ၩ၏ႅဗკჺ","Ⴊ၍ჿჶၘဓအჟၑရც჆ၱႉႼ၍");
      
      public static const VIEW_TYPE_STAIRS_DOWN:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("採揇捕插捰挰捔揕揌掗探挳捸揾捹掽掦捽揧捒挓捔挙掸揗揧揸挶挒揠","挬描捵捰捸揱揣揃捱捵捸掯挵捰捔掖");
      
      public static const VIEW_SHADOW:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揈捉捇揥挰掗挚捓揎捎揑掹揓捹捫挢措捰揠挴","掃掹捡捋振提揍捺換掘掐挂插揤探掇");
      
      public static const VIEW_FRAME:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၃ნ၅ခსၜၑხႇၐჭჄ჆ჷჰၳဋႋ","ဉၑ၄ဖ႔စႹႌၬჸဈცါႝဓယ");
      
      private var _56d11d479049bd30be15a08b:Array;
      
      private var _43330e729c81382058c69e5b:String;
      
      private var _23db723d1f94593eb43ab3aa:DisplayObject;
      
      private var _c03aa58a02f2bef71b6a4354:DisplayObject;
      
      private var _ee370249d55cd31f033fc955:DisplayObject;
      
      private var _beb1ec6dd973b80ad1200db6:BitmapData;
      
      private var _0427ff7127637e9280453dda:Rectangle;
      
      private var _4c940ca0cd167f4ad3fdaf81:Point;
      
      public function _8e55d069d3b23302aff25778(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      public function get zOrderDoor() : DisplayObject
      {
         return this._23db723d1f94593eb43ab3aa;
      }
      
      public function get zOrderFrame() : DisplayObject
      {
         return this._c03aa58a02f2bef71b6a4354;
      }
      
      public function get zOrderShadow() : DisplayObject
      {
         return this._ee370249d55cd31f033fc955;
      }
      
      public function set viewType(param1:String) : void
      {
         this._43330e729c81382058c69e5b = param1;
         this._cd0b32a37400127852ddc073();
      }
      
      private function _5de12c8d01732dde6cc3a660(param1:String) : int
      {
         var _loc2_:int = -1629129386 ^ -285446533 ^ 0x1CF18CFB ^ 0x6CE897D6;
         var _loc3_:int = -17453502 ^ 0x5434063B ^ -1801560017 ^ 0x3E5FC856;
         var _loc4_:int = -1454215113 ^ -422421961 ^ 0x24634009 ^ 0x4C11CE64;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x6C5F214A ^ -1656717949 ^ 0x3B01D998 ^ -303292099))
            {
               case 0:
                  _loc3_++;
                  _loc4_ = -1458709135 ^ 0x4C11F64F ^ 0x473E48CF ^ -2049914977;
                  break;
               case 1:
                  _loc2_ = 0x1583E3D0 ^ -1033057518 ^ -538104119 ^ 0x0802060B;
                  _loc3_ = 0x0756314A ^ 0x61A60E87 ^ -775689146 ^ -1221340277;
                  _loc4_ = -1168001695 ^ -1229482837 ^ -653530936 ^ -231772820;
                  break;
               case 2:
                  if(_loc3_ >= this._56d11d479049bd30be15a08b.length)
                  {
                     _loc4_ = -1617202304 ^ 0x1D034124 ^ -1983707318 ^ 0x2CA99186;
                  }
                  else
                  {
                     _loc4_ = 0x54C74C ^ -1530963574 ^ -2086167634 ^ 0xBEA101;
                  }
                  break;
               case 3:
                  _loc2_ = _loc3_;
                  _loc4_ = -996043093 ^ -584391928 ^ -1161720504 ^ -2068292477;
                  break;
               case 4:
                  return _loc3_;
               case 5:
                  if(this._56d11d479049bd30be15a08b[_loc3_] == param1)
                  {
                     _loc4_ = 0x3678932D ^ -489491121 ^ -614978354 ^ 0x2800EEC3;
                  }
                  else
                  {
                     _loc4_ = 0x47ED4E5E ^ 0x28A4242C ^ 0x4E39E35C ^ 0x06822D42;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _cd0b32a37400127852ddc073() : void
      {
         hide();
         this._23db723d1f94593eb43ab3aa = _objectsWithFixedVisibility[this._5de12c8d01732dde6cc3a660(this._43330e729c81382058c69e5b)] as DisplayObject;
         this._23db723d1f94593eb43ab3aa.visible = true;
         this._ee370249d55cd31f033fc955 = _objectsWithFixedVisibility[this._5de12c8d01732dde6cc3a660(VIEW_SHADOW)] as DisplayObject;
         this._ee370249d55cd31f033fc955.visible = this._43330e729c81382058c69e5b != VIEW_TYPE_GARDEN;
         this._c03aa58a02f2bef71b6a4354 = _objectsWithFixedVisibility[this._5de12c8d01732dde6cc3a660(VIEW_FRAME)] as DisplayObject;
         this._c03aa58a02f2bef71b6a4354.visible = true;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = 0x09FBD4D8 ^ 0x510689F7 ^ 0x1B39C703 ^ 0x43C49A2C;
         var _loc3_:DisplayObject = null;
         _840f698fa649fbd34cd266dc();
         this._70f3577d3ca89975e0151ff3();
         this._56d11d479049bd30be15a08b = [];
         var _loc4_:int = -1009330191 ^ 0x128C646D ^ 0x588127BC ^ -1982098400;
         while(_loc4_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE) > (-336769872 ^ 0x39B1177C ^ -1996412734 ^ -1532850959))
            {
               _loc2_ = -917364934 ^ 0x4ED9961E ^ -798037104 ^ 0x57E562B4;
               while(_loc2_ < _loc1_.numChildren)
               {
                  _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                  _objectsWithFixedVisibility.push(_loc3_);
                  _loc2_++;
               }
               this._56d11d479049bd30be15a08b.push((_loc1_ as MovieClip).currentFrameLabel);
            }
            _loc4_++;
         }
         hide();
      }
      
      private function _70f3577d3ca89975e0151ff3() : void
      {
         var _loc1_:DisplayObject = Debug.assertProperty(_source,_77ca96a94affdf1e9d31698c.EDOT_SYSTEM_OBSTACLE_FRAME);
         this._beb1ec6dd973b80ad1200db6 = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc1_);
         this._0427ff7127637e9280453dda = _loc1_.getBounds(_loc1_);
         this._4c940ca0cd167f4ad3fdaf81 = new Point(_loc1_.x,_loc1_.y);
         _loc1_.visible = false;
      }
      
      override public function hitTest(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Boolean = super.hitTest(param1,param2,param3);
         param1 = param1 - _source.x - this._4c940ca0cd167f4ad3fdaf81.x - this._0427ff7127637e9280453dda.x;
         param2 = param2 - _source.y - this._4c940ca0cd167f4ad3fdaf81.y - this._0427ff7127637e9280453dda.y;
         var _loc5_:Boolean = _isEnabled == !param3 && this._beb1ec6dd973b80ad1200db6 != null && param1 > (-129394287 ^ 0x11B13743 ^ -318154331 ^ 0x04F1F777) && param2 > (0x4C5FFCA5 ^ -1560667282 ^ 0x7D20DD04 ^ -1819985201) && param1 < this._beb1ec6dd973b80ad1200db6.width && param2 < this._beb1ec6dd973b80ad1200db6.height && this._beb1ec6dd973b80ad1200db6.getPixel32(param1,param2) > (-2017979205 ^ -1804173073 ^ 0x14B563F4 ^ 0x0784085F);
         return _loc4_ || _loc5_;
      }
   }
}

