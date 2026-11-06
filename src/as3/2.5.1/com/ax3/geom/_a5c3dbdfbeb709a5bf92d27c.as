package com.ax3.geom
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.geom.Point;
   
   public class _a5c3dbdfbeb709a5bf92d27c extends Point
   {
      
      private static const _148a11873ac67469e221dc4d:Number = (-896732518 ^ 0x14EADA00 ^ -866035185 ^ 0x12077221) / Math.PI;
      
      private static const _9a46109098f1af99840d631d:Number = Math.PI / (0x192B8D85 ^ 0x4D28429B ^ -1313913737 ^ -441676835);
      
      private var _c5baa42b4df107069cb1cd0a:Number;
      
      public function _a5c3dbdfbeb709a5bf92d27c(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super(param1,param2);
         if(!isNaN(param3))
         {
            this.rotation = param3;
         }
      }
      
      public static function _76cc6aed61ca2f560d256e4a(param1:Number) : int
      {
         while(param1 < (0x5D3441A0 ^ -351632268 ^ 0x73486967 ^ -982078285))
         {
            param1 += -1508640406 ^ -691868034 ^ 0x0FFBB057 ^ 0x7F2AA62B;
         }
         return param1 % (0x6CC6D496 ^ -1306525273 ^ 0x6055A905 ^ -1095533220);
      }
      
      public static function _ad4cb4c627f690cfa2216208(param1:Number, param2:Number, param3:_a5c3dbdfbeb709a5bf92d27c, param4:_a5c3dbdfbeb709a5bf92d27c = null) : _a5c3dbdfbeb709a5bf92d27c
      {
         if(param4 == null)
         {
            param4 = new _a5c3dbdfbeb709a5bf92d27c();
         }
         param4.rotation = param2;
         var _loc5_:Number = _76cc6aed61ca2f560d256e4a(param2) * _9a46109098f1af99840d631d;
         param4.y = Math.sin(_loc5_) * param1 + param3.y;
         param4.x = Math.cos(_loc5_) * param1 + param3.x;
         return param4;
      }
      
      override public function clone() : Point
      {
         return new _a5c3dbdfbeb709a5bf92d27c(x,y,this.rotation);
      }
      
      public function get rotation() : Number
      {
         return this._c5baa42b4df107069cb1cd0a;
      }
      
      public function set rotation(param1:Number) : void
      {
         this._c5baa42b4df107069cb1cd0a = param1;
      }
      
      public function _bfb88cd284ca9d3ee77e60d4(param1:int) : void
      {
         this.rotation = _76cc6aed61ca2f560d256e4a(this.rotation + (-1635634314 ^ -1989902519 ^ 0x63E9F35F ^ 0x740FBF4D) * param1);
      }
      
      public function _aae08f0d8c42cbd310958d01() : int
      {
         return _76cc6aed61ca2f560d256e4a(this.rotation);
      }
      
      public function _a010d907fb95023a84f3c0c4(param1:Number, param2:_a5c3dbdfbeb709a5bf92d27c = null) : _a5c3dbdfbeb709a5bf92d27c
      {
         return _ad4cb4c627f690cfa2216208(param1,this.rotation,this,param2);
      }
      
      public function copy(param1:_a5c3dbdfbeb709a5bf92d27c, param2:Number = 0, param3:Number = 0) : void
      {
         this.rotation = param1.rotation;
         x = param1.x + param2;
         y = param1.y + param3;
      }
      
      public function _5997d310cdccacd544d7cf2b(param1:_a5c3dbdfbeb709a5bf92d27c, param2:Number = 0, param3:Number = 0) : Boolean
      {
         return param1 != null && param1.x + param2 == x && param1.y + param3 == y && (isNaN(param1.rotation) || isNaN(this.rotation) || param1.rotation == this.rotation);
      }
      
      public function _daf2fa8369f99a52f288dd32(param1:int, param2:int, param3:int) : Boolean
      {
         return this.x != param1 || this.y != param2 || this.rotation != param3 && this._c5baa42b4df107069cb1cd0a != (0x2C14E1B7 ^ -987518745 ^ 0x5229717C ^ 0x44E1C7D3);
      }
      
      override public function toString() : String
      {
         return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈刳劃劘刣刋劊劖勗劽劤勧刣劷剉勷勈勮刵劤刉刞勣剴剅剱勤劾刣剧勡勓劚勧","券務勢劋办劚剴办剔劕动勦劦剮勡切") + x + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揪揋揘挰捸捘捆揋挂援挑掝捷捓","捇挕揾掤授揹挺挿掐揁揂捣捅换捱揹") + y + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掦按挔揫掣挩掚捕揣捃揓掞挿掐","捶揅捎捵挨捳揘揫揹揩捕挒揖揓挭揌") + this._c5baa42b4df107069cb1cd0a + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဉ၉ႏ႐Ⴈრეၤၽბ","၉ၹႍႡဧၢၖფၔလၭ჻ၑ႗Ⴞჹ");
      }
   }
}

