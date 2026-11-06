package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import flash.events.Event;
   
   public class _1c5bb71733a87b9f41a9aeb5 extends _03100b485ccd2264fe0ad493
   {
      
      public static const BREEDER_DIALOG_CLOSED:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捳揢揑掵捲掗揌捋揶揄掤描揃掓揢揣掘揤揦掘捇挻挗掯挟挳挫揌掤揫授捵捭揲揺捡揱挲掲捷捙揼接掐揝捋挮捕掳掎","揄挞挅捭掌捥採捬揰挎捜揗捺握捽揣");
      
      public function _1c5bb71733a87b9f41a9aeb5()
      {
         super();
      }
      
      override public function close() : void
      {
         super.close();
         dispatchEvent(new Event(BREEDER_DIALOG_CLOSED));
      }
   }
}

