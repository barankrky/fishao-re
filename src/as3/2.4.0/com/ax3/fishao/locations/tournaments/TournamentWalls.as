package com.ax3.fishao.locations.tournaments
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import flash.display.DisplayObject;
   
   public class TournamentWalls
   {
      
      private var _walls:Vector.<TournamentWall> = new Vector.<TournamentWall>();
      
      private var _currentTournament:TournamentInfo;
      
      public function TournamentWalls(param1:TournamentInfo)
      {
         var _loc2_:int = 0;
         var _loc3_:TournamentWall = null;
         super();
         Debug.assertNotEqual(param1,null,"Couldn\'t parse TournamentWalls on location where TournamentInfo is null");
         this._currentTournament = param1;
         var _loc4_:int = 0;
         while(_loc4_ < 3)
         {
            _loc2_ = Math.round(this._currentTournament.fishToWinCount / 3 * (_loc4_ + 1));
            _loc3_ = new TournamentWall(_loc4_,_loc2_);
            this._walls.push(_loc3_);
            _loc4_++;
         }
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = SublocationEnter.findIdByName(param1.name);
         var _loc3_:TournamentWall = this._walls[_loc2_ - 1];
         _loc3_.process(param1);
      }
      
      public function hitTest(param1:Number, param2:Number, param3:FieldChar) : Boolean
      {
         var _loc4_:TournamentWall = null;
         var _loc5_:Boolean = false;
         for each(_loc4_ in this._walls)
         {
            if(_loc4_.hitTest(param1,param2) && this.isWallOpenFor(_loc4_,param3) == false)
            {
               _loc5_ = true;
            }
         }
         return _loc5_;
      }
      
      private function isWallOpenFor(param1:TournamentWall, param2:FieldChar) : Boolean
      {
         var _loc3_:TournamentMemberInfo = this._currentTournament.getMemberByLogin(param2.locationUser.username);
         return _loc3_.criteria >= param1.criteriaValueToOpen;
      }
      
      public function openWall(param1:int) : void
      {
         this._walls[param1].open();
      }
      
      public function destroy() : void
      {
         var _loc1_:TournamentWall = null;
         for each(_loc1_ in this._walls)
         {
            _loc1_.destroy();
         }
         this._walls = null;
      }
   }
}

