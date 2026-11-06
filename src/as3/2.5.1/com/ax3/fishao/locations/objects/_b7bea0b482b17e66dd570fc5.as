package com.ax3.fishao.locations.objects
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import com.inkora.tween.TweenCube;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class _b7bea0b482b17e66dd570fc5
   {
      
      private var _asset:MovieClip;
      
      private var _ec850d6d0e71acfe90aea6d9:Boolean;
      
      private var _60d85997cff575e90b783f1b:BitmapData;
      
      private var _beab479db50075cb69920b7c:Rectangle;
      
      private var _36fc7f8809df7f4b49e438b1:Number;
      
      private var _6c4c4ad3b072d8a6d61b9aa7:Number;
      
      public function _b7bea0b482b17e66dd570fc5()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჭၽၳှჃ၉၉ၕသ႕ၡႹმး၅။ၲრဒၖჵႽჷၘဆე၌ှဥႜ","჆ၮႫჯနဿ၀ၱ႔ჲီჩၼဇჀ჋"));
         this._beab479db50075cb69920b7c = _loc2_.getBounds(_loc2_);
         this._60d85997cff575e90b783f1b = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc2_);
         _loc2_.visible = false;
         this._asset.gotoAndStop(0x0A261CF3 ^ -931340820 ^ -1833962264 ^ 0x50F535F6);
         this._36fc7f8809df7f4b49e438b1 = this._asset.x + this._beab479db50075cb69920b7c.x;
         this._6c4c4ad3b072d8a6d61b9aa7 = this._asset.y + this._beab479db50075cb69920b7c.y;
      }
      
      public function open() : void
      {
         var _loc1_:int = 0x61B132D2 ^ 0x5847A882 ^ -1707698410 ^ 0x243DE993;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1938704014 ^ -849960803 ^ -456476708 ^ 0x22104AE7))
            {
               case 0:
                  this._ec850d6d0e71acfe90aea6d9 = true;
                  _3a8a2602dcf9bf49b62e62af._d2b72a74253af6d1c777cb05(_3a8a2602dcf9bf49b62e62af.SFX_064_MOV_Thombani_pillars_loop);
                  TweenCube.destroyTweensOf(this,false);
                  TweenCube.to(this,-1105923211 ^ -187575121 ^ -1514481473 ^ -276824217,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳၹဃၧჲၮჇၣၩႺႰ႘ၽშဩၓနႦ","ဝხ၈Ⴣ၅ဿ႟ჍၫႬဥჩႩ႖ႏၑ")):this._asset.totalFrames},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸刷剚勈勾剙勠劮劂剬勐刵勎刭剝勜刢劵刳剮刘劤剡勇則刡刔勣","劵労刴創勅剪勳则剸切剟剓劉助勖勥")):this._96885db34d8b90a3741e3f83});
                  _loc1_ = 0x18CFE021 ^ -1428967780 ^ -760585105 ^ -414462460;
                  break;
               case 1:
                  if(this._ec850d6d0e71acfe90aea6d9 == false)
                  {
                     _loc1_ = 0x14E02C65 ^ -647390958 ^ -1306563522 ^ -127189603;
                  }
                  else
                  {
                     _loc1_ = -1822787622 ^ -936572842 ^ -1061759658 ^ 0x1C3C4E0C;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _96885db34d8b90a3741e3f83() : void
      {
         _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_064_MOV_Thombani_pillars_loop);
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_064_MOV_Thombani_pillars_end);
      }
      
      public function close() : Boolean
      {
         var _loc1_:int = -1104316461 ^ -2043846467 ^ -1404854648 ^ -1503431192;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-986425965 ^ 0x366E3C18 ^ -741985774 ^ 0x12BCA796))
            {
               case 0:
                  this._ec850d6d0e71acfe90aea6d9 = false;
                  _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_064_MOV_Thombani_pillars_loop);
                  TweenCube.destroyTweensOf(this,false);
                  this._asset.gotoAndStop(-1639331898 ^ 0x6C435270 ^ 0x7E05DA7C ^ -1945153589);
                  return true;
               case 1:
                  if(this._ec850d6d0e71acfe90aea6d9 == true)
                  {
                     _loc1_ = -1911353358 ^ 0x3E7DC91B ^ -1093908996 ^ 0x3C827F1A;
                  }
                  else
                  {
                     _loc1_ = -441775809 ^ 0x615753C0 ^ 0x5AB45E15 ^ -328664857;
                  }
                  break;
               case 2:
                  return false;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set frame(param1:int) : void
      {
         var _loc2_:int = 0x76D406A7 ^ -715458393 ^ 0x1A2E626B ^ -1112769863;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x109E869B ^ 0x1980E2C3 ^ -78336265 ^ -163173251))
            {
               case 0:
                  if(this._asset.currentFrame != param1)
                  {
                     _loc2_ = 0x6AAD22C8 ^ -1940646797 ^ 0x236A7185 ^ -1046502931;
                  }
                  else
                  {
                     _loc2_ = 0x62233A8C ^ -578476098 ^ 0x24F7B36A ^ -1621276536;
                  }
                  break;
               case 1:
                  this._asset.gotoAndStop(param1);
                  _loc2_ = 0x157D9E1A ^ -50371978 ^ 0x37FB4E5C ^ -629844768;
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
         return this._ec850d6d0e71acfe90aea6d9 && this._asset.currentFrame == this._asset.totalFrames;
      }
      
      public function hitTest(param1:Number, param2:Number) : Boolean
      {
         param1 -= this._36fc7f8809df7f4b49e438b1;
         param2 -= this._6c4c4ad3b072d8a6d61b9aa7;
         return this._c53f7e20214363e9e2c433e7() == false && this._60d85997cff575e90b783f1b != null && param1 > (-1245403295 ^ -1048340094 ^ -295598777 ^ -1708737628) && param2 > (-1328998022 ^ 0x61B5FC12 ^ -98827506 ^ 0x2B60E666) && param1 < this._60d85997cff575e90b783f1b.width && param2 < this._60d85997cff575e90b783f1b.height && this._60d85997cff575e90b783f1b.getPixel32(param1,param2) > (-155643355 ^ -1321621411 ^ -1251394475 ^ -233408046);
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._60d85997cff575e90b783f1b.dispose();
         this._60d85997cff575e90b783f1b = null;
      }
   }
}

