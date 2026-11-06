package com.ax3.fishao.locations.chars.commands
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.model._7bb8d3d114b19d346fd9eff2;
   
   public class _b03601562e400e8ab155eadc implements _3ba073024ca466d13112f68e
   {
      
      private var x:int;
      
      private var y:int;
      
      private var r:int = -1;
      
      private var _ea6f345e1233a33ea7d7eaf7:_08c120b706560fce9302bcab;
      
      private var _b4468d115c9710f871a8257f:Boolean = false;
      
      public function _b03601562e400e8ab155eadc(param1:_08c120b706560fce9302bcab, param2:int, param3:int)
      {
         super();
         this._ea6f345e1233a33ea7d7eaf7 = param1;
         this.x = param2;
         this.y = param3;
      }
      
      public function execute() : void
      {
         var _loc1_:int = 0x62A3DA63 ^ -1610480777 ^ -1185869283 ^ -302296827;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x46408505 ^ 0x43A8EC49 ^ 0x7296C64A ^ -512412408))
            {
               case 0:
                  this._b4468d115c9710f871a8257f = true;
                  _loc1_ = -830353467 ^ -131483783 ^ -515603128 ^ 0x41E767FB;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._ea6f345e1233a33ea7d7eaf7 != null)
                  {
                     _loc1_ = 0x76BDDD51 ^ 0x66EC5959 ^ 0x1875593B ^ -1641068738;
                  }
                  else
                  {
                     _loc1_ = -1234503282 ^ -2025184024 ^ -2076313678 ^ 0x2316B0DA;
                  }
                  break;
               case 3:
                  this._ea6f345e1233a33ea7d7eaf7.isMovingToRaft = true;
                  this._ea6f345e1233a33ea7d7eaf7._ea52ddaca1a080cc2518c8da();
                  this._ea6f345e1233a33ea7d7eaf7.graphic.alpha = 0x5E410BCC ^ 0x11906C46 ^ -2114295133 ^ -836039384;
                  this._ea6f345e1233a33ea7d7eaf7._d920697e2d07908f09509e8e(this.x,this.y,this._5e0042e01082c91ce447b631);
                  this._b4468d115c9710f871a8257f = false;
                  _loc1_ = -451717724 ^ 0x9B0DF3 ^ 0x3F6905B6 ^ 0x4CEAC7EE;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _5e0042e01082c91ce447b631() : void
      {
         this._ea6f345e1233a33ea7d7eaf7.isMovingToRaft = false;
         this._ea6f345e1233a33ea7d7eaf7.onRaft = false;
         this._b4468d115c9710f871a8257f = true;
      }
      
      public function _ce2e77815ef99a99d836c418(param1:_3ba073024ca466d13112f68e) : Boolean
      {
         return !(param1 is _e68f996348ecbfe6433d3aca) && !(param1 is _7bb8d3d114b19d346fd9eff2);
      }
      
      public function isComplete() : Boolean
      {
         return this._b4468d115c9710f871a8257f;
      }
      
      public function toString() : String
      {
         return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勒勇剾剡剣刳勁刞剋刹刎別勃剔勧剠剚刨剟勻剽刂勧勹剌劈剖劐刺劏到劷勢劤剎刔剒劀刏剄刜動劮勽剪勪","劐剎勩剈劚切勨剘刁刵刘刿勦勲剱勪") + this.x + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捖捀捲揊揔掯挗掲捓掗揘挏捀揘","授挨掾捦挊挬掯挸揑掝揊採揠掗揀掼") + this.y + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞揤揁揷捷挸掋掄据掅","掲捙挨挩掆挍挮掹探捤揞掚捲掐损揠");
      }
      
      public function destroy() : void
      {
         this._ea6f345e1233a33ea7d7eaf7 = null;
      }
   }
}

