package com.ax3.fishao.requirements
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _6cb06e4cc56785b1498c8737 extends _ddb70167c149bc90b647ba30
   {
      
      private var _f60de1bdcc53a04fa5468874:int;
      
      public function _6cb06e4cc56785b1498c8737(param1:int)
      {
         super();
         this._f60de1bdcc53a04fa5468874 = param1;
      }
      
      public function get level() : int
      {
         return this._f60de1bdcc53a04fa5468874;
      }
      
      override public function get isComplete() : Boolean
      {
         return app.user.level >= this._f60de1bdcc53a04fa5468874;
      }
      
      override public function get description() : String
      {
         var _loc1_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_REQUIREMENT_REACH_LEVEL);
         return _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNT,this._f60de1bdcc53a04fa5468874);
      }
   }
}

