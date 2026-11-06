package com.ax3.fishao.locations.chars.commands
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.model._7bb8d3d114b19d346fd9eff2;
   
   public class _e68f996348ecbfe6433d3aca implements _3ba073024ca466d13112f68e
   {
      
      private var x:int;
      
      private var y:int;
      
      private var r:int = -1;
      
      private var _b711ab2a26c099dc607725a4:_08c120b706560fce9302bcab;
      
      private var _7b0b284a3b808e8cd68300c1:Boolean = false;
      
      public function _e68f996348ecbfe6433d3aca(param1:_08c120b706560fce9302bcab, param2:int, param3:int)
      {
         super();
         this._b711ab2a26c099dc607725a4 = param1;
         this.x = param2;
         this.y = param3;
      }
      
      public function execute() : void
      {
         var _loc1_:int = -281537963 ^ -718208517 ^ 0x789CAF8F ^ 0x3817945C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-609809869 ^ -381336687 ^ -389863817 ^ -1599912024))
            {
               case 0:
                  if(this._b711ab2a26c099dc607725a4 != null)
                  {
                     _loc1_ = -1756778997 ^ -423446890 ^ -250671782 ^ -100254279;
                  }
                  else
                  {
                     _loc1_ = -1154487172 ^ 0x609260A0 ^ 0x634B54FB ^ -1032523685;
                  }
                  break;
               case 1:
                  this._7b0b284a3b808e8cd68300c1 = true;
                  _loc1_ = -1094313804 ^ -920084608 ^ 0x538554B3 ^ 0x5EE9FBF8;
                  break;
               case 2:
                  return;
               case 3:
                  this._b711ab2a26c099dc607725a4.onRaft = false;
                  this._b711ab2a26c099dc607725a4._ea52ddaca1a080cc2518c8da();
                  this._b711ab2a26c099dc607725a4.graphic.alpha = 0x2A97E371 ^ -1067085145 ^ -884408686 ^ 0x21BA8F45;
                  this._b711ab2a26c099dc607725a4._d920697e2d07908f09509e8e(this.x,this.y,this._79310dc19f71a08f1870208b);
                  this._7b0b284a3b808e8cd68300c1 = false;
                  _loc1_ = -984109454 ^ -1258772648 ^ 0x1AD1FB31 ^ 0x11FCDA64;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _79310dc19f71a08f1870208b() : void
      {
         this._7b0b284a3b808e8cd68300c1 = true;
      }
      
      public function _ce2e77815ef99a99d836c418(param1:_3ba073024ca466d13112f68e) : Boolean
      {
         return !(param1 is _e68f996348ecbfe6433d3aca) && !(param1 is _7bb8d3d114b19d346fd9eff2);
      }
      
      public function isComplete() : Boolean
      {
         return this._7b0b284a3b808e8cd68300c1;
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挆捌捯掜挙挎挣掟挋挢揆揁捝挛捗捃捔捶掗掑捈捄揷揟挣揽振揩掷掗捝揌捤掐揆揌揁揫挥揽挆挸援掗挗捿","掝捖掷揬揼揶揭挶挴捩揼按揬挑振揼") + this.x + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勇勈劘勣劥劐勆剬劽劼功刷前劇","劋勮勊勴勩勵勵勍劷勰刏勇勚勄刮勎") + this.y + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔勀剡劘勩助功分刚勉","别勬剈刔势刓勁剈剀剐剴刂剃刵勃務");
      }
      
      public function destroy() : void
      {
         this._b711ab2a26c099dc607725a4 = null;
      }
   }
}

