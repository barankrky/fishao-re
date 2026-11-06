package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import flash.geom.Point;
   
   public class _4321d2f9e1f062249cff5e0c
   {
      
      private var _eaeb4218b89bf24a6551e427:String;
      
      private var _8b4d5b28841a313458b95750:int;
      
      private var _5cbc7d58d64671548de2b7b7:Point;
      
      public function _4321d2f9e1f062249cff5e0c(param1:String)
      {
         super();
         this._eaeb4218b89bf24a6551e427 = param1;
      }
      
      public function get type() : String
      {
         return this._eaeb4218b89bf24a6551e427;
      }
      
      public function get locationId() : int
      {
         return this._8b4d5b28841a313458b95750;
      }
      
      public function get position() : Point
      {
         return this._5cbc7d58d64671548de2b7b7;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._8b4d5b28841a313458b95750 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勇劷勉刯剠剴劉剙剈努前劾功劳剩剟勺剋剤刌刨刲刕劁勱削剫勹剧剐","动劼剳动剐刎勹刚刈劉勼剤劀勣券勚"));
         this._5cbc7d58d64671548de2b7b7 = new Point();
         this._5cbc7d58d64671548de2b7b7.x = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捩捠挦捨揺捪揢握捯揠","捪掰挆指揝捩挬揢排掱控推掼挰揖捷"));
         this._5cbc7d58d64671548de2b7b7.y = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揕揧捒掅揜捚挺揄掝捡","揯揆据揅掇揪挺掎捩捩揮插推揃揮挵"));
      }
   }
}

