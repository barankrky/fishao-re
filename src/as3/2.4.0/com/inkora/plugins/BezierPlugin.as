package com.inkora.plugins
{
   import com.inkora.tween.TweenCube;
   
   public class BezierPlugin extends TweenCubePlugin
   {
      
      public static var instance:BezierPlugin;
      
      public function BezierPlugin()
      {
         super();
         this.tweenPropertyName = "Bezier";
         this.Props = ["bezierX","bezierY"];
         this.priority = -1;
      }
      
      public static function ActivatePlugin() : BezierPlugin
      {
         if(!instance)
         {
            instance = new BezierPlugin();
         }
         return instance;
      }
      
      public static function parseXML(param1:Object, param2:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:XML = null;
         var _loc5_:Object = {};
         var _loc6_:Object = {};
         var _loc7_:Array = [];
         var _loc8_:Array = [];
         var _loc9_:XMLList = param2.Props.attributes();
         for each(_loc4_ in _loc9_)
         {
            _loc3_ = String(_loc4_.name().toString());
            if(_loc3_ == "rotate")
            {
               _loc5_.rotate = _loc4_.toString() == "true";
            }
            else
            {
               _loc7_ = _loc4_.toString().split(",");
               _loc6_.x = Number(_loc7_[0]);
               _loc6_.y = Number(_loc7_[1]);
               _loc8_.push(_loc6_);
               _loc6_ = {};
            }
         }
         _loc5_.path = _loc8_;
         param1["Bezier"] = _loc5_;
      }
      
      override public function initPlugin(param1:Object, param2:*, param3:Object, param4:TweenCube) : void
      {
         if(!param2.path)
         {
            return;
         }
         if(param2.path.length <= 1)
         {
            return;
         }
         param4.pluginData = param4.pluginData != null ? param4.pluginData : {};
         param4.pluginData.bezier = [];
         param4.pluginData.bezier = param2.path;
         var _loc5_:String = param2.hasOwnProperty("fieldX") ? param2.fieldX : "x";
         var _loc6_:String = param2.hasOwnProperty("fieldY") ? param2.fieldY : "y";
         param4.pluginData.fieldX = _loc5_;
         param4.pluginData.fieldY = _loc6_;
         param4.pluginData.rotate = param2.rotate != null ? param2.rotate : false;
         param3["bezierX"] = param4.getTweenable(this,"bezierX",param2.path[0][_loc5_],param2.path[param2.path.length - 1][_loc5_] - param2.path[0][_loc5_],this.priority,true,"normal");
         param3["bezierY"] = param4.getTweenable(this,"bezierY",param2.path[0][_loc6_],param2.path[param2.path.length - 1][_loc6_] - param2.path[0][_loc6_],this.priority,true,"normal");
         param4.pluginData.chk = 0;
         param4.pluginData.x1 = param1[_loc5_];
         param4.pluginData.y1 = param1[_loc6_];
         param4.pluginData.angle = 0;
      }
      
      override public function tweenPlugin(param1:Object, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:TweenCube) : void
      {
         var _loc9_:String = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Array = [];
         _loc14_ = param8.pluginData.bezier;
         _loc9_ = param2 == "bezierX" ? param8.pluginData.fieldX : param8.pluginData.fieldY;
         if(param7)
         {
            param8.target[_loc9_] = _loc14_[_loc14_.length - 1][_loc9_];
            return;
         }
         var _loc15_:int = param6 * _loc14_.length >> 0;
         var _loc16_:Number = (param6 - _loc15_ * (1 / _loc14_.length)) * _loc14_.length;
         if(_loc15_ == 0)
         {
            _loc11_ = param4;
            _loc12_ = (_loc14_[0][_loc9_] + _loc14_[1][_loc9_]) * 0.5;
         }
         else if(_loc15_ == _loc14_.length - 1)
         {
            _loc11_ = (_loc14_[_loc15_ - 1][_loc9_] + _loc14_[_loc15_][_loc9_]) * 0.5;
            _loc12_ = param3;
         }
         else
         {
            _loc11_ = (_loc14_[_loc15_ - 1][_loc9_] + _loc14_[_loc15_][_loc9_]) * 0.5;
            _loc12_ = (_loc14_[_loc15_][_loc9_] + _loc14_[_loc15_ + 1][_loc9_]) * 0.5;
         }
         var _loc17_:Number = _loc11_ + _loc16_ * (2 * (1 - _loc16_) * (_loc14_[_loc15_][_loc9_] - _loc11_) + _loc16_ * (_loc12_ - _loc11_));
         param1[_loc9_] = _loc17_;
         ++param8.pluginData.chk;
         if(Boolean(param8.pluginData.rotate) && param8.pluginData.chk == 2)
         {
            _loc13_ = Math.atan2(param1.y - param8.pluginData.y1,param1.x - param8.pluginData.x1) * (180 / Math.PI);
            param8.target.rotation += _loc13_ - param8.pluginData.angle;
            param8.pluginData.angle = _loc13_;
            param8.pluginData.x1 = param1.x;
            param8.pluginData.y1 = param1.y;
            param8.pluginData.chk = 0;
         }
      }
      
      override public function completePlugin(param1:Object, param2:TweenCube) : void
      {
         delete param2.pluginData.bezier;
         delete param2.pluginData.angle;
         delete param2.pluginData.x1;
         delete param2.pluginData.y1;
         delete param2.pluginData.chk;
      }
   }
}

