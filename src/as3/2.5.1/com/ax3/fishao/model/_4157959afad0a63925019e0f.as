package com.ax3.fishao.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.model.vo._ce86dee7dc1496f14ad148fa;
   import com.ax3.fishao.vars.app;
   
   public class _4157959afad0a63925019e0f
   {
      
      private var _4005952afc596cce425091ed:Array;
      
      public function _4157959afad0a63925019e0f()
      {
         super();
      }
      
      public function _5624fbaad3a376ccbfeee609() : Array
      {
         return this._4005952afc596cce425091ed;
      }
      
      public function _5b5fcefde2d96b4a89a4a652(param1:Object) : void
      {
         var _loc2_:int = -2121800342 ^ -636109912 ^ 0x4533BB1E ^ 0x1EA1E5DC;
         var _loc3_:_ce86dee7dc1496f14ad148fa = null;
         var _loc4_:Object = null;
         var _loc5_:Object = param1;
         this._4005952afc596cce425091ed = [];
         var _loc6_:Vector.<Object> = new Vector.<Object>();
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = app.privateHouseInteriorItemDict.get(_loc2_) as _ce86dee7dc1496f14ad148fa;
            if(_loc3_ != null)
            {
               _loc4_ = {};
               _loc4_.id = _loc3_.id;
               _loc4_.itemId = _loc3_.id;
               _loc4_.priceFishbucks = _loc3_.priceFishbucks;
               _loc4_.priceFishcoins = _loc3_.priceFishcoins;
               _loc4_.type = _loc3_.type;
               _loc4_.rotation = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劫刕利剾剔勆剈剠剟勽剹刚勪勃刪功刴勹","勎刹劼剆別剠助剁勿刋劎刨力剗剰剄");
               _loc4_.sizeX = _loc3_.size_x;
               _loc4_.sizeY = _loc3_.size_y;
               _loc4_.floor = 0x029EF436 ^ -949331216 ^ -1519936290 ^ 0x60933219;
               _loc4_.positionX = -1653926822 ^ 0x753F40C2 ^ -2013065837 ^ 0x6057590B;
               _loc4_.positionY = -1867797576 ^ -176562101 ^ 0x5BBD8F43 ^ 0x3E6FC4B0;
               if(_loc4_.type == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剳劻募刉勩刯剶則剓剆勅剮勉刭勣割劆勎劕剁刨刕剤勧剦剡","劊劘劮刮勮剩劆劫勴剾劐刌剏剻刲刋"))
               {
                  _loc6_.push(_loc4_);
               }
               else
               {
                  this._4005952afc596cce425091ed.push(_loc4_);
               }
            }
         }
         this._e4620f2e6300f84c074701f5(_loc6_,-938749573 ^ -749446115 ^ 0x1EB13A41 ^ 0x05EEB727,0x75C0595C ^ -628746084 ^ 0x650BEF56 ^ -900878699);
         this._e4620f2e6300f84c074701f5(_loc6_,-365875078 ^ -693856982 ^ 0x7B95F2E6 ^ 0x470057BE,0x70011FAB ^ -2049672092 ^ 0x42FC4CC0 ^ -1222037748);
         this._e4620f2e6300f84c074701f5(_loc6_,0x2B7EEE48 ^ 0x46192552 ^ -1912295530 ^ -480025460,0x0F64E2A2 ^ -119505685 ^ -793089445 ^ 0x273EF415);
         this._e4620f2e6300f84c074701f5(_loc6_,0x2E999433 ^ 0x185E1812 ^ -739428975 ^ -450184776,0x1BEA23A5 ^ 0x072EB38E ^ 0xFCD9FD ^ 0x1C3849D1);
      }
      
      private function _e4620f2e6300f84c074701f5(param1:Vector.<Object>, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:int = 0x716E443A ^ -1004103037 ^ 0x35689889 ^ -2145368528;
         var _loc8_:* = 0x02279D95 ^ 0x219A88A0 ^ 0x57B3518F ^ 0x740E44BE;
         while(_loc7_ < (-1815526118 ^ 0x43AE4AB2 ^ 0x5C99D395 ^ -1929454535) && param1.length > (-26480797 ^ -122540361 ^ 0x27489CDC ^ 0x21915D08))
         {
            _loc5_ = false;
            for(_loc6_ in param1)
            {
               _loc4_ = param1[_loc6_];
               if(_loc4_.sizeX == _loc8_)
               {
                  _loc4_.positionX = param2 + _loc7_;
                  _loc4_.positionY = param3;
                  this._4005952afc596cce425091ed.push(_loc4_);
                  _loc7_ += _loc4_.sizeX;
                  _loc8_ = int((-1850474602 ^ -428962546 ^ 0x685DABB1 ^ 0x1F80D92D) - _loc7_);
                  param1.splice(_loc6_ as int,0x3B1FD17F ^ 0x08161788 ^ 0x7CE31C59 ^ 0x4FEADAAF);
                  _loc5_ = true;
                  break;
               }
            }
            if(!_loc5_ && _loc8_ > (-1599405871 ^ 0x31B4CBA0 ^ 0x4353E4F2 ^ -766759037))
            {
               _loc8_--;
            }
         }
      }
   }
}

