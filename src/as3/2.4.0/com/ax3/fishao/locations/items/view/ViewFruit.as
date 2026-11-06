package com.ax3.fishao.locations.items.view
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.MovieClip;
   
   public class ViewFruit extends ViewItem
   {
      
      public function ViewFruit(param1:IController, param2:int)
      {
         super(param1,getFruitSourceById(param2));
      }
      
      private static function getFruitSourceById(param1:int) : MovieClip
      {
         var _loc2_:MovieClip = null;
         switch(param1)
         {
            case 1:
               _loc2_ = new gViewBanana();
               break;
            case 2:
               _loc2_ = new gViewCoconut();
               break;
            case 3:
               _loc2_ = new gViewKiwi();
               break;
            case 4:
               _loc2_ = new gViewLemon();
               break;
            case 5:
               _loc2_ = new gViewMango();
               break;
            case 6:
               _loc2_ = new gViewOrange();
               break;
            case 7:
               _loc2_ = new gViewPapaya();
               break;
            case 8:
               _loc2_ = new gViewPineapple();
               break;
            case 9:
               _loc2_ = new gViewPitaya();
               break;
            default:
               Debug.assert(false,"Unsupported id on getFruitSourceById method of ViewFruit: " + param1);
         }
         return _loc2_;
      }
   }
}

