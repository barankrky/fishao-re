package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._a240f0394e2d5677aff9f7b4;
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _1fe06f16c1019417067e1646 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _021f88b4d4c2f4f07786bd0a:MovieClip;
      
      private var _f81bd7ff31fee2c5e4cc1613:MovieClip;
      
      private var _43b5216303ae16974cb68ece:_1c73633a6a4f4f6050258c2a;
      
      private var _7baee9b88175d434cf13e778:DisplayObject;
      
      private var _edb22b6459d6af350e5fa198:_73899a4de8f83c8d2c26f545;
      
      public function _1fe06f16c1019417067e1646(param1:_e2bbbb1ef110bb0aa28b913f, param2:MovieClip, param3:String)
      {
         this._021f88b4d4c2f4f07786bd0a = param2;
         super(param1,this._021f88b4d4c2f4f07786bd0a);
         this.init(param3);
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1)
         {
            this._021f88b4d4c2f4f07786bd0a.gotoAndStop(0x5B9659E9 ^ -1124391744 ^ -7943438 ^ 0x18EBB7D9);
            _d3d70238b67f17bb35699a2c._d7c8729108cc7f2a5c2d5bf5(this._021f88b4d4c2f4f07786bd0a);
         }
         else
         {
            this._021f88b4d4c2f4f07786bd0a.gotoAndStop(0x0AAE2DE2 ^ 0x10C8234A ^ 0x284B7846 ^ 0x322D76EF);
            _d3d70238b67f17bb35699a2c._b15a09c394934b61017f2741(this._021f88b4d4c2f4f07786bd0a);
         }
         this._f81bd7ff31fee2c5e4cc1613.x = param1 ? 0x432B8627 ^ -815358584 ^ 0x39F0BA16 ^ -1245863498 : 0x511EEE9A ^ -1245845660 ^ 0x54DA8047 ^ -1334212173;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0x3BDE0BB0 ^ -2130071238 ^ -1129197368 ^ 0x3636AD43;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x09449D05 ^ -1241398573 ^ -1833826974 ^ 0x1DA79DB6))
            {
               case 0:
                  this._021f88b4d4c2f4f07786bd0a.filters = [];
                  _loc2_ = 0x64C0553F ^ -1629424203 ^ 0x485AF163 ^ -2111138070;
                  break;
               case 1:
                  return;
               case 2:
                  this._021f88b4d4c2f4f07786bd0a.filters = [_a240f0394e2d5677aff9f7b4._4e8eecfe2829137c38b53096(-2096327511 ^ 0x6B93F1EF ^ -3585182 ^ -391524060)];
                  _d3d70238b67f17bb35699a2c._b15a09c394934b61017f2741(this._021f88b4d4c2f4f07786bd0a);
                  _loc2_ = -195719416 ^ -530609136 ^ 0x51D5DC67 ^ 0x758F187C;
                  break;
               case 3:
                  if(param1)
                  {
                     _loc2_ = 0x385F1F4C ^ -686921945 ^ -253314350 ^ 0x2FE705BB;
                  }
                  else
                  {
                     _loc2_ = 0x116771D9 ^ -911456339 ^ -1259707858 ^ 0x5C71935A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set notificationsCount(param1:int) : void
      {
         this._7baee9b88175d434cf13e778.visible = param1 > (-311718509 ^ 0x380C1243 ^ -1577102444 ^ 0x7498CC44);
         this._edb22b6459d6af350e5fa198.text = param1.toString();
      }
      
      private function init(param1:String) : void
      {
         this._f81bd7ff31fee2c5e4cc1613 = Debug.assertProperty(this._021f88b4d4c2f4f07786bd0a,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჉ဗსႠ၀ႁဎဆნကგဦႯႃဎ჊ဝႌ","Ⴚ၎჉ႾျၜံဟႢჰჭႿၖဃ႗ွ"));
         this._f81bd7ff31fee2c5e4cc1613.gotoAndStop(param1);
         this.isActive = false;
         this.isEnabled = true;
         this._43b5216303ae16974cb68ece = new _1c73633a6a4f4f6050258c2a(controller,Debug.assertProperty(this._f81bd7ff31fee2c5e4cc1613,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵掓挘挠挸捧捃挨捐捳揋挓掑掹捀捨捌掘","捺捔掌掓掿揂捇揑掀挈挍揷捼捅挀损")));
         this._7baee9b88175d434cf13e778 = Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掌揤揲措掤揍揠挸捡捶掻挆掑掌捲据掿掫挖挰掶揙揅捒掓揻揁揠掔挬捓掌捻捷捞掔揀捶挌掿掍捱","揙揸捞按掼据捺捖措捵挾挃掿掏捆挺"));
         this._edb22b6459d6af350e5fa198 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掩揘捹捦掷挑挶換掻挢揃捪挕揽捭捪揯掂","捠揝揉揎揂挮揑捭指捲揩揍控捛掠揕"),null,this._7baee9b88175d434cf13e778);
      }
      
      public function _31e100dcdd321f4baab6c222(param1:int) : void
      {
         this._f81bd7ff31fee2c5e4cc1613.gotoAndStop(EClubPageType.ECPT_INFO);
         this._43b5216303ae16974cb68ece.emblemID = param1;
      }
   }
}

