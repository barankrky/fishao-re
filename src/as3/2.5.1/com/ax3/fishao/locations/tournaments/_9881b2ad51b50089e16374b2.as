package com.ax3.fishao.locations.tournaments
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import com.inkora.tween.TweenCube;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class _9881b2ad51b50089e16374b2
   {
      
      private var _asset:MovieClip;
      
      private var _508c2a2c91ca5a970cf35fe2:Boolean;
      
      private var _be436fb090f17e1ee351dab5:BitmapData;
      
      private var _2fef6ce7f4cb71ddd58aca11:Rectangle;
      
      private var _32d904ce4a27da18a6a30650:Number;
      
      private var _501439df65c307eada284e8a:Number;
      
      private var _77729517a849397eeaad3f87:int;
      
      private var _f01525a58eb45c8ab4b295ef:int;
      
      private var _2003ae403c02cf39434476cc:Boolean;
      
      public function _9881b2ad51b50089e16374b2(param1:int, param2:int)
      {
         super();
         this._77729517a849397eeaad3f87 = param1;
         this._f01525a58eb45c8ab4b295ef = param2;
         this._2003ae403c02cf39434476cc = false;
      }
      
      public function set frame(param1:int) : void
      {
         var _loc2_:int = -2124978053 ^ -340526832 ^ 0x533B006A ^ -634274541;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1F048193 ^ -607359894 ^ -63804545 ^ -619402604))
            {
               case 0:
                  if(this._asset.currentFrame != param1)
                  {
                     _loc2_ = -753371948 ^ 0x0EE76D34 ^ -386347699 ^ -689309506;
                  }
                  else
                  {
                     _loc2_ = -1860402201 ^ -462592420 ^ 0x61790775 ^ -135868706;
                  }
                  break;
               case 1:
                  this._asset.gotoAndStop(param1);
                  _loc2_ = 0x06B3C58A ^ -235076687 ^ -687883196 ^ -1033939345;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get frame() : int
      {
         return this._asset.currentFrame;
      }
      
      public function _c53f7e20214363e9e2c433e7() : Boolean
      {
         return this._508c2a2c91ca5a970cf35fe2 && this._2003ae403c02cf39434476cc;
      }
      
      public function get criteriaValueToOpen() : int
      {
         return this._f01525a58eb45c8ab4b295ef;
      }
      
      private function _2a5ff813d0689660fd5b3c3d() : void
      {
         this._2003ae403c02cf39434476cc = true;
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObject = null;
         this._asset = MovieClip(param1);
         _loc2_ = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("აသჂႠႵჁ္ဏႆၬၸႮხၰဵშ၀჈ჿსႺდဒჶ႞ტ။ဟၖႾ","႓ნၭၗဟ၈ဎ၁Ⴠ။ხ჊ေၞჽნ"));
         this._2fef6ce7f4cb71ddd58aca11 = _loc2_.getBounds(_loc2_);
         this._be436fb090f17e1ee351dab5 = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc2_);
         _loc2_.visible = false;
         this._asset.gotoAndStop(-1487554681 ^ 0x52D5E0B4 ^ 0x4ADBBB2A ^ -1084494824);
         this._32d904ce4a27da18a6a30650 = this._asset.x + this._2fef6ce7f4cb71ddd58aca11.x + _loc2_.x;
         this._501439df65c307eada284e8a = this._asset.y + this._2fef6ce7f4cb71ddd58aca11.y + _loc2_.y;
      }
      
      public function open() : void
      {
         var _loc1_:int = 0x43B0ACA4 ^ 0x636302C0 ^ 0x0904413D ^ 0x21CB1B29;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x58945E0C ^ -522920034 ^ 0x587CD748 ^ -400514392))
            {
               case 0:
                  this._508c2a2c91ca5a970cf35fe2 = true;
                  TweenCube.destroyTweensOf(this,false);
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_065_MOV_Tournament_doors);
                  TweenCube.to(this,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掍捿挆掶挄捧掹掍挾挈捸掕措揭掤挰掯捂掹挢按揵捹揪","揢掣揜挦挩揑捋掲揋揰握指掍掜掜挕"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揨挊掺接揝挅掟捊捶掋推提挞掲挠挔掲捴","指挓捰揼捄揜挵挖揤揑捺掰揣挦捰挆")):this._asset.totalFrames},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揾捎挪持挹揷捕挠捑挹掑揰揎挭揾捁揢据挪揎捠掜掹挩捈挻掳按","揁捬捐挽提揌挵捍掳挅揹捆掗掩揎採")):this._2a5ff813d0689660fd5b3c3d});
                  _loc1_ = 0x6A3716DC ^ -1336777355 ^ 0x4C39D7C9 ^ -1639952365;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._508c2a2c91ca5a970cf35fe2 == false)
                  {
                     _loc1_ = 0x5205F827 ^ 0x7BBA0D0F ^ 0x1688C1D5 ^ 0x372BC08F;
                  }
                  else
                  {
                     _loc1_ = 0x64E3EB75 ^ 0x6141ED48 ^ 0x572C9C3E ^ 0x5A926E70;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function hitTest(param1:Number, param2:Number) : Boolean
      {
         param1 -= this._32d904ce4a27da18a6a30650;
         param2 -= this._501439df65c307eada284e8a;
         return this._c53f7e20214363e9e2c433e7() == false && this._be436fb090f17e1ee351dab5 != null && param1 > (-1561381444 ^ 0x4C29BCFA ^ -2005238246 ^ 0x66BCF75C) && param2 > (0x3502CFC9 ^ 0x21069AFC ^ 0x3F3E0125 ^ 0x2B3A5410) && param1 < this._be436fb090f17e1ee351dab5.width && param2 < this._be436fb090f17e1ee351dab5.height && this._be436fb090f17e1ee351dab5.getPixel32(param1,param2) > (0x539E8B16 ^ -1532396443 ^ 0x0800982A ^ -3632986);
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._be436fb090f17e1ee351dab5.dispose();
         this._be436fb090f17e1ee351dab5 = null;
         this._2fef6ce7f4cb71ddd58aca11 = null;
      }
   }
}

