package com.inkora.plugins
{
   import com.inkora.tween.TweenCube;
   
   public class TweenCubePlugin
   {
      
      public var tweenPropertyName:String;
      
      public var Props:Array;
      
      public var priority:int = 0;
      
      public function TweenCubePlugin()
      {
         super();
      }
      
      public function initPlugin(param1:Object, param2:*, param3:Object, param4:TweenCube) : void
      {
      }
      
      public function tweenPlugin(param1:Object, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:TweenCube) : void
      {
      }
      
      public function completePlugin(param1:Object, param2:TweenCube) : void
      {
      }
   }
}

