package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class _1e21f5ea8cd03625232da448 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _8c29f60eae2ca3bd69c45df4:DisplayObjectContainer = new Sprite();
      
      private var _b163b244f81d2e1e05c15035:Array;
      
      private var _72e96da967d16d3fff4cafdd:Point;
      
      private var _ecb663ae2da121a60263c705:Point;
      
      private var _74cbea9a986bdc789e0849f8:Point;
      
      private var _7fa0f43de68281ffc318bb6f:Point;
      
      public function _1e21f5ea8cd03625232da448(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._8c29f60eae2ca3bd69c45df4);
         this.init();
      }
      
      public function set size(param1:Point) : void
      {
         var _loc2_:int = -643936441 ^ 0x76EFD700 ^ 0x7F816516 ^ 0x13821D33;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1354162275 ^ 0x3E26C698 ^ 0x74CCD31B ^ 0x26D1EA7C))
            {
               case 0:
                  if(this._72e96da967d16d3fff4cafdd == param1)
                  {
                     _loc2_ = -1732791421 ^ -1799858593 ^ 0x1BBC72B8 ^ -725518585;
                  }
                  else
                  {
                     _loc2_ = -787479043 ^ 0x523A5AAD ^ 0x0653BD33 ^ 0x460B0203;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._72e96da967d16d3fff4cafdd = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get itemsOnPage() : int
      {
         return int(this._72e96da967d16d3fff4cafdd.x * this._72e96da967d16d3fff4cafdd.y);
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:DisplayObject = null;
         if(this._b163b244f81d2e1e05c15035 == param1)
         {
            return;
         }
         Debug.assert(param1.length <= this._72e96da967d16d3fff4cafdd.x * this._72e96da967d16d3fff4cafdd.y,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掉捧掕挏探挛捐插控揹掽挕挢掄掏挋掹揜揵挌揄捹挤掽掊捄描挎揱挳揉揨推捺捙掼捆掊掞掩掍掋揞揓揱挣挀掷捙掽揆捰持掋握掩换挻捹挫捌捵掰捶挹掷掬掲掄挆揶掰捾揯捡揎掝挛揰捅揕掜挫挳振捭挴挭掳挩探挑捠捞掋挪捲揸揇捽掀揫捔捇掎授揆挪持捞揑捖挼掄挽持捒揇捤插揹挣揪掔揿掼接挪揬挟揻掏控揆捈挺揚挬挳挃掄捼捥捂","挄捅揭挭掫掷捒掭捬掹揥掝掿掑掝挋") + this._72e96da967d16d3fff4cafdd.x * this._72e96da967d16d3fff4cafdd.y + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰則劭剚剜剚刁刹劎勚创分剿刌劽刔刓剤勆剔努劈剉刜剅刐刬劄剩劍劰勬刞劵刊剽劦剤勛劖勊劂","剦削劦助剽刀刈刯勷刲刹劘勪剧剶勇") + this._b163b244f81d2e1e05c15035.length);
         this._b163b244f81d2e1e05c15035 = param1;
         this._8c29f60eae2ca3bd69c45df4.removeChildren();
         for each(_loc2_ in this._b163b244f81d2e1e05c15035)
         {
            this._8c29f60eae2ca3bd69c45df4.addChild(_loc2_);
         }
         this._63b9041bf855ea499da8554e(false);
      }
      
      public function get itemsCount() : int
      {
         return this._b163b244f81d2e1e05c15035.length;
      }
      
      public function set offset(param1:Point) : void
      {
         this._ecb663ae2da121a60263c705 = param1;
      }
      
      public function get offset() : Point
      {
         return this._ecb663ae2da121a60263c705;
      }
      
      public function set gap(param1:Point) : void
      {
         this._74cbea9a986bdc789e0849f8 = param1;
      }
      
      public function set additionalSize(param1:Point) : void
      {
         this._7fa0f43de68281ffc318bb6f = param1;
      }
      
      public function get additionalSize() : Point
      {
         return this._7fa0f43de68281ffc318bb6f;
      }
      
      public function get width() : Number
      {
         return this._8c29f60eae2ca3bd69c45df4.width + this._7fa0f43de68281ffc318bb6f.x;
      }
      
      public function get height() : Number
      {
         return this._8c29f60eae2ca3bd69c45df4.height + this._7fa0f43de68281ffc318bb6f.y;
      }
      
      private function init() : void
      {
         this._72e96da967d16d3fff4cafdd = new Point();
         this._ecb663ae2da121a60263c705 = new Point();
         this._74cbea9a986bdc789e0849f8 = new Point();
         this._7fa0f43de68281ffc318bb6f = new Point();
         this._b163b244f81d2e1e05c15035 = [];
      }
      
      public function _21c43c65bc970f6b12cfb6b0(param1:int) : Point
      {
         var _loc2_:Point = null;
         _loc2_ = new Point();
         _loc2_.x = (this._b163b244f81d2e1e05c15035[param1] as DisplayObject).x;
         _loc2_.y = (this._b163b244f81d2e1e05c15035[param1] as DisplayObject).y;
         return _loc2_;
      }
      
      override public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         super._63b9041bf855ea499da8554e(param1);
         var _loc3_:int = -617834116 ^ 0x45A6743D ^ 0x30A5DCE4 ^ -1372638811;
         while(_loc3_ < this._b163b244f81d2e1e05c15035.length)
         {
            _loc2_ = this._b163b244f81d2e1e05c15035[_loc3_] as DisplayObject;
            _loc2_.x = this._ecb663ae2da121a60263c705.x + (_loc2_.width + this._74cbea9a986bdc789e0849f8.x) * (_loc3_ % this._72e96da967d16d3fff4cafdd.x);
            _loc2_.y = this._ecb663ae2da121a60263c705.y + (_loc2_.height + this._74cbea9a986bdc789e0849f8.y) * int(_loc3_ / this._72e96da967d16d3fff4cafdd.x);
            _loc3_++;
         }
      }
   }
}

