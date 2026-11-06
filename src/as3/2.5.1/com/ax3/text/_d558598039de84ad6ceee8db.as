package com.ax3.text
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class _d558598039de84ad6ceee8db extends TextField
   {
      
      private var _b3f8b96e6a177a2e91a75f23:Number = 50;
      
      private var _a1f4578f9e97d72f04dd84f5:uint = 10;
      
      private var _45c5d37a63573f2aca625158:TextFormat;
      
      private var _3a64225ddb3e2842a47eb999:Boolean = true;
      
      public var curFontSize:int;
      
      private var _c40f61222b2bf2e5db8659be:String = "center";
      
      public function _d558598039de84ad6ceee8db(param1:Boolean = false, param2:String = "center")
      {
         this._3a64225ddb3e2842a47eb999 = param1;
         this._c40f61222b2bf2e5db8659be = param2;
         super();
      }
      
      override public function set text(param1:String) : void
      {
         super.text = param1;
         var _loc2_:TextFormat = super.defaultTextFormat;
         _loc2_.size = this._a1f4578f9e97d72f04dd84f5;
         this.curFontSize = int(_loc2_.size);
         super.defaultTextFormat = _loc2_;
         super.setTextFormat(defaultTextFormat);
         this._00108a6df260af22a51fe633();
      }
      
      protected function _00108a6df260af22a51fe633() : void
      {
         var _loc1_:String = null;
         if(textWidth > this._b3f8b96e6a177a2e91a75f23)
         {
            if(super.text.indexOf(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揑掖揪捆掬掺揄掬挚捡","揚捥捏挶捯掩揉挅揩捫捕捏捀捸挂揍")) == (0x28EBE29F ^ -738581741 ^ 0x0A4A1E80 ^ 0x0EA420F3) || !this._3a64225ddb3e2842a47eb999)
            {
               this._45c5d37a63573f2aca625158 = super.defaultTextFormat;
               this._45c5d37a63573f2aca625158.size = uint(this._45c5d37a63573f2aca625158.size) - 1;
               this.curFontSize = int(this._45c5d37a63573f2aca625158.size);
               super.defaultTextFormat = this._45c5d37a63573f2aca625158;
               super.setTextFormat(this._45c5d37a63573f2aca625158);
               autoSize = TextFieldAutoSize.LEFT;
               this._00108a6df260af22a51fe633();
            }
            else if(this._3a64225ddb3e2842a47eb999)
            {
               _loc1_ = super.text.replace(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵掗揘挝捘揓捓捻掋挢","掘掊採描挴掴掣揤揫揭捐掠挏捁掾掍"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剤剄剈勢募劍勒刮剬创","劣剗剑刪劼剌剬創勉劺刚勷刊刁别刉"));
               super.text = _loc1_;
               this._00108a6df260af22a51fe633();
            }
         }
         else
         {
            width = this._b3f8b96e6a177a2e91a75f23;
            autoSize = this._c40f61222b2bf2e5db8659be;
         }
      }
      
      override public function set defaultTextFormat(param1:TextFormat) : void
      {
         super.defaultTextFormat = param1;
         this._a1f4578f9e97d72f04dd84f5 = uint(param1.size);
      }
      
      public function set widthNeed(param1:Number) : void
      {
         this._b3f8b96e6a177a2e91a75f23 = param1;
      }
      
      override public function setTextFormat(param1:TextFormat, param2:int = -1, param3:int = -1) : void
      {
         super.setTextFormat(param1,param2,param3);
         this._a1f4578f9e97d72f04dd84f5 = uint(param1.size);
         this.curFontSize = int(param1.size);
      }
   }
}

