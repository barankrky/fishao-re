package com.ax3.fishao.locations.objects
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class _6161ec218a1fd90e33925f86
   {
      
      public static const TYPE_EMPTY:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჾ჋ဩთ႒ဂႳဂတ჈ဏႭေჽႢၳ႐წ","Ⴖ႟ჰရႢეჹႢဪဢေႡႛძၦဢ");
      
      public static const TYPE_DEFAULT:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဟၣႤ၁ႦႈჵႉဂၼးဃႠဳဴၩဳჿရ჻ဩီ","ၾგჺၖဂ႔ၚႝထ჻ူჲၯၒဆႯ");
      
      private var _d761ba34fd211de1108e9653:MovieClip;
      
      private var _6b149f8095336294fd1f7d72:Array;
      
      private var _61827e8156e807c795318d6b:Array;
      
      private var _2ff54038ec788b2e66a7865a:String;
      
      public function _6161ec218a1fd90e33925f86(param1:DisplayObjectContainer)
      {
         super();
         this._d761ba34fd211de1108e9653 = param1 as MovieClip;
         this.init();
      }
      
      public function set viewType(param1:String) : void
      {
         this._2ff54038ec788b2e66a7865a = param1;
         this._e191d28053795a19c6a8a7fe();
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._d761ba34fd211de1108e9653.visible = param1;
      }
      
      private function _4f95334799ab9ab68d4bb759(param1:String) : int
      {
         var _loc2_:int = -242408026 ^ -1763532795 ^ 0x12D02AE2 ^ 0x75BFAF41;
         var _loc3_:int = 0x6E69EA1F ^ 0x1AC28A9D ^ 0x3399E3FA ^ 0x47328378;
         var _loc4_:int = 0x066E84A5 ^ -411133230 ^ 0x56EEF742 ^ -790624656;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-1947737709 ^ 0x56E47C95 ^ 0x7C0ABDD8 ^ -971518049))
            {
               case 0:
                  if(_loc3_ >= this._6b149f8095336294fd1f7d72.length)
                  {
                     _loc4_ = -198571762 ^ 0x7FD6FD73 ^ 0x5DC86DFE ^ -1322617145;
                  }
                  else
                  {
                     _loc4_ = 0x29C8FCB1 ^ -186430887 ^ -401390449 ^ 0x52261D27;
                  }
                  break;
               case 1:
                  if(this._6b149f8095336294fd1f7d72[_loc3_] == param1)
                  {
                     _loc4_ = 0x27494242 ^ 0x6A3A7FD4 ^ -1656737586 ^ -1221729765;
                  }
                  else
                  {
                     _loc4_ = -1372940459 ^ 0x257CF2C2 ^ -620071073 ^ 0x3742FD8A;
                  }
                  break;
               case 2:
                  _loc2_ = _loc3_;
                  _loc4_ = -239991924 ^ -704396088 ^ 0x39ABB486 ^ 0x79049C86;
                  break;
               case 3:
                  _loc3_++;
                  _loc4_ = -979087028 ^ -1232856203 ^ 0x1CDD881A ^ 0x08E32D62;
                  break;
               case 4:
                  _loc2_ = -1602400466 ^ -1998082569 ^ -2039022335 ^ -1360257064;
                  _loc3_ = -1418573040 ^ -1873693183 ^ 0x2D7431BB ^ 0x1657CCAA;
                  _loc4_ = 0x1139BC6A ^ 0x0CDEB4C1 ^ -1418669837 ^ -779536615;
                  break;
               case 5:
                  return _loc3_;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e191d28053795a19c6a8a7fe() : void
      {
         this._a8c63865e90eac8bc27b804d();
         var _loc1_:DisplayObject = this._61827e8156e807c795318d6b[this._4f95334799ab9ab68d4bb759(this._2ff54038ec788b2e66a7865a)] as DisplayObject;
         _loc1_.visible = true;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         this._d761ba34fd211de1108e9653.visible = false;
         this._d761ba34fd211de1108e9653.alpha = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႋიဋႫ၈သညမႣႆმ჌ဓ၍၄၊ၔဴံၵီႢლჃ","စႪဍႭ႓၄အဴဎမႛၱေဋႥ႗");
         this._61827e8156e807c795318d6b = [];
         this._6b149f8095336294fd1f7d72 = [];
         var _loc2_:int = 0x5A1DE98F ^ 0x5CD9B615 ^ -1890546435 ^ -1986735257;
         while(_loc2_ < this._d761ba34fd211de1108e9653.numChildren)
         {
            _loc1_ = this._d761ba34fd211de1108e9653.getChildAt(_loc2_) as DisplayObjectContainer;
            this._61827e8156e807c795318d6b.push(_loc1_);
            this._6b149f8095336294fd1f7d72.push((_loc1_ as MovieClip).currentFrameLabel);
            _loc2_++;
         }
      }
      
      private function _a8c63865e90eac8bc27b804d() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._61827e8156e807c795318d6b)
         {
            _loc1_.visible = false;
         }
      }
   }
}

