package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _2d53a7ea885b00e1a3b58018 extends Sprite implements _9eacfd4ff26a9d83bb66df5f, IAssetWrapper
   {
      
      protected var _asset:DisplayObjectContainer;
      
      protected var _label:TextField;
      
      protected var _bg:MovieClip;
      
      private var _e7c8c72129cc2ab4ed04cf9e:Function;
      
      private var _0a13065a70e68d95e1b793a1:int;
      
      public function _2d53a7ea885b00e1a3b58018()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         addChild(this._asset);
         this._label = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挰捺掮捓挈掏掔挾挣挗挪掾挘揘揔揇握捐","挔掌挰换掩据揱掰排換揳揲揁揝挼捺")) as TextField;
         buttonMode = true;
         mouseChildren = false;
         this._bg = (this._asset as DisplayObjectContainer).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描揞揓揠挢挗挥掣挧揙掲揚","揇掳揄掠援掮捆挹挖挥挽挣捄挜揓捲")) as MovieClip;
         (this._bg as MovieClip).gotoAndStop(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揶揤掔捫揤揉挪掬掮挔挰挨捩挒揜挲揜捘採挾","揊掰揜挓換揠捁掳挘挰掵揨捱挻揹揸"));
         addEventListener(MouseEvent.ROLL_OVER,this._6740d778abaf5649372c242c);
         addEventListener(MouseEvent.ROLL_OUT,this._6950e61b67e97fd0a388dc47);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onClick);
      }
      
      protected function _6740d778abaf5649372c242c(param1:MouseEvent) : void
      {
         (this._bg as MovieClip).gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴိვჀၱၿთ႖ြဨჸშ၁ဋჺႌ","စ၈၎ၝညჟლႺႂၾဖၼၓხჟၛ"));
      }
      
      protected function _6950e61b67e97fd0a388dc47(param1:MouseEvent) : void
      {
         (this._bg as MovieClip).gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劙刜劋制劔劄劾剴劘刀劚剹勚勋勵删勜助刡刅","刵勱勀剬劅劙効剦勯剅劼劜勩剒励劾"));
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         this._e7c8c72129cc2ab4ed04cf9e(param1);
      }
      
      public function set clickHandler(param1:Function) : void
      {
         this._e7c8c72129cc2ab4ed04cf9e = param1;
      }
      
      public function get displayValue() : String
      {
         return this._label.text;
      }
      
      public function set displayValue(param1:String) : void
      {
         this._label.text = param1;
      }
      
      public function set index(param1:int) : void
      {
         this._0a13065a70e68d95e1b793a1 = param1;
      }
      
      public function get index() : int
      {
         return this._0a13065a70e68d95e1b793a1;
      }
   }
}

