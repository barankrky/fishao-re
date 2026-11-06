package com.ax3.fishao.view.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.view.wrappers._40858abc038fcd29a3aaacb1;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _0724ad266e88779612fd9d57 extends ShiftWrapper implements IAssetWrapper, _40858abc038fcd29a3aaacb1
   {
      
      private var _bfdb1e64e7551323b5290b5a:Sprite;
      
      private var _5dbd3f599bf2f2c61e77d953:Sprite;
      
      protected var _text:TextField;
      
      private var _9e1d1d0639cdfad65589ca87:Boolean = false;
      
      public function _0724ad266e88779612fd9d57()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         MovieClip(_child).gotoAndStop(-193280323 ^ -911187349 ^ -1821937304 ^ -1364339265);
         MovieClip(_child).buttonMode = true;
         this._text = TextField(MovieClip(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剠刹利前勰剣劙前勒勓勱刔剰剜","创勮剁勲剮刌削刔剝剛利刈剼劧剋勥")));
         this._text.mouseEnabled = false;
         addChild(_child);
      }
      
      public function hide() : void
      {
         MovieClip(_child).visible = false;
      }
      
      public function show() : void
      {
         MovieClip(_child).visible = true;
      }
      
      public function init(param1:String, param2:Sprite, param3:Sprite, param4:String) : void
      {
         this.name = param4;
         this._text.text = param1;
         this._bfdb1e64e7551323b5290b5a = param2;
         this._5dbd3f599bf2f2c61e77d953 = param3;
      }
      
      public function set active(param1:Boolean) : void
      {
         var _loc2_:int = -1116412842 ^ -251768575 ^ 0x38ADA9F0 ^ -655944674;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-842017572 ^ 0x2A86742F ^ -1066776246 ^ -1964777214))
            {
               case 0:
                  this._5dbd3f599bf2f2c61e77d953.addChild(this);
                  MovieClip(_child).gotoAndStop(0x2F7379E4 ^ 0x7B9B7287 ^ -255413998 ^ -1540441488);
                  _loc2_ = -1146212041 ^ 0x33D27E86 ^ 0x168B4781 ^ 0x3337008A;
                  break;
               case 1:
                  return;
               case 2:
                  this._9e1d1d0639cdfad65589ca87 = param1;
                  if(this._9e1d1d0639cdfad65589ca87)
                  {
                     _loc2_ = -589637402 ^ -261218774 ^ 0x1C10275B ^ -1654331089;
                  }
                  else
                  {
                     _loc2_ = 0x3298F090 ^ 0x6CC59D23 ^ -651397052 ^ 0x2AB11D4C;
                  }
                  break;
               case 3:
                  this._bfdb1e64e7551323b5290b5a.addChild(this);
                  MovieClip(_child).gotoAndStop(-1731299111 ^ -1789535588 ^ 0x1F63D72F ^ 0x12F87568);
                  _loc2_ = 0x537542F0 ^ -216254859 ^ -291712292 ^ -483021085;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get active() : Boolean
      {
         return this._9e1d1d0639cdfad65589ca87;
      }
   }
}

