package com.ax3.fishao.locations.objects.boat
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class _d8a6f04331e45b3fc4efa7e8
   {
      
      public static const NORMAL:_d8a6f04331e45b3fc4efa7e8 = new _d8a6f04331e45b3fc4efa7e8(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆკၹფჺၢၙဋၴႢწჸဓა၎ტီၢႥၘ","ၹႪჅჅၯჽ၍ဇဒგၐႩჍယႋဘ"));
      
      public static const SAIL:_d8a6f04331e45b3fc4efa7e8 = new _d8a6f04331e45b3fc4efa7e8(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捦揙掛揨掚捄捴掚揓揤掂揲捶挘揷揝","捈揈揼挪插揯捀揁揱捧掟揌採掮掔揫"));
      
      public static const DEFAULT:_d8a6f04331e45b3fc4efa7e8 = NORMAL;
      
      public var name:String;
      
      public function _d8a6f04331e45b3fc4efa7e8(param1:String)
      {
         super();
         this.name = param1;
      }
      
      public static function _c8d6d84dc47da0978cc47cfb(param1:String) : _d8a6f04331e45b3fc4efa7e8
      {
         var _loc2_:int = -1954149685 ^ -61173409 ^ -1492013757 ^ 0x60D00BE6;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x453993ED ^ 0x4FA9E947 ^ 0x3FC00C66 ^ -2058531844))
            {
               case 0:
                  return NORMAL;
               case 1:
                  if(param1 == NORMAL.name)
                  {
                     _loc2_ = -2051318440 ^ 0x56062387 ^ 0x374EC088 ^ 0x54EE8367;
                  }
                  else
                  {
                     _loc2_ = -1384035955 ^ 0x1229A433 ^ 0x4142A003 ^ 0x4EF7708E;
                  }
                  break;
               case 2:
                  return SAIL;
               case 3:
                  if(param1 == SAIL.name)
                  {
                     _loc2_ = 0x4C20BED5 ^ 0x6FD5CEE4 ^ -1954510284 ^ 0x1868C737;
                  }
                  else
                  {
                     _loc2_ = -705112859 ^ -885371148 ^ 0x7AD4B420 ^ -737471739;
                  }
                  break;
               case 4:
                  throw new Error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၼ၄ႾလიႃႅჽჰႨუ჋ၨႻნႱც၀ႢჽႜბႄကწჁჩၹႀဘႝႃၩၬဣ၁჏ჭခჲၼၤငႾგဒდၫၣႮ","၅႐შჺငဘၸၦၡႤჺჩဇၫႊႏ") + param1);
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

