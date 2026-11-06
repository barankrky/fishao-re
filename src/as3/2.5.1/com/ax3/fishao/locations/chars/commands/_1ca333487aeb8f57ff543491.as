package com.ax3.fishao.locations.chars.commands
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import flash.utils.getTimer;
   
   public class _1ca333487aeb8f57ff543491 implements _3ba073024ca466d13112f68e
   {
      
      private var _72cef4a77ab58b66af5ff4e6:_08c120b706560fce9302bcab;
      
      private var _4039b5101b9f55aa09e16014:int = 0;
      
      private var _68f588b56b8d879abbe439a0:int = 0;
      
      private var _524def473d793838b7df0ab8:String = "";
      
      public function _1ca333487aeb8f57ff543491(param1:_08c120b706560fce9302bcab)
      {
         super();
         this._4039b5101b9f55aa09e16014 = getTimer();
         this._72cef4a77ab58b66af5ff4e6 = param1;
         if(param1 != null && param1.locationUser != null)
         {
            this._524def473d793838b7df0ab8 = param1.locationUser.username;
         }
      }
      
      public function execute() : void
      {
         var _loc1_:int = 0x1311B97B ^ 0x30CE760C ^ 0x6B077E1A ^ 0x69BED46C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x16239ECF ^ 0x505BCAF9 ^ -816960290 ^ -1471144472))
            {
               case 0:
                  return;
               case 1:
                  this._68f588b56b8d879abbe439a0 = getTimer();
                  if(this._72cef4a77ab58b66af5ff4e6 != null)
                  {
                     _loc1_ = -1421018956 ^ 0x6334BFB3 ^ -500933245 ^ 0x0B3A7F86;
                  }
                  else
                  {
                     _loc1_ = -219934300 ^ -606056408 ^ 0x63F079F0 ^ 0x6B925D7C;
                  }
                  break;
               case 2:
                  this._72cef4a77ab58b66af5ff4e6.reelIn();
                  this._72cef4a77ab58b66af5ff4e6._ea52ddaca1a080cc2518c8da();
                  this._72cef4a77ab58b66af5ff4e6.graphic.alpha = 0x523546D6 ^ -2065405602 ^ 0x6223D51D ^ -1259144556;
                  _loc1_ = -1029240801 ^ -98967928 ^ -871731463 ^ -707601042;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ce2e77815ef99a99d836c418(param1:_3ba073024ca466d13112f68e) : Boolean
      {
         return false;
      }
      
      public function isComplete() : Boolean
      {
         return true;
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挂捌捣捪掮掱挑揄捉揖捙挨挺掗挐掗捗揦揆挑挚掯捤揓捸揨挮掷挃揕掰挧揼揇捦捅捡採掵捆掲挝揭挺揽揷掵挟按捛","揋掫推挨捷挙揻挐捳掷捠捠握挔掁揁") + this._524def473d793838b7df0ab8 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴧဝဇႄ჊ၗႵႀა႕","ძცၿဥၫႷ႟Ⴞ႘။჻ჱယၗიႋ");
      }
      
      public function destroy() : void
      {
         this._72cef4a77ab58b66af5ff4e6 = null;
      }
   }
}

