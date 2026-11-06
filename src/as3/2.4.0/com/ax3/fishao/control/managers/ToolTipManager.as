package com.ax3.fishao.control.managers
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.ITooltipTargetWithAlpha;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.model.events.TipEvent;
   import com.ax3.fishao.model.interfaces.IToolTip;
   import com.ax3.fishao.utils.TransparentClickUtil;
   import com.ax3.fishao.view.tooltips.SimpleTooltip;
   import com.ax3.fishao.view.tooltips.UpdatedTooltip;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   
   public class ToolTipManager
   {
      
      private static var _updateGroup:UpdateGroup;
      
      private static var _currentTooltip:IToolTip;
      
      private static var _tipTimeout:Number;
      
      private static var _stage:Stage;
      
      private static const TOOLTIP_SHOW_DELAY:int = 0;
      
      public static const TOOLTIP_LAYER:Sprite = new Sprite();
      
      private static var _currentTooltipObject:Object = null;
      
      private static var _lastTooltipShowUpdaterCount:uint = 0;
      
      private static var _tooltipCache:Dictionary = new Dictionary();
      
      private static const MOUSE_FOLLOW_TOOLTIP_OFFSET_X:Number = 10;
      
      private static const MOUSE_FOLLOW_TOOLTIP_OFFSET_Y:Number = 20;
      
      public function ToolTipManager()
      {
         super();
      }
      
      public static function init(param1:Stage) : void
      {
         TooltipType.TEXT_TOOLTIP = new TooltipType(SimpleTooltip);
         TOOLTIP_LAYER.mouseEnabled = false;
         TOOLTIP_LAYER.mouseChildren = true;
         TOOLTIP_LAYER.name = "TOOLTIP_LAYER";
         _stage = param1;
         _stage.addEventListener(MouseEvent.CLICK,onGlobalClick);
         _stage.addEventListener(MouseEvent.MOUSE_OUT,onGlobalOut);
         _stage.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
         _stage.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
         _stage.addEventListener(MouseEvent.MOUSE_MOVE,onMouseOver);
         _updateGroup = UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200);
         _updateGroup.addFunction(onTimer);
      }
      
      private static function onGlobalClick(param1:MouseEvent) : void
      {
         onGlobalOut(null);
      }
      
      private static function onGlobalOut(param1:MouseEvent) : void
      {
         clearTimeout(_tipTimeout);
         GameSwf.globalDispatcher.dispatchEvent(new TipEvent(TipEvent.DESTROY));
         GameSwf.globalDispatcher.dispatchEvent(new TipEvent(TipEvent.DESTROY_INFOTIP));
         if(_currentTooltip != null && _currentTooltip.isActive() == false)
         {
            _currentTooltip.deactivate();
         }
      }
      
      private static function onMouseDown(param1:MouseEvent) : void
      {
      }
      
      private static function onMouseUp(param1:MouseEvent) : void
      {
      }
      
      private static function onMouseOver(param1:MouseEvent) : void
      {
         var _loc2_:Object = param1.target;
         var _loc3_:int = int(param1.currentTarget.mouseX);
         var _loc4_:int = int(param1.currentTarget.mouseY);
         clearTimeout(_tipTimeout);
         GameSwf.globalDispatcher.dispatchEvent(new TipEvent(TipEvent.DESTROY));
         GameSwf.globalDispatcher.dispatchEvent(new TipEvent(TipEvent.DESTROY_INFOTIP));
         addToolTip(_loc2_ as DisplayObject,true);
      }
      
      private static function addToolTip(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc3_:Point = null;
         if(_currentTooltipObject != param1)
         {
            if(isTooltipTarget(param1))
            {
               if(param2)
               {
                  if(param1 is ITooltipTargetWithAlpha == false || TransparentClickUtil.isHitOnObject(DisplayObject(param1)))
                  {
                     createToolTip(param1);
                  }
                  else if(!TransparentClickUtil.doOtherInteractiveObjects(param1 as DisplayObject,isTooltipTarget,checkCurrentWithFinded,addToolTip))
                  {
                     if(_currentTooltip != null)
                     {
                        _currentTooltip.deactivate();
                     }
                     Sprite(param1).buttonMode = false;
                  }
               }
               else
               {
                  createToolTip(param1);
               }
            }
            else
            {
               removeCurrentToolTip();
            }
         }
         else if(param1 is IToolTipTarget)
         {
            _loc3_ = IToolTipTarget(param1).getTooltipGlobalPosition();
            if(_loc3_ == null)
            {
               _loc3_ = TOOLTIP_LAYER.globalToLocal(new Point(_stage.mouseX + MOUSE_FOLLOW_TOOLTIP_OFFSET_X,_stage.mouseY + MOUSE_FOLLOW_TOOLTIP_OFFSET_Y));
               calcPosition(_currentTooltip,_loc3_);
            }
         }
      }
      
      private static function createToolTip(param1:DisplayObject) : void
      {
         var _loc2_:IToolTipTarget = null;
         var _loc3_:IToolTip = null;
         var _loc4_:Point = null;
         if(_currentTooltipObject != param1)
         {
            _loc2_ = IToolTipTarget(param1);
            if(_loc2_.getTooltipType() != null)
            {
               _loc3_ = getTooltipByType(_loc2_.getTooltipType());
               activate(_loc3_,_loc2_);
               _loc3_.config(_loc2_.getTooltipConfig());
               _loc4_ = _loc2_.getTooltipGlobalPosition();
               if(_loc4_ == null)
               {
                  _loc4_ = TOOLTIP_LAYER.globalToLocal(new Point(_stage.mouseX + MOUSE_FOLLOW_TOOLTIP_OFFSET_X,_stage.mouseY + MOUSE_FOLLOW_TOOLTIP_OFFSET_Y));
               }
               else
               {
                  _loc4_ = TOOLTIP_LAYER.globalToLocal(_loc4_);
               }
               calcPosition(_loc3_,_loc4_);
            }
         }
      }
      
      private static function calcPosition(param1:IToolTip, param2:Point) : void
      {
         param1.x = param2.x + 2;
         param1.y = param2.y;
         var _loc3_:int = Sprite(param1) != null ? int(Sprite(param1).height + 2) : 0;
         var _loc4_:int = Sprite(param1) != null ? int(Sprite(param1).width + 2) : 0;
         if(param2.y > Config.SCREEN_HEIGHT - _loc3_)
         {
            param1.y = Config.SCREEN_HEIGHT - _loc3_;
            param1.x = param2.x + 7;
         }
         if(param2.x > Config.SCREEN_WIDTH - _loc4_)
         {
            param1.x = param2.x - _loc4_ - 12;
         }
      }
      
      public static function removeCurrentToolTip() : void
      {
         if(_currentTooltip != null)
         {
            _currentTooltip.deactivate();
         }
      }
      
      private static function isTooltipTarget(param1:DisplayObject) : Boolean
      {
         return param1 is IToolTipTarget;
      }
      
      private static function checkCurrentWithFinded(param1:DisplayObject) : Boolean
      {
         return param1 == _currentTooltip;
      }
      
      private static function getTooltipByType(param1:TooltipType) : IToolTip
      {
         if(_tooltipCache[param1] == null)
         {
            _tooltipCache[param1] = new param1.tooltipClass();
         }
         return _tooltipCache[param1];
      }
      
      private static function activate(param1:IToolTip, param2:Object) : void
      {
         if(_currentTooltipObject != param2)
         {
            if(_currentTooltip != null)
            {
               deactivateTooltip(_currentTooltip);
            }
            _lastTooltipShowUpdaterCount = getTimer();
            _currentTooltip = param1;
            _currentTooltipObject = param2;
         }
      }
      
      private static function onTimer(param1:uint, param2:uint) : void
      {
         if(_updateGroup.currentCount % 2 == 0)
         {
            if(_currentTooltip != null)
            {
               if(_currentTooltip is UpdatedTooltip)
               {
                  _currentTooltip.config(_currentTooltipObject.getTooltipConfig());
               }
               if(_currentTooltip.isActive())
               {
                  _currentTooltip.update();
               }
            }
         }
         inspectTooltipForShow();
      }
      
      public static function deactivateTooltip(param1:IToolTip) : void
      {
         if(DisplayObject(param1).parent != null)
         {
            DisplayObject(param1).parent.removeChild(DisplayObject(param1));
         }
         if(_currentTooltip == param1)
         {
            _currentTooltipObject = null;
            _currentTooltip = null;
            _lastTooltipShowUpdaterCount = int.MAX_VALUE;
         }
      }
      
      private static function inspectTooltipForShow() : void
      {
         if(getTimer() - _lastTooltipShowUpdaterCount > TOOLTIP_SHOW_DELAY)
         {
            _lastTooltipShowUpdaterCount = int.MAX_VALUE;
            if(_currentTooltip != null)
            {
               _currentTooltip.activate();
               TOOLTIP_LAYER.addChild(DisplayObject(_currentTooltip));
            }
         }
      }
   }
}

