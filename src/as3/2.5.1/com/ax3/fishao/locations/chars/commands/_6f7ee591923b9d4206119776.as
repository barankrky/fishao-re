package com.ax3.fishao.locations.chars.commands
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   
   public class _6f7ee591923b9d4206119776 implements _3ba073024ca466d13112f68e
   {
      
      private var _e40a78144f9fc802de49b30b:_08c120b706560fce9302bcab;
      
      public function _6f7ee591923b9d4206119776(param1:_08c120b706560fce9302bcab)
      {
         super();
         this._e40a78144f9fc802de49b30b = param1;
      }
      
      public function execute() : void
      {
         var _loc1_:int = 0x3228C97B ^ -1015207158 ^ -86848649 ^ -240964448;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x45A89C97 ^ -991719875 ^ -235245958 ^ -1969915529))
            {
               case 0:
                  return;
               case 1:
                  if(this._e40a78144f9fc802de49b30b != null)
                  {
                     _loc1_ = -262978836 ^ 0x372D7407 ^ -1175112260 ^ -2068904206;
                  }
                  else
                  {
                     _loc1_ = -250983673 ^ 0x5340F3BC ^ -1844636219 ^ -899438375;
                  }
                  break;
               case 2:
                  this._e40a78144f9fc802de49b30b.bite();
                  _loc1_ = 0x6349AAEA ^ -1066519363 ^ 0x59A5345D ^ 0xA6AFAD;
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
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掸揽指捸揦揻掟捔捺掸揄掂揈挲挋掑捾掱捲揘掽揶揀掸挔挂掯揯揁掑掣掹揋捽揤掽揎挑捋挀揇挙捺挃揋捐揺挣","揔揫挈捿挽损挘捾掝掛揢揭捘捾捽捧");
      }
      
      public function destroy() : void
      {
         this._e40a78144f9fc802de49b30b = null;
      }
   }
}

