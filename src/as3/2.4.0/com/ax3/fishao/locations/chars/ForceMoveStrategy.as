package com.ax3.fishao.locations.chars
{
   import com.ax3.fishao.locations.entries.PlayerChar;
   
   public class ForceMoveStrategy extends PathMoveStrategy
   {
      
      public function ForceMoveStrategy()
      {
         super();
      }
      
      override public function update(param1:uint, param2:uint, param3:Number) : void
      {
         super.update(param1,param2,param3);
         if(isArrivedToDestination())
         {
            _fieldChar.setPathMoveStrategy();
            if(_callback != null)
            {
               _callback();
            }
            if(_fieldChar is PlayerChar)
            {
            }
         }
      }
   }
}

