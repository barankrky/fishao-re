package com.ax3
{
   import com.ax3.events.FatalErrorEvent;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.utils.StaticCharacterViewMethods;
   import com.ax3.net.BinaryLoaderRepeatable;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class AnimatedCharacterLoader extends EventDispatcher
   {
      
      private var _loader:BinaryLoaderRepeatable;
      
      private var _female:MovieClip;
      
      private var _tmpContainer:MovieClip;
      
      private var _male:MovieClip;
      
      private var _isLoaded:Boolean = false;
      
      private var _isLoading:Boolean = false;
      
      public function AnimatedCharacterLoader(param1:String)
      {
         super();
         this._loader = new BinaryLoaderRepeatable(3);
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         this._loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this._isLoading = true;
         this._loader.load(new URLRequest(param1),new LoaderContext(false,ApplicationDomain.currentDomain));
      }
      
      public function get progress() : Number
      {
         return this._loader.isLoaded() ? 1 : (this._loader.bytesTotal > 0 ? this._loader.bytesLoaded / this._loader.bytesTotal : 0);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         this._isLoading = false;
         GameSwf.globalDispatcher.dispatchEvent(new FatalErrorEvent(FatalErrorEvent.ASSET_LOAD_ERROR,"IO Error loading character asset: " + param1.text + " (" + this._loader?.url + ")"));
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         this._isLoading = false;
         GameSwf.globalDispatcher.dispatchEvent(new FatalErrorEvent(FatalErrorEvent.ASSET_LOAD_ERROR,"SecurityError loading character asset: " + param1.text + " (" + this._loader?.url + ")"));
      }
      
      private function onComplete(param1:Event) : void
      {
         this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         this._loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         var _loc2_:MovieClip = MovieClip(param1.currentTarget.content);
         this._male = MovieClip(_loc2_.getChildByName("male"));
         this._female = MovieClip(_loc2_.getChildByName("female"));
         this._isLoading = false;
         this._isLoaded = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function getBitmapDataByCharacterConfig(param1:CharViewConfig) : BitmapData
      {
         if(this._isLoaded == false)
         {
            throw new Error("Character not loaded");
         }
         if(param1.body.type == 1)
         {
            this._tmpContainer = this._male;
         }
         else
         {
            this._tmpContainer = this._female;
         }
         StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.BODY_NAME,param1.body.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.HAT_NAME,param1.hat.type),0,param1.hat.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.SHOES_NAME,param1.shoes.type),0,param1.shoes.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.SUIT_NAME,param1.suit.type),0,param1.suit.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.HAIR_NAME,param1.hair.type),0,param1.hair.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.ICON_NAME,param1.icon.type),0,param1.icon.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.UPPER_CLOTHES_NAME,param1.upperClothes.type),0,param1.upperClothes.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._tmpContainer,CharViewConfig.LOWER_CLOTHES_NAME,param1.lowerClothes.type),0,param1.lowerClothes.color);
         var _loc2_:BitmapData = new BitmapData(400,240,true,0);
         if(this._tmpContainer != null)
         {
            _loc2_.draw(this._tmpContainer);
         }
         this._tmpContainer = null;
         return _loc2_;
      }
      
      public function get isLoaded() : Boolean
      {
         return this._isLoaded;
      }
      
      public function get isLoading() : Boolean
      {
         return this._isLoading;
      }
   }
}

