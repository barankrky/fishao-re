package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import flash.events.EventDispatcher;
   
   public class _aa46d9061fb6637c5f30405a extends EventDispatcher
   {
      
      private var _3d45ed3322bcaaf418c19603:* = null;
      
      private var _e63d314fea8e77544f773312:int = 0;
      
      public function _aa46d9061fb6637c5f30405a(param1:* = null)
      {
         super();
         this._3d45ed3322bcaaf418c19603 = param1;
      }
      
      public function set value(param1:*) : void
      {
         if(this._3d45ed3322bcaaf418c19603 == param1)
         {
            return;
         }
         var _loc2_:_720429110fd3cfc01812b5a0 = new _720429110fd3cfc01812b5a0(null,param1,this._3d45ed3322bcaaf418c19603);
         this._3d45ed3322bcaaf418c19603 = param1;
         dispatchEvent(_loc2_);
      }
      
      public function get value() : *
      {
         return this._3d45ed3322bcaaf418c19603;
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0x7BB351F5 ^ -1980570499 ^ 0x4509987D ^ 0x02A06FA0;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x356A1EBC ^ 0x32E97005 ^ -2043525465 ^ 0x34596A4B))
            {
               case 0:
                  if(this._e63d314fea8e77544f773312 != (0x02C86D43 ^ 0x656D8772 ^ 0x18A02E19 ^ 0x7F05C428))
                  {
                     _loc1_ = -1680150967 ^ 0x6BF60E15 ^ -1697779402 ^ -553036994;
                  }
                  else
                  {
                     _loc1_ = -2105247910 ^ 0x01CF5CE9 ^ -144763496 ^ -1040417668;
                  }
                  break;
               case 1:
                  throw new Error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挧揎揽揌捽掘揦捳掺捡挷掜换提援捺掺揳捁捍捴掾揇揌援掼掻换掻揣挪掯揁揾揪捚挵揘挃揖掙掕揿挽捣捂挀掊捳捾捭挴挡排揶捫捗挽揂揱掙捃挣掞挡掤按据挮挩捘掼採揰揈揥握挼","插掇掵捎掟掉揻揱挆揾挆揿挣挲捽捓"));
               case 2:
                  this._3d45ed3322bcaaf418c19603 = null;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         ++this._e63d314fea8e77544f773312;
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         --this._e63d314fea8e77544f773312;
         super.removeEventListener(param1,param2,param3);
      }
   }
}

