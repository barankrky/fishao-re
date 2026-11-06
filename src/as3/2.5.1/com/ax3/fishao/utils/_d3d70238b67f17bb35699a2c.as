package com.ax3.fishao.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.getQualifiedClassName;
   
   public class _d3d70238b67f17bb35699a2c
   {
      
      public function _d3d70238b67f17bb35699a2c()
      {
         super();
      }
      
      public static function _546f7c4baa1c36934c70e9e2(param1:DisplayObject) : Boolean
      {
         var _loc2_:Point = param1.localToGlobal(new Point(param1.mouseX,param1.mouseY));
         return param1.hitTestPoint(_loc2_.x,_loc2_.y,true);
      }
      
      public static function _d17bd5f6393cd1cc84711ab8(param1:DisplayObject, param2:uint) : void
      {
         Debug.assertNotEqual(param1,null);
         var _loc3_:ColorTransform = new ColorTransform();
         _loc3_.color = param2;
         param1.transform.colorTransform = _loc3_;
      }
      
      public static function _d7c8729108cc7f2a5c2d5bf5(param1:DisplayObject) : void
      {
         var _loc2_:int = -1579695922 ^ 0x7021B85E ^ 0x7C2FCD93 ^ 0x1F1FFA40;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x184FEF39 ^ -1460064386 ^ -1775878336 ^ -1806258106))
            {
               case 0:
                  param1.parent.setChildIndex(param1,param1.parent.numChildren - 1);
                  return;
               case 1:
                  return;
               case 2:
                  if(param1.parent == null)
                  {
                     _loc2_ = 0x06A1C4DB ^ -129261290 ^ 0x2955AB14 ^ 0x65798199;
                  }
                  else
                  {
                     _loc2_ = 0x754B6D90 ^ 0x15B08607 ^ -1154215264 ^ 0x6909B676;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _b15a09c394934b61017f2741(param1:DisplayObject) : void
      {
         var _loc2_:int = -1042889336 ^ 0x04B33948 ^ -409842907 ^ -1171790676;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x17602FDA ^ -779950101 ^ -105590165 ^ -1484371695))
            {
               case 0:
                  param1.parent.setChildIndex(param1,0x45645BCA ^ -1764943685 ^ -468679058 ^ 0x37B9C51F);
                  return;
               case 1:
                  return;
               case 2:
                  if(param1.parent == null)
                  {
                     _loc2_ = 0x704C2786 ^ -768467017 ^ -865984537 ^ -154372964;
                  }
                  else
                  {
                     _loc2_ = 0x29A5F92F ^ 0x4031ED2D ^ 0x4D324FC7 ^ -1133115250;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _ebea62b8ec3e654b81ce8b79(param1:DisplayObject, param2:Boolean) : void
      {
         var _loc3_:int = 0x1E232CAC ^ -2005855954 ^ -52614208 ^ 0x150D4794;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x28AAC162 ^ -294228433 ^ 0x4AF1ACE7 ^ -206613889))
            {
               case 0:
                  if(param1 is DisplayObjectContainer)
                  {
                     _loc3_ = -1382634695 ^ -1930657275 ^ -342591857 ^ -1251209625;
                  }
                  else
                  {
                     _loc3_ = -262717360 ^ -1049483644 ^ 0x46307BE4 ^ 0x08974CE1;
                  }
                  break;
               case 1:
                  (param1 as DisplayObjectContainer).mouseChildren = param2;
                  _loc3_ = 0x76CFF44C ^ -184652140 ^ 0x2ED107B0 ^ -748499783;
                  break;
               case 2:
                  (param1 as InteractiveObject).mouseEnabled = param2;
                  _loc3_ = 0x14993EDD ^ -335703977 ^ 0x515740BC ^ -776880157;
                  break;
               case 3:
                  if(param1 is InteractiveObject)
                  {
                     _loc3_ = 0x1AB727FB ^ 0x2865B540 ^ -1643459687 ^ -749074187;
                  }
                  else
                  {
                     _loc3_ = 0x0174B96E ^ 0x5FCA7EF4 ^ -452823215 ^ -1002512098;
                  }
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _3912bf0c77a5912362297103(param1:DisplayObject, param2:DisplayObjectContainer) : void
      {
         var _loc3_:int = 0x120BA7AC ^ -982594003 ^ -2123187558 ^ -1147441796;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1877083962 ^ 0x4A8DE519 ^ 0x6AEB05C3 ^ 0x5DF7A67A))
            {
               case 0:
                  param2.addChild(param1);
                  return;
               case 1:
                  if(param1.parent == param2)
                  {
                     _loc3_ = 0x12B9EAAB ^ 0x4B58D628 ^ 0x5DE37003 ^ -376507676;
                  }
                  else
                  {
                     _loc3_ = 0x79FDBE68 ^ 0x107E2E57 ^ 0x5FFCE563 ^ -604779718;
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
      
      public static function _bdec9ddd30d626755d3d1757(param1:DisplayObjectContainer, param2:int, param3:Array = null, param4:Array = null) : Array
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:Array = null;
         var _loc8_:DisplayObject = null;
         var _loc9_:Array = [];
         param3 = param3 == null ? [] : param3;
         param4 = param4 == null ? [] : param4;
         var _loc10_:int = 0x1CDDA722 ^ 0x31AAA467 ^ -927526557 ^ -440397274;
         while(_loc10_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc10_);
            if(param3.indexOf(_loc5_) == ConstantsBase.INDEX_NONE)
            {
               if(param4.indexOf(getQualifiedClassName(_loc5_)) == ConstantsBase.INDEX_NONE)
               {
                  if(_loc5_ is DisplayObjectContainer && param2 != (0x21B4B9CF ^ -1922299255 ^ -1795901803 ^ 0x382C05D3))
                  {
                     _loc6_ = _loc5_ as DisplayObjectContainer;
                     _loc7_ = _bdec9ddd30d626755d3d1757(_loc6_,param2 == ConstantsBase.INDEX_NONE ? param2 : int(param2 - 1),param3,param4);
                     for each(_loc8_ in _loc7_)
                     {
                        _loc9_.push(_loc8_);
                     }
                  }
                  else
                  {
                     _loc9_.push(_loc5_);
                  }
               }
            }
            _loc10_++;
         }
         return _loc9_;
      }
      
      public static function cacheAsBitmap(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:Array = null;
         var _loc4_:DisplayObject = null;
         Debug.assertNotEqual(param1,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掿掋掕揸挰掅挝挼挨揑挎揜揉掂授掳掁挭挬掮挡挙揲揗揍振挘掯掖捈挼捤捎揈捍掂揩採掑掳捏掩挠挜捛捭捑捕掽掁挘挴捓掾挶揗揊掂揎掕捧捓揥捔捔捭掦揦控揳捊挐挷掦挙捆捹掏挩挙挽掗捀掦掅捆捴挑捘捸","捍揘挕挵捳揋捨揧挞揮掣挕挆掾挭挕"));
         param1.cacheAsBitmap = param2;
         if(param1 is DisplayObjectContainer)
         {
            _loc3_ = _bdec9ddd30d626755d3d1757(param1 as DisplayObjectContainer,ConstantsBase.INDEX_NONE);
            for each(_loc4_ in _loc3_)
            {
               _loc4_.cacheAsBitmap = param2;
            }
         }
      }
   }
}

