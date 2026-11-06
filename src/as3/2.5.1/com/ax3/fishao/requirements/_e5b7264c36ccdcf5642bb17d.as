package com.ax3.fishao.requirements
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _e5b7264c36ccdcf5642bb17d extends _ddb70167c149bc90b647ba30
   {
      
      private var _924f3fe76369e08d6ae3b154:Number;
      
      public function _e5b7264c36ccdcf5642bb17d(param1:Number)
      {
         super();
         this._924f3fe76369e08d6ae3b154 = param1;
      }
      
      override public function get isComplete() : Boolean
      {
         return app.user.spendings >= this._924f3fe76369e08d6ae3b154;
      }
      
      override public function get description() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_REQUIREMENT_PLAYER_SPENDINGS);
      }
   }
}

