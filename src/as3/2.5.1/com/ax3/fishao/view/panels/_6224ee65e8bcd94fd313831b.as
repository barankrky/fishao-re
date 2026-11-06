package com.ax3.fishao.view.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.greensock.TweenMax;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class _6224ee65e8bcd94fd313831b extends WaterPopupAsset
   {
      
      private static const _fd5262f5a931915295ff97a1:int = -749132759 ^ -1648938699 ^ -609842782 ^ -1790403400;
      
      private static const _a970f8ce952b0d3213879932:int = -1441581122 ^ -316322155 ^ -1090944534 ^ -103810873;
      
      public static const SCREEN_PADDING:int = -1236552392 ^ -1752764755 ^ -664721163 ^ -106138764;
      
      private static const _56389573c3d89bd396cfc1ea:int = 0x6F1243D7 ^ 0x2DCE15C3 ^ 0x7928544C ^ 0x3BF4025B;
      
      private const _6a914cdc9608b35a739d1ba4:Number = 5;
      
      private const _efccf21bb99565b7ccd249f4:int = 177;
      
      private const _2682154ac432a338ead8b4c6:int = 100;
      
      private const _4ea41bb7caa02d33b4eccb18:int = 14;
      
      private var _cf10a55119f3d03752ff69c7:int;
      
      public function _6224ee65e8bcd94fd313831b()
      {
         super();
         txt.mouseWheelEnabled = false;
         buttonMode = true;
         this._83bd80e6573d2fe3b2857a09();
      }
      
      protected function hide() : void
      {
         TweenMax.to(this,0x59C6F1EB ^ 0x2E98914A ^ -346401755 ^ -1677446011,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("သႨဋၿჹႿဟ჌႑ჿႎႦၐီႪဴჍჅ","Ⴋပ်ဣဌႃმၥႇჲႷნწႿშჩ")):0x45803B01 ^ -1640878794 ^ 0x1B215F8B ^ -1064089156,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქ႓ႝၓკဖႀၻჸၷငၖၹ၍ိၮၚွ","ლ့၍ွ့჌ბၻၞႹႯცნၧႆၷ")):_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剁列刧勽勑割劲勀劳勧刋劖勮刌刬刻劺剽劕券剰勞刬剞","勸劏勫刢剀勰剓剅刪勹剖勍剳勏剆勮"),
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劌勛劃劏劣刅勜劝勽勻創剰划勫劂勌刞剬勯功劃創剮刕刌刔勾刜","劂刢刀刂勻勥剖劽効勆剶前刅副勻勱")):this._83bd80e6573d2fe3b2857a09
         });
         clearTimeout(this._cf10a55119f3d03752ff69c7);
      }
      
      private function _83bd80e6573d2fe3b2857a09() : void
      {
         visible = false;
      }
      
      private function show() : void
      {
         visible = true;
         TweenMax.to(this,0x72F0BDC0 ^ -1385717508 ^ -2125897193 ^ 0x5EDE7F2A,{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("励则刚勿剣刲刬剴劅勬勬勱勺勘劚刪剷勰","劭剟劵劃劶剁刾刈刃劆勂勽刖勽勿刱")):-2091165591 ^ 0x48D69245 ^ -1569142785 ^ 0x69F50DD2,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描揨挅推挿捑掊挗挴捄挏掵挅指挈探掮揨","捯掑掃挭掇掤挗捪掹掚捒掲挫掲揄掐")):_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჽနႰ၎ၝၑთჃ႞Ⴣဩ჎ႍ჈၁ဟჱၨဪႠၸეွီ","ဓჰၢ၌ბჟხ၌ႱႡ၃ჯႝ჻ၖჀ")
         });
      }
      
      private function _d0c51c134a649e933965ebbc(param1:TextField, param2:String) : void
      {
         var _loc3_:TextFormat = param1.getTextFormat();
         _loc3_.align = param2;
         param1.setTextFormat(_loc3_);
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:int = -116874303 ^ 0x16D81A1A ^ -1465200001 ^ 0x65BD71C8;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1972533290 ^ 0x324B64B2 ^ 0x336E0AB4 ^ -1450183746))
            {
               case 0:
                  txt.width = int(txt.textWidth + _fd5262f5a931915295ff97a1);
                  _loc2_ = -393100310 ^ -310567732 ^ -1996399054 ^ -1372939397;
                  break;
               case 1:
                  if(this._4ea41bb7caa02d33b4eccb18 * txt.numLines < this._2682154ac432a338ead8b4c6)
                  {
                     _loc2_ = 0x3C30D29D ^ 0x3C4AB338 ^ -495512696 ^ -1060476859;
                  }
                  else
                  {
                     _loc2_ = -1792679528 ^ 0x2F91018F ^ -201707453 ^ 0x6B89CA3F;
                  }
                  break;
               case 2:
                  txt.text = param1;
                  if(param1 == "")
                  {
                     _loc2_ = -2086727178 ^ 0x45221335 ^ -981667313 ^ 0x2106EAA6;
                  }
                  else
                  {
                     _loc2_ = -1655892514 ^ -1518758049 ^ -771614988 ^ -923693544;
                  }
                  break;
               case 3:
                  this.show();
                  txt.width = this._efccf21bb99565b7ccd249f4;
                  txt.height = this._2682154ac432a338ead8b4c6;
                  txt.x = _a970f8ce952b0d3213879932;
                  txt.y = _a970f8ce952b0d3213879932;
                  if(txt.textWidth + _fd5262f5a931915295ff97a1 < this._efccf21bb99565b7ccd249f4)
                  {
                     _loc2_ = -440562334 ^ -1329563709 ^ -2026164881 ^ -259928672;
                  }
                  else
                  {
                     _loc2_ = 0x0D06F56D ^ -1447005216 ^ -1542788087 ^ 0x220B70EB;
                  }
                  break;
               case 4:
                  this.hide();
                  return;
               case 5:
                  this._f75ced0500bc7dfa01136e43(txt.width,txt.height);
                  this._d0befbb32cfb3291cea5e36b();
                  return;
               case 6:
                  txt.height = int(this._4ea41bb7caa02d33b4eccb18 * txt.numLines + _56389573c3d89bd396cfc1ea);
                  _loc2_ = -335540876 ^ -580302607 ^ 0x71E8A9E0 ^ 0x6246F60E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _f75ced0500bc7dfa01136e43(param1:int, param2:int) : void
      {
         background.leftUp.x = -1555262479 ^ -321210431 ^ 0x3EE72D96 ^ 0x717109A6;
         background.leftUp.y = -758382560 ^ -1852537802 ^ -1846943588 ^ -760126326;
         background.centerUp.x = background.leftUp.width;
         background.centerUp.y = background.leftUp.y;
         background.centerUp.width = int(param1 + _a970f8ce952b0d3213879932 * (-496913734 ^ 0x56BCAD91 ^ -586612565 ^ 0x69D41F82) - background.leftUp.width * (-578869368 ^ 0x35855482 ^ -386308748 ^ 0x03167C));
         this._d0c51c134a649e933965ebbc(txt,TextFormatAlign.LEFT);
         background.rightUp.x = background.centerUp.width + background.centerUp.x;
         background.rightUp.y = background.centerUp.y;
         background.left.x = 0x2C72D5C5 ^ -1232594826 ^ -1106696277 ^ 0x24F3EA18;
         background.left.y = background.leftUp.height;
         background.left.height = int(param2 + _a970f8ce952b0d3213879932 * (0x3A2AB84A ^ 0x3F634E6B ^ -1978025355 ^ -1890562986) - background.leftUp.height * (0x2A3B7847 ^ -853442533 ^ 0x36ADC5E4 ^ -776520262));
         background.center.x = background.centerUp.x;
         background.center.y = background.left.y;
         background.center.width = background.centerUp.width;
         background.center.height = background.left.height;
         background.right.x = background.center.width + background.centerUp.x;
         background.right.y = background.center.y;
         background.right.height = background.left.height;
         background.leftDown.x = 0x7C3E4A5B ^ -360537609 ^ -1829371123 ^ 0x044AE8A1;
         background.leftDown.y = background.left.height + background.leftUp.height;
         background.centerDownLeft.x = background.center.x;
         background.centerDownLeft.y = background.leftDown.y;
         background.centerDownLeft.width = int(background.centerUp.width * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捔挋掏掆揤捫挳挏挬掐捶掶揀挰掛挌掬掭捣掊揾挳捣挂","揙挷掶掘揲揱揟挘排揱揍挐挓插捳揎"));
         background.centerDownRight.x = background.centerDownLeft.x + background.centerDownLeft.width;
         background.centerDownRight.y = background.centerDownLeft.y;
         background.centerDownRight.width = background.centerUp.width - background.centerDownLeft.width;
         background.rightDown.x = background.right.x;
         background.rightDown.y = background.centerDownRight.y;
      }
      
      protected function _d0befbb32cfb3291cea5e36b() : void
      {
         var _loc1_:int = -1950788312 ^ -1693686632 ^ 0x6346D4CD ^ -1993853199;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x49450C03 ^ -931449702 ^ 0x01DAB67C ^ 0x7A3F5D68))
            {
               case 0:
                  this._cf10a55119f3d03752ff69c7 = setTimeout(this.hide,this._6a914cdc9608b35a739d1ba4 * (0x62AE7018 ^ 0x1F8DB1A1 ^ -768789789 ^ -1357975374));
                  return;
               case 1:
                  if(this._cf10a55119f3d03752ff69c7 > (-496042001 ^ 0x2B624021 ^ 0x2F2D0BA5 ^ -433998741))
                  {
                     _loc1_ = 0x112DDBCA ^ -1624636574 ^ 0x1D55B133 ^ 0x6989BA14;
                  }
                  else
                  {
                     _loc1_ = -1115119845 ^ 0x49696246 ^ -186759557 ^ -85694293;
                  }
                  break;
               case 2:
                  clearTimeout(this._cf10a55119f3d03752ff69c7);
                  _loc1_ = -482950905 ^ -1353767665 ^ -1894724521 ^ 0x39B2FBD2;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = param1 - width * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဵဍၬზႶჟრဤစၶၷၘႮိႈႩၰၖၨၾႨႃჟႅ","ႄზတႮၘჃဝლჀႻဃဒ၂ႃါၥ");
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = param1 - height - (-2126985030 ^ -1553160209 ^ 0x45A9CA27 ^ 0x67FDA545);
      }
      
      public function destroy() : void
      {
         TweenMax.killTweensOf(this,false);
         clearTimeout(this._cf10a55119f3d03752ff69c7);
      }
   }
}

