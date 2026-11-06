package com.ax3.fishao.tutorial.common.common_a
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   
   public class _4f4b5b90e2102a8adf6cbf43 extends _1a54f8091342efeb9a2e5164
   {
      
      public function _4f4b5b90e2102a8adf6cbf43()
      {
         super();
      }
      
      override public function get canChatWithPlayers() : Boolean
      {
         return false;
      }
      
      override protected function _a9109a0eedff739434cf5be6() : void
      {
         _f71a55993e5581ea015bde16(_stepUserStats);
      }
      
      override protected function _4587e896294c8cf4f078874a() : void
      {
         var _temp_2:* = this.gui;
         var _temp_1:* = 0x344EC412 ^ -1989215960 ^ -1777012819 ^ 0x2B34D297;
         _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         _f71a55993e5581ea015bde16(_stepFindSam);
      }
      
      override protected function _5c347edb17bc0b5110bf441b() : void
      {
         super._5c347edb17bc0b5110bf441b();
         _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(_stepsForResume,_stepShowProfile);
         _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(_stepsForResume,_stepChatWithUsers);
      }
   }
}

