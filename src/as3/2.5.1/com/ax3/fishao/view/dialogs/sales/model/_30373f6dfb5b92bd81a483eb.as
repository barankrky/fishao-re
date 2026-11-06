package com.ax3.fishao.view.dialogs.sales.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   
   public class _30373f6dfb5b92bd81a483eb
   {
      
      private var _73e48e5a0d5ac557ccfef9eb:int;
      
      private var _2dd0ba172ccee8c4d80fc400:String;
      
      private var _21eff9c6107d64567821849c:String;
      
      private var _9d55b70019341cf63dcd83bb:String;
      
      private var _c7168dde8404ff03cab95c97:Boolean;
      
      public function _30373f6dfb5b92bd81a483eb()
      {
         super();
         this._c7168dde8404ff03cab95c97 = false;
      }
      
      public function get id() : int
      {
         return this._73e48e5a0d5ac557ccfef9eb;
      }
      
      public function get type() : String
      {
         return this._2dd0ba172ccee8c4d80fc400;
      }
      
      public function get iconUrl() : String
      {
         return this._9d55b70019341cf63dcd83bb;
      }
      
      public function set isShown(param1:Boolean) : void
      {
         this._c7168dde8404ff03cab95c97 = param1;
      }
      
      public function get isShown() : Boolean
      {
         return this._c7168dde8404ff03cab95c97;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._73e48e5a0d5ac557ccfef9eb = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掬掰挜捻揰捡掞揃揧捶掦掬","捺挃掵揹捊挲揻挅捶挠挽掠掺揻掚揀"));
         this._2dd0ba172ccee8c4d80fc400 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剚则割刏努勱刨勺割勜剋勃剹剦利剗","勅刲勏刨募勺剋劌勰勫利劬勣剚劉勿"));
         this._21eff9c6107d64567821849c = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勹劏刡別劆勶勫剒刹創刷勐剐勳剻劉勦刣分割劦勹勩剛劎勖","剟剧劂別勷劧剶刎勳勁劈剺剓劵勪劑"));
         this._9d55b70019341cf63dcd83bb = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挤捲措揺挽掵捇捛捖捔按振据提捒挌捎挵挿捝","揪捸掵揳挘掀揭掍挵挅揁揦揔捱捴挨") + this._21eff9c6107d64567821849c);
      }
      
      public function start() : void
      {
      }
      
      public function end() : void
      {
      }
   }
}

