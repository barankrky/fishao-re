package com.ax3.fishao.locations.privateHouse.interior.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class _92a02af1a67b5d02208e6348
   {
      
      public static const EIIR_FRONT:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掴排挥捇捩捻挴掕掏捽措揶揶掛掾挶掂挷","揩揩揱揧挧挩挣掂揙挬揥揽揇揔挲挽");
      
      public static const EIIR_BACK:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剐前勡割剠励刿勯刼劫削剈効别刀勢","刈勩劊勹割剪勯劆勻勼剝劝劙剙劼効");
      
      public static const EIIR_LEFT:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဲႅဝႜ။Ⴊႜငႄ၊ၪ၏სၘၢဆ","ჾჶၳဥႍႪკၙဌႈႎၘჸသ၍ဎ");
      
      public static const EIIR_RIGHT:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劢劘劲勨刋刎勑勩刃勅剚剌剅勧勊判刏刜","勖劙劇刯剦刣创勍创勩勲副勇刵剝刣");
      
      public function _92a02af1a67b5d02208e6348()
      {
         super();
      }
      
      public static function _d2acc4432f2ea46afe4e718f(param1:String) : Boolean
      {
         return param1 == EIIR_FRONT || param1 == EIIR_BACK;
      }
      
      public static function next(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EIIR_BACK:
               §§push(0x1BECFBF7 ^ 0x133DC21B ^ 0x317F3E09 ^ 0x39AE07E5);
               break;
            case EIIR_FRONT:
               §§push(-414054279 ^ -65949693 ^ 0x759790E2 ^ 0x6ED42899);
               break;
            case EIIR_RIGHT:
               §§push(0x203415AE ^ -1511592157 ^ -378587859 ^ 0x6CBDCFA2);
               break;
            case EIIR_LEFT:
               §§push(-1795895268 ^ -1568909690 ^ 0x677A9748 ^ 0x51F211D1);
               break;
            default:
               §§push(-1628560901 ^ -1175337429 ^ -737053249 ^ -217148821);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = EIIR_RIGHT;
               break;
            case 1:
               _loc2_ = EIIR_LEFT;
               break;
            case 2:
               _loc2_ = EIIR_FRONT;
               break;
            case 3:
               _loc2_ = EIIR_BACK;
               break;
            default:
               _loc2_ = EIIR_FRONT;
         }
         return _loc2_;
      }
      
      public static function _c3ef0ba7aef76fa8efd7e51a(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EIIR_BACK:
               §§push(0x7FA065B3 ^ -1142897213 ^ -205094582 ^ 0x3786213A);
               break;
            case EIIR_FRONT:
               §§push(0x40F4E522 ^ 0x0E09C50C ^ -1054982018 ^ -1880924079);
               break;
            case EIIR_RIGHT:
               §§push(-1960091568 ^ -358865637 ^ 0x4C9109FF ^ 0x2D264CB6);
               break;
            case EIIR_LEFT:
               §§push(-1443766121 ^ -1804188335 ^ -1737070082 ^ -1510880197);
               break;
            default:
               §§push(0x0E1B84A2 ^ -1467281171 ^ 0x7F4880B4 ^ -640150273);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = EIIR_LEFT;
               break;
            case 1:
               _loc2_ = EIIR_RIGHT;
               break;
            case 2:
               _loc2_ = EIIR_BACK;
               break;
            case 3:
               _loc2_ = EIIR_FRONT;
               break;
            default:
               _loc2_ = EIIR_FRONT;
         }
         return _loc2_;
      }
   }
}

