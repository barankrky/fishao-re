package protocol.api.improvable
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseImprovable extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _currentLevel:int;
      
      private var _timeToNextUpgrade:int;
      
      private var _levelsInfo:Array;
      
      public function ResponseImprovable()
      {
         super();
         this._levelsInfo = [];
      }
      
      public function get currentLevel() : int
      {
         return this._currentLevel;
      }
      
      public function set currentLevel(param1:int) : void
      {
         this._currentLevel = param1;
      }
      
      public function get timeToNextUpgrade() : int
      {
         return this._timeToNextUpgrade;
      }
      
      public function set timeToNextUpgrade(param1:int) : void
      {
         this._timeToNextUpgrade = param1;
      }
      
      public function get levelsInfo() : Array
      {
         return this._levelsInfo;
      }
      
      public function set levelsData(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ImprovableLevelInfo = null;
         var _loc4_:Object = decodeJson(param1);
         Debug.assert(_loc4_ is Array);
         var _loc5_:Array = _loc4_ as Array;
         var _loc6_:Class = this.levelInfoClass;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new _loc6_();
            _loc3_.deserialize(_loc2_);
            this._levelsInfo.push(_loc3_);
         }
      }
      
      protected function get levelInfoClass() : Class
      {
         Debug.assert(false,"Please override");
         return null;
      }
   }
}

