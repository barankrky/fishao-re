package com.ax3.fishao.tutorial.views.dialogs.shop
{
   import com.ax3.display.wrappers.impl._daef801c4e38e5d4bc89acd5;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.display.dialogs._8a427ac98d2c70f306463d34;
   import com.ax3.fishao.model.vo._4570af2a509c6469de588ba4;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class _62e6ad6eb7ca56c1fbbc638a extends _8a427ac98d2c70f306463d34
   {
      
      private var _73b9b5824c2ee01b0ed1239a:Boolean;
      
      private var _8b341e8668086dbed6ae0b18:int;
      
      private var _9501f17a140a7f1fdee19baf:Boolean;
      
      private var _05dbb3c718815d650133523c:_4570af2a509c6469de588ba4;
      
      private var _cd7ba848cbc32df3b4f4a56e:_0c6054b5aa20a9fd2b92f9c1;
      
      public function _62e6ad6eb7ca56c1fbbc638a()
      {
         super();
         this._cd7ba848cbc32df3b4f4a56e = GameSwf.instance.managerTutorial.tutorialHelpers;
         _canClosedByEsc = false;
      }
      
      override protected function _bb40c37976d22e628e07d386(param1:Event) : void
      {
         var _loc2_:int = -390206540 ^ 0x6A89BDB1 ^ -1634912818 ^ -385637113;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-73025644 ^ 0x7617928E ^ -1362347864 ^ -691741827))
            {
               case 0:
                  super._bb40c37976d22e628e07d386(param1);
                  _loc2_ = 0x29E69A18 ^ 0x56064CFA ^ 0x18F2BF22 ^ -1834438898;
                  break;
               case 1:
                  return;
               case 2:
                  super._bb40c37976d22e628e07d386(param1);
                  this._73b9b5824c2ee01b0ed1239a = false;
                  this._8b341e8668086dbed6ae0b18 = 0x39A903D1 ^ 0x2EF671A2 ^ -2010576375 ^ 0x60898785;
                  GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
                  _loc2_ = 0x3741188F ^ 0x3733DC38 ^ -731887788 ^ 0x21A84528;
                  break;
               case 3:
                  if(this._73b9b5824c2ee01b0ed1239a)
                  {
                     _loc2_ = -436568224 ^ 0x01C5FAD5 ^ 0x34B424AF ^ 0x253167D0;
                  }
                  else
                  {
                     _loc2_ = -408223430 ^ -741579353 ^ -1427120474 ^ 0x6B327CF4;
                  }
                  break;
               case 4:
                  _loc2_ = 0x76D688D4 ^ 0x405CE08E ^ 0x32D853E8 ^ -236388996;
                  break;
               case 5:
                  if(tabs.currentTab == this._8b341e8668086dbed6ae0b18)
                  {
                     _loc2_ = -2034371425 ^ 0x4905C67A ^ 0x09F0A2ED ^ 0x33F256C5;
                  }
                  else
                  {
                     _loc2_ = -770116589 ^ -419777660 ^ -2038962918 ^ 0x472F6446;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function buyHandler(param1:_4570af2a509c6469de588ba4, param2:int) : void
      {
         var _loc3_:int = 0x77A35B26 ^ -188613055 ^ 0x067CB38C ^ 0x1290C220;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1477224771 ^ -415689365 ^ 0x0553767C ^ -770186912))
            {
               case 0:
                  _loc3_ = 0x7B76B4A8 ^ 0x1C64D59C ^ 0x3C888C5E ^ -871089757;
                  break;
               case 1:
                  if(this._9501f17a140a7f1fdee19baf)
                  {
                     _loc3_ = -1792815012 ^ 0x4921A23C ^ -222896060 ^ -1187363093;
                  }
                  else
                  {
                     _loc3_ = -594665788 ^ -1240945239 ^ 0x01398F7D ^ -63837992;
                  }
                  break;
               case 2:
                  super.buyHandler(param1,param2);
                  _loc3_ = -1710081461 ^ -1371307728 ^ -1865887072 ^ 0x3317BD12;
                  break;
               case 3:
                  return;
               case 4:
                  super.buyHandler(param1,param2);
                  this._9501f17a140a7f1fdee19baf = false;
                  this._05dbb3c718815d650133523c = null;
                  close();
                  GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
                  _loc3_ = 0x19447CF8 ^ 0x79CD426F ^ 0x46B368D3 ^ -1313570162;
                  break;
               case 5:
                  if(this._05dbb3c718815d650133523c == param1)
                  {
                     _loc3_ = 0x6CC610D3 ^ -983326267 ^ -1334827578 ^ -1906622434;
                  }
                  else
                  {
                     _loc3_ = -233018220 ^ -151077863 ^ 0x261AA9FB ^ -1250513476;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
      
      public function _a47c8f6091b201cbbe1ee668(param1:int) : void
      {
         this._73b9b5824c2ee01b0ed1239a = true;
         this._8b341e8668086dbed6ae0b18 = param1;
         var _loc2_:DisplayObject = tabs._9e7eb22ae1ed0eaa7f8c6468(param1);
         this._cd7ba848cbc32df3b4f4a56e.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc2_,new Point(0x7777BF8A ^ 0x012E044B ^ 0x735290EF ^ 0x050B2B30,0x479869B2 ^ 0x09763EEB ^ -1025304024 ^ -1945285355)),0x573A6F2A ^ 0x084E5CC3 ^ -1682896025 ^ -993707974);
         this._cd7ba848cbc32df3b4f4a56e.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_,new Point(-1626397060 ^ -990564951 ^ -2031009824 ^ 0x22F4CBC3,0x4C97DE91 ^ -1252102364 ^ -2110308939 ^ 0x7BFE8C00)),-2032569288 ^ -1306538566 ^ -266527247 ^ -992238527);
      }
      
      public function _bb9cdcf48845d4be1e610727(param1:_67282af25befe9778e5c8dd1, param2:int) : void
      {
         var _loc3_:_daef801c4e38e5d4bc89acd5 = null;
         var _loc4_:_4570af2a509c6469de588ba4 = null;
         var _loc5_:DisplayObject = null;
         this._9501f17a140a7f1fdee19baf = true;
         var _loc6_:Vector.<_4570af2a509c6469de588ba4> = _itemsByTabIndex[tabs.currentTab];
         var _loc7_:int = -1827787716 ^ 0x5749429D ^ -2029661296 ^ 0x4342BD31;
         while(_loc7_ < _loc6_.length)
         {
            _loc4_ = _loc6_[_loc7_];
            if(_loc4_.type == param1 && _loc4_.id == param2)
            {
               this._05dbb3c718815d650133523c = _loc4_;
               _loc3_ = list.itemsViews[_loc7_] as _daef801c4e38e5d4bc89acd5;
               list._212441a4855840c8e96e9cf3(_loc7_);
               break;
            }
            _loc7_++;
         }
         if(_loc3_ != null)
         {
            _loc5_ = null;
            if(_loc3_.buyByFishcoinsButtonBig.enabled)
            {
               _loc5_ = _loc3_.buyByFishcoinsButtonBig;
            }
            else if(_loc3_.buyByFishcoinsButtonMedium.enabled)
            {
               _loc5_ = _loc3_.buyByFishcoinsButtonMedium;
            }
            if(_loc5_ != null)
            {
               this._cd7ba848cbc32df3b4f4a56e.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc5_,new Point(_loc5_.width / (0x02B2F0EA ^ 0x21B138D0 ^ 0x05ED40AF ^ 0x26EE8897),0x197F7CA3 ^ 0x7043242D ^ 0x79E70F00 ^ 0x10DB57EA)),-280749913 ^ -766152525 ^ 0x50F72A01 ^ 0x6DE642A1);
            }
            this._cd7ba848cbc32df3b4f4a56e.helperMask._ff99ac71fd600b826038309c(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_,new Point(-_loc3_.width / (0x7D4352E3 ^ 0x661CEEE7 ^ -445684328 ^ -30352994),-_loc3_.height / (-1137254614 ^ 0x2C73B40C ^ -352618539 ^ 0x7ABE1CF1))),_63a1662bfab25759f09f5245._6ba4124ea66e83ee2d11f6aa(_loc3_));
         }
      }
      
      public function _23e239fed1452ab5d19ef1d9(param1:int, param2:_67282af25befe9778e5c8dd1, param3:int) : void
      {
         var _loc4_:_4570af2a509c6469de588ba4 = null;
         _9e1811b9a972a44e89bed9e4();
         _f483755c7d6a73bee362a74d();
         _dee06a3b86fa4346b5562149();
         var _loc5_:Vector.<_4570af2a509c6469de588ba4> = _itemsByTabIndex[param1];
         if(_loc5_ == null)
         {
            return;
         }
         for each(_loc4_ in _loc5_)
         {
            if(_loc4_.type == param2 && _loc4_.id == param3)
            {
               this.buyHandler(_loc4_,_67282af25befe9778e5c8dd1.FISHCOINS.id);
               break;
            }
         }
      }
   }
}

