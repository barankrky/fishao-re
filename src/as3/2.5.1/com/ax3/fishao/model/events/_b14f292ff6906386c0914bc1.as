package com.ax3.fishao.model.events
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.events.Event;
   
   public class _b14f292ff6906386c0914bc1 extends Event
   {
      
      public static const RESIZE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙挹捇振掿捍捹掔揎揇掳捛掩挩挛换掳揁揔揝","掊捘捵揮捰掭挜換捽授掀挫掑指捫挞");
      
      public static const SELECT:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီၞე჋်ၯ჉ბ჋ၕၙခႥၑ႞ၼုအგ႐","၉ာႫ႞ჩႋ၌ူက჆ႇც၍ဩ჈ၶ");
      
      public static const SHOW_POPUP:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("့Ⴒდ၌ဋၺႵဘၘႺၫှႰၸဋႄဵးၴ႔჎აဧႊ၎ဪ","ბၩႪဪႱჼႱႡြႅჺႩၶ჌ჹဵ");
      
      public static const HIDE_POPUP:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刞劌劧剗剴刿劇刡勿剢劀努刯募刂剻剃勇务勰勅利劧刎劘勹","剖労劬刟刟刑剒劝勉切劍刉劔劝則刏");
      
      private var _7f3e7947446d34352bc8bd4c:Object;
      
      public function _b14f292ff6906386c0914bc1(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._7f3e7947446d34352bc8bd4c = param2;
      }
      
      public function get data() : Object
      {
         return this._7f3e7947446d34352bc8bd4c;
      }
      
      override public function clone() : Event
      {
         return new _b14f292ff6906386c0914bc1(type,this.data,bubbles,cancelable);
      }
   }
}

