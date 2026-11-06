package com.ax3.fishao.view.dialogs.trade.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.types._8614be6026d395694b456730;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _08db2ef964ef6b51b91cd2be extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static const _005dd3c0898a0c7858c7c342:int = 0x49C65FA9 ^ 0x6CA7C9B7 ^ -1196029648 ^ -1646813397;
      
      private static const _3615fc89fd7b72f44cea7444:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("损挘揧掾挣掛捵描掁挳掩捀掠捨掭掭挎持","掯挥挳掬挾捻挡挘捋捷挋揗揥挿捪揨");
      
      private static const _b185ed7eef1150b372a0251b:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၺဩဴႼဨႿ႓჋၂၃჉ႁဝဣႠცၖၖငဲ႔၈ၒჍ","ဧჩၺၽဩ၏၀ဗვဳგႜდჶၠ႘");
      
      private var _361c18c7f0268e339c10eeff:DisplayObjectContainer;
      
      private var _da46633d06f21cf7c67c7aa1:MovieClip;
      
      private var _fde11d79ecb2cd281351d3dd:TextField;
      
      private var _cbaf318fbe4adf13e64f5825:String;
      
      public function _08db2ef964ef6b51b91cd2be(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._361c18c7f0268e339c10eeff = param2;
         super(param1,this._361c18c7f0268e339c10eeff);
         this.init();
      }
      
      public function set status(param1:String) : void
      {
         var _loc2_:int = -483140840 ^ -365242812 ^ 0x29029847 ^ 0x173DBB43;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-472308264 ^ -204665711 ^ 0x16850122 ^ 0x31A70633))
            {
               case 0:
                  if(this._cbaf318fbe4adf13e64f5825 == param1)
                  {
                     _loc2_ = 0x57226D7D ^ -1626064659 ^ 0x1E4969E9 ^ -515304928;
                  }
                  else
                  {
                     _loc2_ = -961237336 ^ 0x635FDD3D ^ 0x7A8B7B69 ^ -397007194;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._cbaf318fbe4adf13e64f5825 = param1;
                  this._8957c8bcc6c5e43f1e7ffd3f();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._da46633d06f21cf7c67c7aa1 = Debug.assertProperty(this._361c18c7f0268e339c10eeff,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("აႻၨ჆ႷၿၒნၰဏဥႴၴဪႎ၆ႵႨ჻ၲၑႻႹည","ვჇပმၟვဓ႑ბႭ႙ၾၢဂღဎ"),MovieClip);
         this._fde11d79ecb2cd281351d3dd = Debug.assertProperty(this._361c18c7f0268e339c10eeff,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掬挺掘振挷揰按捚挵挼捽掅挍捻揳推挊挮","掌挵捽揫捱握揆捴捺捞揫捨挑掱掲捛"),TextField);
      }
      
      private function _8957c8bcc6c5e43f1e7ffd3f() : void
      {
         var _loc1_:int = -1576367663 ^ 0x5902EC94 ^ 0x010CDEC9 ^ 0x2EF5B584;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1103077890 ^ -1746375555 ^ 0x43BFC477 ^ -1092158468))
            {
               case 0:
                  Debug.assertNotEqual(this._cbaf318fbe4adf13e64f5825,null);
                  if(this._cbaf318fbe4adf13e64f5825 == _8614be6026d395694b456730.CONFIRM_OFFER)
                  {
                     _loc1_ = 0x28AD07B1 ^ 0x2A532D70 ^ -2037163577 ^ 0x509C7D0F;
                  }
                  else
                  {
                     _loc1_ = 0x72EFDD02 ^ 0x08002C51 ^ -1822823482 ^ 0x3D47149E;
                  }
                  break;
               case 1:
                  this._da46633d06f21cf7c67c7aa1.gotoAndStop(_3615fc89fd7b72f44cea7444);
                  _loc1_ = -1287236726 ^ 0x322C3C6F ^ 0x7829475F ^ 0x2DB226B0;
                  break;
               case 2:
                  this._fde11d79ecb2cd281351d3dd.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TRADE_STATUS.replace(_706c123ff0b2d45829c1bb3e.ESTS_STATUS,this._cbaf318fbe4adf13e64f5825));
                  this._40ffa4de4e982ca92708b192();
                  return;
               case 3:
                  this._da46633d06f21cf7c67c7aa1.gotoAndStop(_b185ed7eef1150b372a0251b);
                  _loc1_ = 0x291FC159 ^ -196805490 ^ 0x31525DEC ^ 0x38F86E31;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _40ffa4de4e982ca92708b192() : void
      {
         var _loc1_:Rectangle = this._fde11d79ecb2cd281351d3dd.getCharBoundaries(-1826401631 ^ -514384112 ^ 0x66224DB5 ^ 0x14560004);
         this._da46633d06f21cf7c67c7aa1.x = this._fde11d79ecb2cd281351d3dd.x + _loc1_.x - _005dd3c0898a0c7858c7c342 - this._da46633d06f21cf7c67c7aa1.width;
      }
   }
}

