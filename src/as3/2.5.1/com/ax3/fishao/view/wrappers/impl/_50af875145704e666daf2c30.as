package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.config._1137556d0c60e275233e9d5d;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model.info._3aaebb69caa0055ca844b9f3;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.removeAllChildren;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   
   public class _50af875145704e666daf2c30 extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      private static const _1832ea3a6c28fcf66173b4a9:int = -328157989 ^ -1656003082 ^ -1133952679 ^ -850227144;
      
      private static const _9370515ce10d50c63a243748:int = 0x1E409C88 ^ 0x3D025A51 ^ 0x7032ABA8 ^ 0x53706D3D;
      
      private static const _86832d7d7f118cec7084b7d6:int = 0x39CDA464 ^ 0x2994CC90 ^ -1598699249 ^ -1326669398;
      
      private static const _5cc3e79bc3132a3e0c65b2ea:int = 0x2D4C9647 ^ 0x13937EBF ^ 0x6CF106BD ^ 0x522EEE14;
      
      private var _5b5cbe66ff8c88b8963c2760:MovieClip;
      
      private var _f534a74213027ad0c50a6c77:MovieClip;
      
      private var _fdc16545b98a226b70a2d1b5:MovieClip;
      
      private var _b7a84500ef467d9fb59cc493:_3aaebb69caa0055ca844b9f3;
      
      public function _50af875145704e666daf2c30()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._5b5cbe66ff8c88b8963c2760 = MovieClip(param1);
         this._f534a74213027ad0c50a6c77 = MovieClip(this._5b5cbe66ff8c88b8963c2760.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掶捵掲挘揎捡揤捫挤捕挬捬捫捝","揼捱挸掠推換揳揁挀捄捏揮掩揮捥揖")));
         this._fdc16545b98a226b70a2d1b5 = MovieClip(this._5b5cbe66ff8c88b8963c2760.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掲捲推控损挏捺揋提揷掬指掀挴捥挳掲揸捡揈捝掞揍揾","捡握挻揋挋掶掎捖挫掜揆掺挺捁捐掬")));
         this._5b5cbe66ff8c88b8963c2760.stop();
         if(this._5b5cbe66ff8c88b8963c2760.parent != null)
         {
            this._5b5cbe66ff8c88b8963c2760.parent.addChild(this);
         }
         addChild(this._5b5cbe66ff8c88b8963c2760);
         mouseChildren = false;
         mouseEnabled = true;
         buttonMode = true;
         scaleX = scaleY = this._f534a74213027ad0c50a6c77.scaleX = this._f534a74213027ad0c50a6c77.scaleY = 0x01985C91 ^ 0x60139B11 ^ 0x7FE7E558 ^ 0x1E6C22D9;
         this.active = false;
         this.selected = false;
      }
      
      public function set itemBitmap(param1:Bitmap) : void
      {
         removeAllChildren(this._f534a74213027ad0c50a6c77);
         this._f534a74213027ad0c50a6c77.addChild(param1);
         param1.x = (_86832d7d7f118cec7084b7d6 - param1.width) / (0x68EC39F3 ^ -342825293 ^ -612502276 ^ 0x58012BBE);
         param1.y = (_5cc3e79bc3132a3e0c65b2ea - param1.height) / (-1966738991 ^ 0x104CB149 ^ -1022678129 ^ 0x59826B15);
      }
      
      public function set selected(param1:Boolean) : void
      {
         var _loc2_:int = 0x172B1360 ^ -2062365921 ^ 0x70AC61CC ^ 0x18221D8D;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x450E5E22 ^ -1954124751 ^ 0x461ACC3E ^ 0x72255A11))
            {
               case 0:
                  return;
               case 1:
                  this._fdc16545b98a226b70a2d1b5.visible = param1;
                  _loc2_ = -656195092 ^ -1066458888 ^ 0x212ECAC8 ^ -1022029856;
                  break;
               case 2:
                  if(this._fdc16545b98a226b70a2d1b5 != null)
                  {
                     _loc2_ = -130994349 ^ -387202997 ^ 0x3D0BAEC1 ^ -681122332;
                  }
                  else
                  {
                     _loc2_ = -1460779492 ^ 0x143455AD ^ 0x3E1F86A7 ^ 0x7872312A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get selected() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._fdc16545b98a226b70a2d1b5 != null)
         {
            _loc1_ = this._fdc16545b98a226b70a2d1b5.visible;
         }
         return _loc1_;
      }
      
      public function set active(param1:Boolean) : void
      {
         var _loc2_:int = -437092871 ^ 0x5F62147D ^ 0x45FD07FF ^ -1903263434;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1781289136 ^ 0x6371D750 ^ -1331057819 ^ 0x37E83C29))
            {
               case 0:
                  this._5b5cbe66ff8c88b8963c2760.gotoAndStop(-975567064 ^ -576861783 ^ 0x6C9FD0C2 ^ 0x74D81E41);
                  _loc2_ = 0x6EAB04EC ^ 0x35E0C429 ^ 0x6D4424B8 ^ 0x47EC0B32;
                  break;
               case 1:
                  if(param1)
                  {
                     _loc2_ = -1120707904 ^ 0x5C651176 ^ 0x15A23FD8 ^ -2062050526;
                  }
                  else
                  {
                     _loc2_ = 0x11C252AC ^ 0x2D42FACF ^ 0x2D581B97 ^ 0x603B5CBA;
                  }
                  break;
               case 2:
                  this._5b5cbe66ff8c88b8963c2760.gotoAndStop(0x3A7A4138 ^ -1040933978 ^ -172970475 ^ 0x0E3E748A);
                  _loc2_ = 0x2836EA3B ^ 0x3564BBEA ^ -1901232153 ^ -501431943;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get itemData() : _3aaebb69caa0055ca844b9f3
      {
         return this._b7a84500ef467d9fb59cc493;
      }
      
      public function set itemData(param1:_3aaebb69caa0055ca844b9f3) : void
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = null;
         var _loc3_:Array = null;
         var _loc4_:_cff30366d510ea862540bfef = null;
         var _loc5_:ColorMatrix = null;
         var _loc6_:ColorMatrixFilter = null;
         this._b7a84500ef467d9fb59cc493 = param1;
         this.selected = this._b7a84500ef467d9fb59cc493.isSelected;
         if(this._b7a84500ef467d9fb59cc493.imageFilename != null)
         {
            _loc2_ = new _a4e47350c89a50d87a148c28();
            _loc2_.width = _1832ea3a6c28fcf66173b4a9;
            _loc2_.height = _9370515ce10d50c63a243748;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(this._b7a84500ef467d9fb59cc493.imageFilename));
            if(this._b7a84500ef467d9fb59cc493.resourceType == _67282af25befe9778e5c8dd1.ROD)
            {
               _loc2_.filters = _1137556d0c60e275233e9d5d._73f81f08b04bb9864237b7db(this._b7a84500ef467d9fb59cc493.infoId,this._b7a84500ef467d9fb59cc493.color);
            }
            else if(this._b7a84500ef467d9fb59cc493.resourceType == _67282af25befe9778e5c8dd1.FISH_SHINY)
            {
               _loc3_ = [];
               _loc4_ = app.fishDict.get(this._b7a84500ef467d9fb59cc493.id) as _cff30366d510ea862540bfef;
               _loc5_ = new ColorMatrix();
               _loc5_.adjustHue(_loc4_.hueShiftOfShiny);
               _loc6_ = new ColorMatrixFilter(_loc5_.matrix);
               _loc3_.push(_loc6_);
               _loc2_.filters = _loc3_;
            }
            this.itemBitmap = _loc2_;
         }
      }
      
      public function getCurrentElementIdex() : int
      {
         return 0x22F95BF0 ^ -866265041 ^ -2106449876 ^ -1826006004;
      }
      
      public function isActive() : Boolean
      {
         return this._5b5cbe66ff8c88b8963c2760.currentFrame == (-809738386 ^ 0x0E936893 ^ 0x019EB6BC ^ -1062108861);
      }
      
      override public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡႄၵჂၠ၊ၠၾი၆჊჊ီ႟Ⴤ၂ჱဈႴဇယၽ჋ၬ့ဌ႙ဘႳჽ჈იპယၠ჌႞ူჟჯဦၪဓ၅რႎုႤးႩဋႅႳွ။ႶၽႈშჅညკ၅჈႟ဝႛဈဩႴ႞႒","ှ၄ნწ၂ဵရႤტ၌ტာ၂ၭဴစ") + this._b7a84500ef467d9fb59cc493 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剒判勰劲劐勄勤勆勝刼劽刣","刬到勴劊劻剫剟勺勷剎剀動劣刬劑勈");
      }
   }
}

