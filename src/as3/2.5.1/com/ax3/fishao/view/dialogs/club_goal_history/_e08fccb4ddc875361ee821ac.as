package com.ax3.fishao.view.dialogs.club_goal_history
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._f6788106409c49494058e542;
   import com.ax3.fishao.view.dialogs.club_goal_history.item._82b9d90c78670ab260767a92;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.clubs.goal_history.ResponseClubsGoalHistory;
   
   public class _e08fccb4ddc875361ee821ac extends _f6788106409c49494058e542
   {
      
      private var _a5b9cf5eec2bcec6dd37b826:Array;
      
      private var _29566983d1d2a2226ab1128a:int;
      
      private var _72fabe4b5dcac0ada3fa7c02:_c831dee0e934055085649c25;
      
      public function _e08fccb4ddc875361ee821ac(param1:DisplayObjectContainer)
      {
         this._72fabe4b5dcac0ada3fa7c02 = new _c831dee0e934055085649c25(this,param1);
         super(this._72fabe4b5dcac0ada3fa7c02);
         this.init();
      }
      
      private function _f3b1cb33822b4273e8f1ab9f(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_82b9d90c78670ab260767a92 = null;
         var _loc4_:DisplayObject = null;
         if(_fa8d5efc34d8920757369351._ecb681b2bff0915b270b914b(param1))
         {
            return;
         }
         var _loc5_:ResponseClubsGoalHistory = param1 as ResponseClubsGoalHistory;
         var _loc6_:DisplayObjectContainer = this._72fabe4b5dcac0ada3fa7c02.source as DisplayObjectContainer;
         var _loc7_:Array = _loc5_.goalsData;
         _loc7_.sortOn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞挬揑捏捣捀掷挷挞揵掬挦揷推挿捂掬损捯捒捭揠掬揥捕揓揌挾挷掓揷挀","揢捠掠揵捘捹揍掚挞捵掹掱掀揥掝挒"),Array.NUMERIC | Array.DESCENDING);
         for each(_loc2_ in _loc7_)
         {
            _loc3_ = new _82b9d90c78670ab260767a92(_loc2_);
            _loc4_ = _loc3_.view.source;
            _loc6_.addChild(_loc4_);
            _loc4_.x = -946647696 ^ -1766583522 ^ -592176120 ^ -1919729077;
            this._a5b9cf5eec2bcec6dd37b826.push(_loc3_);
         }
         this._72fabe4b5dcac0ada3fa7c02.viewPagination.pagesTotal = Math.ceil(this._a5b9cf5eec2bcec6dd37b826.length / this._29566983d1d2a2226ab1128a);
         this._72fabe4b5dcac0ada3fa7c02.viewPagination.pageCurrent = -1093532572 ^ -1011404131 ^ -1184467121 ^ -1006419530;
         _2366485e451061bdda2a0f22(this._a5b9cf5eec2bcec6dd37b826,-1500540775 ^ 0x767BCB35 ^ -95060923 ^ 0x2AA127B3,this._29566983d1d2a2226ab1128a,0x2F39EFF9 ^ -1811404291 ^ 0x57ECC7A5 ^ -321060445);
         this._157b34c96cf0d1a8710a15ab();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._72fabe4b5dcac0ada3fa7c02.viewPagination.buttonLeft:
                  §§push(-818518 ^ 0x627D9C80 ^ 0x5F78CF2B ^ -1024012031);
                  break;
               case this._72fabe4b5dcac0ada3fa7c02.viewPagination.buttonRight:
                  §§push(0x7CD7913B ^ -777801191 ^ 0x7A523B22 ^ -685369343);
                  break;
               default:
                  §§push(0x50AB5CA7 ^ 0x6F34E162 ^ -391928660 ^ -683927189);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  this._157b34c96cf0d1a8710a15ab();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._a5b9cf5eec2bcec6dd37b826 = [];
         this._29566983d1d2a2226ab1128a = -1409425857 ^ -1204690899 ^ -276691133 ^ -61982372;
         GameSwf.instance.managerClubs.getGoalHistory(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._f3b1cb33822b4273e8f1ab9f));
      }
      
      private function _157b34c96cf0d1a8710a15ab() : void
      {
         _3d866f07adb02a6079215c17(this._a5b9cf5eec2bcec6dd37b826,this._72fabe4b5dcac0ada3fa7c02.viewPagination.pageCurrent,this._29566983d1d2a2226ab1128a);
      }
   }
}

