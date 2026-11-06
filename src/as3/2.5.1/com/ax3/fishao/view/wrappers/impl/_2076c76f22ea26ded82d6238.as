package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   
   public class _2076c76f22ea26ded82d6238 extends CHAT_HISTORY_MESSAGE
   {
      
      private var _252f627d863724eaf4efe598:_eb2314ffc37429732989b460 = null;
      
      private var _ee3a856924a90c3b6b41aa27:Boolean = false;
      
      public function _2076c76f22ea26ded82d6238()
      {
         super();
         username.x = 0x47A0EEA2 ^ 0x1AD1340D ^ 0x4E7AE55E ^ 0x130B3FF0;
         separatorLine.alpha = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၟქსငၯၴႿ။჊ၵဆႍႡჸეჩ့ၥჹშၜႜၜံ","კၡႯჅ၇ხၔჼၐმဵჟႛႬ႓၃");
      }
      
      private function _6b4f144168c9003fe18becaa(param1:String) : void
      {
         this._252f627d863724eaf4efe598 = new _eb2314ffc37429732989b460();
         this._252f627d863724eaf4efe598.x = -1175454695 ^ 0x5EB23BB3 ^ 0x42BC9C86 ^ -1511957716;
         this._252f627d863724eaf4efe598.y = 0x74ED4640 ^ 0x0B14FE33 ^ -932572224 ^ -1215059021;
         this._252f627d863724eaf4efe598.graphics.beginFill(0x20985943 ^ -1678175859 ^ -1580722522 ^ 0x1A393EF8,0x2FEEAC78 ^ 0x6F80B701 ^ -997603233 ^ -2065181914);
         var _temp_2:* = this._252f627d863724eaf4efe598.graphics;
         var _temp_1:* = 0x2FF0328A ^ -849867083 ^ -981963512 ^ 0x27D05137;
         _temp_2.drawRect(_temp_1,_temp_1,this.width,this.height);
         this._252f627d863724eaf4efe598.graphics.endFill();
         this._252f627d863724eaf4efe598.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("割勻刑勄剞剤勑劽划劮剿剋剛剶勊则","勩制刣加勁勥功剿勅剂勆勆前副剥勪")):param1};
      }
      
      public function set sender(param1:String) : void
      {
         username.text = param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႶဨၟထႚႹქ႖ၱႪ","ဘ჋ჭၮဎၴ၃ၫႳဈၼფღႧ჌ၝ");
         username.width = username.textWidth + (0x7B844157 ^ 0x2AF0A2E9 ^ 0x456AF1D9 ^ 0x141E1264);
         userMessage.x = username.x + username.width + (-1586599478 ^ -1159546515 ^ 0x40A8B21C ^ 0x5B2462BE);
      }
      
      public function get sender() : String
      {
         return username.text;
      }
      
      public function get message() : String
      {
         return userMessage.text;
      }
      
      public function set message(param1:String) : void
      {
         userMessage.text = param1;
         userMessage.width = (0x2729CD79 ^ -2067509189 ^ 0x4FA33875 ^ -330390501) - username.width - (0x46644528 ^ -249749257 ^ -2068018674 ^ 0x33C5EFD7);
         this._566c91d2f1db612bf257986b(param1);
      }
      
      private function _566c91d2f1db612bf257986b(param1:String) : void
      {
         var _loc2_:int = 0x35F3B623 ^ 0x3B706371 ^ -505431517 ^ 0x2E3A8C06;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x25183117 ^ 0x3FF8E85F ^ -214832595 ^ 0x28B7D016))
            {
               case 0:
                  if(!this._ee3a856924a90c3b6b41aa27)
                  {
                     _loc2_ = 0x0F911241 ^ 0x4FB00894 ^ -2039343403 ^ 0x0735EF72;
                  }
                  else
                  {
                     _loc2_ = -719996595 ^ -1570255518 ^ -453546111 ^ 0x52E3F8DE;
                  }
                  break;
               case 1:
                  addChild(this._252f627d863724eaf4efe598);
                  this._ee3a856924a90c3b6b41aa27 = true;
                  _loc2_ = -7764834 ^ -108040996 ^ -104347015 ^ 0x3EA7C14B;
                  break;
               case 2:
                  return;
               case 3:
                  this._252f627d863724eaf4efe598.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掮揑挡挷揉据掲挪掐揙捒捅掃捔掀捅","挳揹捎掗挄掚掠揰捿挀揚捕捬揧掉挺")):param1};
                  _loc2_ = -2063905627 ^ -1899575300 ^ -895786290 ^ 0x01C00AE6;
                  break;
               case 4:
                  if(userMessage.width < userMessage.textWidth)
                  {
                     _loc2_ = 0x0B9558B7 ^ 0x1BF92111 ^ 0x37CD87DC ^ -423158516;
                  }
                  else
                  {
                     _loc2_ = 0x444276C5 ^ 0x638ADF3E ^ -1625743265 ^ 0x79B76AD1;
                  }
                  break;
               case 5:
                  if(this._252f627d863724eaf4efe598 == null)
                  {
                     _loc2_ = -2013683743 ^ 0x1C507979 ^ 0x09F6C722 ^ 0x5339C2CE;
                  }
                  else
                  {
                     _loc2_ = -1894123697 ^ 0x1A71FD01 ^ 0x018078A7 ^ 0x558E919A;
                  }
                  break;
               case 6:
                  if(this._ee3a856924a90c3b6b41aa27)
                  {
                     _loc2_ = 0x0E5C831A ^ -1603112312 ^ 0x4F4E423A ^ 0x200650D3;
                  }
                  else
                  {
                     _loc2_ = -2112980635 ^ 0x06C994 ^ 0x4A0D556F ^ 0x096306EF;
                  }
                  break;
               case 7:
                  this._6b4f144168c9003fe18becaa(param1);
                  _loc2_ = -819000042 ^ 0x0D60A4EB ^ 0x705C52F1 ^ 0x7375187F;
                  break;
               case 8:
                  removeChild(this._252f627d863724eaf4efe598);
                  this._ee3a856924a90c3b6b41aa27 = false;
                  _loc2_ = -631455606 ^ -97136596 ^ -2144902665 ^ 0x61289220;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

