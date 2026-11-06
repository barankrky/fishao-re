package com.ax3.fishao.locations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class _93801b1eb0ddeaa9f8a99f9f extends _a5e6911f85306c220b8b5d78
   {
      
      public var activated:Boolean = false;
      
      private var _f4e70f4dda9a48e0bfd78fcd:MovieClip;
      
      private var _6c33fa73c68c9c5a60a663d4:Boolean = false;
      
      public var activatedBySomebody:Boolean = false;
      
      public function _93801b1eb0ddeaa9f8a99f9f()
      {
         super();
      }
      
      public function processButton(param1:DisplayObject) : void
      {
         id = _a5e6911f85306c220b8b5d78._0f3dc57f03793beb3b7ce5aa(param1.name);
         this._f4e70f4dda9a48e0bfd78fcd = MovieClip(param1);
         this._f4e70f4dda9a48e0bfd78fcd.stop();
         this._f4e70f4dda9a48e0bfd78fcd.gotoAndStop(0x2106EC41 ^ 0x030A6D60 ^ 0x1219185E ^ 0x3015997E);
      }
      
      public function update() : void
      {
         if(this._f4e70f4dda9a48e0bfd78fcd != null && this._6c33fa73c68c9c5a60a663d4 != this.activated)
         {
            this._6c33fa73c68c9c5a60a663d4 = this.activated;
            if(this._6c33fa73c68c9c5a60a663d4)
            {
               TweenCube.destroyTweensOf(this,false);
               TweenCube.to(this,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捈挐握掩捍揕揌挬揿挢挰挈挺提捶捺掆掓揸捯挐捹捸挧","掛揋挸掴挝揥描排掌掳揄授挮捵捹捘"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掺捏掅掉揃揺掳掗捥捳挶捃揘揟描捦掿揗","掆掤掝捨捘揨掁掏揣挭捽捄揂揸捙揺")):this._f4e70f4dda9a48e0bfd78fcd.totalFrames},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၷႌၐဍဃႦၭာၖ႟წၨၞ္რႯ","အ჈ႽოၢႰ႙၀ჲႄၖႈჀ၅ၔო")):0x4F876382 ^ -1088490830 ^ -1477429636 ^ 0x5769A74C});
            }
            else
            {
               TweenCube.destroyTweensOf(this,false);
               this._f4e70f4dda9a48e0bfd78fcd.gotoAndStop(0x11D9682C ^ 0x0791BABD ^ 0x7D047283 ^ 0x6B4CA013);
            }
         }
      }
      
      public function set frame(param1:int) : void
      {
         this._f4e70f4dda9a48e0bfd78fcd.gotoAndStop(param1);
      }
      
      public function get frame() : int
      {
         return this._f4e70f4dda9a48e0bfd78fcd.currentFrame;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         TweenCube.destroyTweensOf(this,false);
         this._f4e70f4dda9a48e0bfd78fcd = null;
      }
   }
}

