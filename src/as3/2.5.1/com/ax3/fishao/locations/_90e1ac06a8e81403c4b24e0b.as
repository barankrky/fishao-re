package com.ax3.fishao.locations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.Fishbones;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.geom.Point;
   
   public class _90e1ac06a8e81403c4b24e0b extends Fishbones
   {
      
      public var position:Point;
      
      public function _90e1ac06a8e81403c4b24e0b()
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      public function add() : void
      {
         var _loc1_:int = (this.x + this.y) % (-1308023343 ^ 0x718CCB45 ^ -2005708830 ^ 0x4BF6A175) + (-872172179 ^ 0x74D31A47 ^ 0x5440F9E0 ^ -326084917);
         this.gotoAndStop(_loc1_);
         TweenCube.from(this,-2113809127 ^ 0x27F32154 ^ -1806189632 ^ 0x31A54F8C,{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("利刣剞剕勥劍刷刔刓劺剂刾劒劇剽剾劌劻","務劆劾刮劺务勄勸劬勠勃勸剖勤勘刕")):-1031404982 ^ -1821689043 ^ -1026535468 ^ -1824688461,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挻挱掁推掗揬挃挘揩掰","挔掷掊捤挷援挤揭挔挷挚掏挐揄挓掗")):y - (0x07E14DF4 ^ 0x3848AE04 ^ -1921348661 ^ -1294768081)
         },{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("助刹劏刅刻勘剜劼剕剽剶刂勲勱刋励","剀勍判剟务劘劒勣刐办劣勪勽劙勝勚")):Cubic.easeOut});
      }
      
      public function remove() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,-310786446 ^ -2012661471 ^ -732633140 ^ -1323034466,{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃換掉揘捵掖捦揺挴捅措挧揿掠掉捁揉捁","捬捱揳挧掊揊揭捌挶挊损揕捷捝排捖")):0x125DE718 ^ 0x40D822F7 ^ -718310664 ^ -2018855145,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭挲揌挸掐揝掩揊掞挀","掿揆掱揱捞揗挐掖捃挜挠按掔换捲捊")):y - (-389258300 ^ 0x2C2275A6 ^ 0x0A22C251 ^ -825437157)
         },{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၷჟသဓჳုက჏ဢၓႤ၆ၧၢၖႋဎ၄ბჽ႓ီတ႖ბჁဤၵ","ჷყ့လဟဖႷႶႇႲგႸူზႱၫ")):this.destroy,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捻挃捳掳捎挨掿揤挲挘挾揚揽捡挟揪","掸掶换揇揄挐挘捣挶挡挫捃揭挸掔掲")):Cubic.easeOut
         });
      }
      
      public function destroy() : void
      {
         var _loc1_:int = -844585526 ^ -533614810 ^ 0x15D92DF7 ^ 0x5F2902C3;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-974302491 ^ -376166553 ^ -1344260199 ^ -454006846))
            {
               case 0:
                  return;
               case 1:
                  if(this.parent != null)
                  {
                     _loc1_ = -1224498456 ^ 0x0CB784A4 ^ -858736614 ^ 0x100DBB8D;
                  }
                  else
                  {
                     _loc1_ = 0x46613398 ^ -29315272 ^ -1303203990 ^ 0x6D1A1613;
                  }
                  break;
               case 2:
                  this.parent.removeChild(this);
                  _loc1_ = -1796318981 ^ -307332468 ^ 0x352085FD ^ 0x2B098253;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

