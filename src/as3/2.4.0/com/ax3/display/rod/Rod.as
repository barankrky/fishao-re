package com.ax3.display.rod
{
   import assets.common.BiteGoUnderWater;
   import assets.common.BiteWaterCircles;
   import assets.common.BiteWaterSplash;
   import com.ax3.display.LineStyle;
   import com.ax3.display.rope.Rope;
   import com.ax3.fishao.config.RodColorFilter;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.utils.ArrayUtils;
   import com.ax3.utils.BitmapUtil;
   import com.ax3.utils.IsoMath;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.math.randomRange;
   import com.ax3.utils.removeAllChildren;
   import com.inkora.easing.Bounce;
   import com.inkora.easing.Cubic;
   import com.inkora.plugins.BezierPlugin;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class Rod extends Sprite
   {
      
      public static const ROD_FADE_TIME_SEC:int = 1;
      
      private static const ropePositionMap:Object = JSON.parse("{\"rt\":{\"1\":{\"y\":-22.6,\"x\":46.35},\"2\":{\"y\":-22.6,\"x\":46.35},\"3\":{\"y\":-22.6,\"x\":46.35},\"4\":{\"y\":-22.6,\"x\":46.3},\"5\":{\"y\":-22.6,\"x\":46.3},\"6\":{\"y\":-22.6,\"x\":46.3},\"7\":{\"y\":-22.6,\"x\":46.25},\"8\":{\"y\":-22.6,\"x\":46.25},\"9\":{\"y\":-22.6,\"x\":46.2},\"10\":{\"y\":-22.6,\"x\":46.2},\"11\":{\"y\":-22.6,\"x\":46.2},\"12\":{\"y\":-22.6,\"x\":46.15},\"13\":{\"y\":-22.6,\"x\":46.15},\"14\":{\"y\":-22.6,\"x\":46.1},\"15\":{\"y\":-22.85,\"x\":46.05},\"16\":{\"y\":-24.65,\"x\":46.6},\"17\":{\"y\":-24.65,\"x\":46.4},\"18\":{\"y\":-24.7,\"x\":46.2},\"19\":{\"y\":-24.85,\"x\":46.2},\"20\":{\"y\":-25.05,\"x\":46.25},\"21\":{\"y\":-25.15,\"x\":46.25},\"22\":{\"y\":-20.95,\"x\":32.6},\"23\":{\"y\":-21.05,\"x\":32.7},\"24\":{\"y\":-17.15,\"x\":23.9},\"25\":{\"y\":-17.05,\"x\":24.05},\"26\":{\"y\":-24.2,\"x\":46.15},\"27\":{\"y\":-24.25,\"x\":46.1},\"28\":{\"y\":-17.8,\"x\":70.2},\"29\":{\"y\":-17.6,\"x\":70.05},\"30\":{\"y\":2.55,\"x\":81.55},\"31\":{\"y\":2.75,\"x\":81.3},\"32\":{\"y\":5.25,\"x\":81.55},\"33\":{\"y\":5.5,\"x\":81.6},\"34\":{\"y\":11.65,\"x\":83.7},\"35\":{\"y\":11.6,\"x\":83.45},\"36\":{\"y\":1.2,\"x\":80.15},\"37\":{\"y\":1.15,\"x\":80.1},\"38\":{\"y\":-20.25,\"x\":46.8},\"39\":{\"y\":-20.9,\"x\":47.35},\"40\":{\"y\":-21.85,\"x\":46.6},\"41\":{\"y\":-21.75,\"x\":46.65},\"42\":{\"y\":-19.2,\"x\":32.85},\"43\":{\"y\":-18.85,\"x\":32.95},\"44\":{\"y\":-15.4,\"x\":24.85},\"45\":{\"y\":-15.2,\"x\":25.1},\"46\":{\"y\":-18.55,\"x\":32.8},\"47\":{\"y\":-18.55,\"x\":32.9},\"48\":{\"y\":-21.8,\"x\":46.65},\"49\":{\"y\":-21.8,\"x\":46.65}},\"r\":{\"1\":{\"y\":-12.35,\"x\":49.25},\"2\":{\"y\":-12.35,\"x\":49.25},\"3\":{\"y\":-12.35,\"x\":49.25},\"4\":{\"y\":-12.35,\"x\":49.25},\"5\":{\"y\":-12.35,\"x\":49.25},\"6\":{\"y\":-12.35,\"x\":49.25},\"7\":{\"y\":-12.4,\"x\":49.25},\"8\":{\"y\":-12.4,\"x\":49.25},\"9\":{\"y\":-12.4,\"x\":49.25},\"10\":{\"y\":-12.4,\"x\":49.25},\"11\":{\"y\":-12.7,\"x\":49},\"12\":{\"y\":-12.95,\"x\":48.75},\"13\":{\"y\":-13.25,\"x\":48.5},\"14\":{\"y\":-13.55,\"x\":48.2},\"15\":{\"y\":-13.55,\"x\":48.15},\"16\":{\"y\":-14.45,\"x\":48.45},\"17\":{\"y\":-14.45,\"x\":48.65},\"18\":{\"y\":-14.6,\"x\":49.25},\"19\":{\"y\":-14.6,\"x\":49.3},\"20\":{\"y\":-15.95,\"x\":48.85},\"21\":{\"y\":-15.75,\"x\":48.75},\"22\":{\"y\":-19.35,\"x\":28.6},\"23\":{\"y\":-19.3,\"x\":28.6},\"24\":{\"y\":-19.05,\"x\":17.2},\"25\":{\"y\":-18.95,\"x\":17.25},\"26\":{\"y\":-13,\"x\":48.15},\"27\":{\"y\":-12.95,\"x\":48.2},\"28\":{\"y\":5.9,\"x\":84.8},\"29\":{\"y\":6,\"x\":84.85},\"30\":{\"y\":32.35,\"x\":102.35},\"31\":{\"y\":32.35,\"x\":102.4},\"32\":{\"y\":44.9,\"x\":104.85},\"33\":{\"y\":44.6,\"x\":104.9},\"34\":{\"y\":37.25,\"x\":103.95},\"35\":{\"y\":37.3,\"x\":104.05},\"36\":{\"y\":29.4,\"x\":101.95},\"37\":{\"y\":29.35,\"x\":101.9},\"38\":{\"y\":-12.55,\"x\":49},\"39\":{\"y\":-12.2,\"x\":49.35},\"40\":{\"y\":-12.95,\"x\":48.8},\"41\":{\"y\":-12.75,\"x\":48.75},\"42\":{\"y\":-16.9,\"x\":27.95},\"43\":{\"y\":-16.65,\"x\":27.95},\"44\":{\"y\":-16.3,\"x\":17.05},\"45\":{\"y\":-16.4,\"x\":16.9},\"46\":{\"y\":-16.95,\"x\":28.4},\"47\":{\"y\":-17.05,\"x\":28.3},\"48\":{\"y\":-12.9,\"x\":48.65},\"49\":{\"y\":-12.8,\"x\":48.65}},\"lb\":{\"1\":{\"y\":-6.6,\"x\":-7.55},\"2\":{\"y\":-6.6,\"x\":-7.55},\"3\":{\"y\":-6.6,\"x\":-7.5},\"4\":{\"y\":-6.6,\"x\":-7.5},\"5\":{\"y\":-6.6,\"x\":-7.45},\"6\":{\"y\":-6.55,\"x\":-7.45},\"7\":{\"y\":-6.55,\"x\":-7.4},\"8\":{\"y\":-6.55,\"x\":-7.4},\"9\":{\"y\":-6.55,\"x\":-7.35},\"10\":{\"y\":-6.5,\"x\":-7.35},\"11\":{\"y\":-6.5,\"x\":-7.3},\"12\":{\"y\":-6.5,\"x\":-7.3},\"13\":{\"y\":-6.5,\"x\":-7.25},\"14\":{\"y\":-6.5,\"x\":-7.25},\"15\":{\"y\":-6.4,\"x\":-7},\"16\":{\"y\":-6.85,\"x\":-7.1},\"17\":{\"y\":-7.25,\"x\":-7.2},\"18\":{\"y\":-7.7,\"x\":-7.35},\"19\":{\"y\":-8.2,\"x\":-7.75},\"20\":{\"y\":-8.7,\"x\":-8.2},\"21\":{\"y\":-8.3,\"x\":-8.2},\"22\":{\"y\":-20.6,\"x\":7},\"23\":{\"y\":-20.6,\"x\":6.4},\"24\":{\"y\":-23.9,\"x\":15.15},\"25\":{\"y\":-23.9,\"x\":15.55},\"26\":{\"y\":-8.35,\"x\":-8},\"27\":{\"y\":-8.4,\"x\":-8},\"28\":{\"y\":26.7,\"x\":-35.8},\"29\":{\"y\":26.95,\"x\":-35.85},\"30\":{\"y\":63.6,\"x\":-51.1},\"31\":{\"y\":63.55,\"x\":-51.5},\"32\":{\"y\":78.75,\"x\":-53.3},\"33\":{\"y\":78.25,\"x\":-52.8},\"34\":{\"y\":69.65,\"x\":-52.8},\"35\":{\"y\":69.5,\"x\":-52.8},\"36\":{\"y\":61.45,\"x\":-50.25},\"37\":{\"y\":61.7,\"x\":-50.1},\"38\":{\"y\":-4.8,\"x\":-8.25},\"39\":{\"y\":-3.4,\"x\":-7.85},\"40\":{\"y\":-5.35,\"x\":-7.8},\"41\":{\"y\":-5.1,\"x\":-7.7},\"42\":{\"y\":-16.2,\"x\":6.95},\"43\":{\"y\":-16.35,\"x\":7.15},\"44\":{\"y\":-21.3,\"x\":15.65},\"45\":{\"y\":-21.35,\"x\":15.45},\"46\":{\"y\":-16.9,\"x\":8.15},\"47\":{\"y\":-16.9,\"x\":8.15},\"48\":{\"y\":-4.9,\"x\":-7.35},\"49\":{\"y\":-5.15,\"x\":-7.35}},\"rb\":{\"1\":{\"y\":-2,\"x\":37.2},\"2\":{\"y\":-2,\"x\":37.2},\"3\":{\"y\":-2,\"x\":37.2},\"4\":{\"y\":-2,\"x\":37.15},\"5\":{\"y\":-2,\"x\":37.15},\"6\":{\"y\":-1.95,\"x\":37.15},\"7\":{\"y\":-1.95,\"x\":37.1},\"8\":{\"y\":-1.95,\"x\":37.1},\"9\":{\"y\":-1.95,\"x\":37.05},\"10\":{\"y\":-1.9,\"x\":37.05},\"11\":{\"y\":-1.9,\"x\":37.05},\"12\":{\"y\":-1.9,\"x\":37},\"13\":{\"y\":-1.9,\"x\":37},\"14\":{\"y\":-1.9,\"x\":36.95},\"15\":{\"y\":-1.9,\"x\":36.8},\"16\":{\"y\":-2.85,\"x\":37.1},\"17\":{\"y\":-3.5,\"x\":37.2},\"18\":{\"y\":-4.2,\"x\":37.25},\"19\":{\"y\":-3.8,\"x\":37.1},\"20\":{\"y\":-3.45,\"x\":36.9},\"21\":{\"y\":-3.3,\"x\":36.95},\"22\":{\"y\":-12.9,\"x\":22.1},\"23\":{\"y\":-13.1,\"x\":21.95},\"24\":{\"y\":-17.35,\"x\":13.55},\"25\":{\"y\":-17.5,\"x\":13.25},\"26\":{\"y\":-1.7,\"x\":35.4},\"27\":{\"y\":-1.7,\"x\":35.35},\"28\":{\"y\":33.65,\"x\":64.1},\"29\":{\"y\":33.35,\"x\":64.2},\"30\":{\"y\":69.95,\"x\":77.4},\"31\":{\"y\":70.4,\"x\":77.6},\"32\":{\"y\":84.6,\"x\":79.1},\"33\":{\"y\":84.55,\"x\":79.2},\"34\":{\"y\":75.9,\"x\":77.4},\"35\":{\"y\":75.9,\"x\":77.4},\"36\":{\"y\":67.4,\"x\":76.15},\"37\":{\"y\":66.95,\"x\":75.95},\"38\":{\"y\":-0.3,\"x\":34.2},\"39\":{\"y\":1.2,\"x\":34.75},\"40\":{\"y\":-0.75,\"x\":33.9},\"41\":{\"y\":-0.95,\"x\":33.7},\"42\":{\"y\":-10.6,\"x\":19.5},\"43\":{\"y\":-10.45,\"x\":19.7},\"44\":{\"y\":-15.55,\"x\":13.1},\"45\":{\"y\":-15.7,\"x\":12.95},\"46\":{\"y\":-10.65,\"x\":22},\"47\":{\"y\":-10.85,\"x\":22.1},\"48\":{\"y\":-1.3,\"x\":36.9},\"49\":{\"y\":-1.8,\"x\":37.15}},\"t\":{\"1\":{\"y\":-27.25,\"x\":31.2},\"2\":{\"y\":-27.25,\"x\":31.2},\"3\":{\"y\":-27.25,\"x\":31.2},\"4\":{\"y\":-27.2,\"x\":31.2},\"5\":{\"y\":-27.2,\"x\":31.2},\"6\":{\"y\":-27.15,\"x\":31.2},\"7\":{\"y\":-27.15,\"x\":31.2},\"8\":{\"y\":-27.1,\"x\":31.2},\"9\":{\"y\":-27.1,\"x\":31.2},\"10\":{\"y\":-27.05,\"x\":31.2},\"11\":{\"y\":-27.05,\"x\":31.2},\"12\":{\"y\":-27,\"x\":31.2},\"13\":{\"y\":-27,\"x\":31.2},\"14\":{\"y\":-27,\"x\":31.2},\"15\":{\"y\":-27.15,\"x\":31.05},\"16\":{\"y\":-27.75,\"x\":30.9},\"17\":{\"y\":-28.25,\"x\":31},\"18\":{\"y\":-28.8,\"x\":31.05},\"19\":{\"y\":-29.1,\"x\":31},\"20\":{\"y\":-29.45,\"x\":31},\"21\":{\"y\":-29.55,\"x\":31.1},\"22\":{\"y\":-23.85,\"x\":31.1},\"23\":{\"y\":-24.05,\"x\":31.2},\"24\":{\"y\":-17,\"x\":31.3},\"25\":{\"y\":-16.8,\"x\":31.05},\"26\":{\"y\":-28.35,\"x\":31.25},\"27\":{\"y\":-27.9,\"x\":31.35},\"28\":{\"y\":-26.9,\"x\":31.2},\"29\":{\"y\":-26.95,\"x\":31.05},\"30\":{\"y\":-10.8,\"x\":31.3},\"31\":{\"y\":-10.85,\"x\":31.15},\"32\":{\"y\":-1.25,\"x\":31.2},\"33\":{\"y\":-1.25,\"x\":31.35},\"34\":{\"y\":-6.85,\"x\":31.2},\"35\":{\"y\":-6.75,\"x\":31.2},\"36\":{\"y\":-12.8,\"x\":31.25},\"37\":{\"y\":-12.7,\"x\":31.25},\"38\":{\"y\":-26.4,\"x\":31.15},\"39\":{\"y\":-25.65,\"x\":31.5},\"40\":{\"y\":-27.6,\"x\":31.35},\"41\":{\"y\":-27.6,\"x\":31.3},\"42\":{\"y\":-21.45,\"x\":31.2},\"43\":{\"y\":-21.5,\"x\":31.3},\"44\":{\"y\":-15.4,\"x\":31.25},\"45\":{\"y\":-15.35,\"x\":31.35},\"46\":{\"y\":-21.3,\"x\":31.15},\"47\":{\"y\":-21.4,\"x\":30.9},\"48\":{\"y\":-27.3,\"x\":31.15},\"49\":{\"y\":-27.15,\"x\":31.15}},\"b\":{\"1\":{\"y\":2.5,\"x\":12.2},\"2\":{\"y\":2.5,\"x\":12.2},\"3\":{\"y\":2.45,\"x\":12.2},\"4\":{\"y\":2.45,\"x\":12.15},\"5\":{\"y\":2.4,\"x\":12.15},\"6\":{\"y\":2.4,\"x\":12.15},\"7\":{\"y\":2.35,\"x\":12.1},\"8\":{\"y\":2.35,\"x\":12.1},\"9\":{\"y\":2.3,\"x\":12.05},\"10\":{\"y\":2.3,\"x\":12.05},\"11\":{\"y\":2.25,\"x\":12.05},\"12\":{\"y\":2.25,\"x\":12},\"13\":{\"y\":2.2,\"x\":12},\"14\":{\"y\":2.15,\"x\":11.95},\"15\":{\"y\":2.5,\"x\":12.25},\"16\":{\"y\":2.95,\"x\":12.1},\"17\":{\"y\":2.8,\"x\":12.15},\"18\":{\"y\":2.25,\"x\":11.9},\"19\":{\"y\":2.4,\"x\":12.05},\"20\":{\"y\":1.95,\"x\":12.05},\"21\":{\"y\":1.8,\"x\":12.05},\"22\":{\"y\":-12.7,\"x\":11.9},\"23\":{\"y\":-12.8,\"x\":11.85},\"24\":{\"y\":-17.85,\"x\":12.05},\"25\":{\"y\":-17.9,\"x\":11.95},\"26\":{\"y\":1.5,\"x\":12},\"27\":{\"y\":1.65,\"x\":12},\"28\":{\"y\":43.4,\"x\":12},\"29\":{\"y\":43.6,\"x\":11.85},\"30\":{\"y\":86.6,\"x\":12.05},\"31\":{\"y\":86.8,\"x\":12.15},\"32\":{\"y\":103,\"x\":12.2},\"33\":{\"y\":103.1,\"x\":12.25},\"34\":{\"y\":93.7,\"x\":12.25},\"35\":{\"y\":93.75,\"x\":12.2},\"36\":{\"y\":84.05,\"x\":12.1},\"37\":{\"y\":84.2,\"x\":12.2},\"38\":{\"y\":4.1,\"x\":12.2},\"39\":{\"y\":5.55,\"x\":12.15},\"40\":{\"y\":3.75,\"x\":12.05},\"41\":{\"y\":3.8,\"x\":11.95},\"42\":{\"y\":-9.45,\"x\":12.05},\"43\":{\"y\":-9.45,\"x\":11.9},\"44\":{\"y\":-15.65,\"x\":12},\"45\":{\"y\":-15.8,\"x\":11.95},\"46\":{\"y\":-9.4,\"x\":12.3},\"47\":{\"y\":-9.35,\"x\":12.4},\"48\":{\"y\":3.2,\"x\":12.15},\"49\":{\"y\":3.05,\"x\":12.25}},\"lt\":{\"1\":{\"y\":-26.6,\"x\":6.2},\"2\":{\"y\":-26.6,\"x\":6.2},\"3\":{\"y\":-26.55,\"x\":6.2},\"4\":{\"y\":-26.55,\"x\":6.2},\"5\":{\"y\":-26.5,\"x\":6.2},\"6\":{\"y\":-26.45,\"x\":6.2},\"7\":{\"y\":-26.45,\"x\":6.2},\"8\":{\"y\":-26.4,\"x\":6.25},\"9\":{\"y\":-26.4,\"x\":6.25},\"10\":{\"y\":-26.35,\"x\":6.25},\"11\":{\"y\":-26.3,\"x\":6.25},\"12\":{\"y\":-26.3,\"x\":6.25},\"13\":{\"y\":-26.25,\"x\":6.25},\"14\":{\"y\":-26.25,\"x\":6.25},\"15\":{\"y\":-26.15,\"x\":6.25},\"16\":{\"y\":-26.4,\"x\":6.2},\"17\":{\"y\":-26.65,\"x\":6.2},\"18\":{\"y\":-26.95,\"x\":6.2},\"19\":{\"y\":-27.2,\"x\":5.6},\"20\":{\"y\":-27.45,\"x\":5},\"21\":{\"y\":-27.55,\"x\":5.25},\"22\":{\"y\":-25.35,\"x\":19.5},\"23\":{\"y\":-25.65,\"x\":19.65},\"24\":{\"y\":-21.4,\"x\":27.9},\"25\":{\"y\":-21.15,\"x\":28.05},\"26\":{\"y\":-29.35,\"x\":5.75},\"27\":{\"y\":-28.9,\"x\":5.5},\"28\":{\"y\":-24.3,\"x\":-17.55},\"29\":{\"y\":-24.05,\"x\":-17.35},\"30\":{\"y\":-6.15,\"x\":-29.1},\"31\":{\"y\":-6.2,\"x\":-29},\"32\":{\"y\":-1.75,\"x\":-29.55},\"33\":{\"y\":-1.5,\"x\":-29.3},\"34\":{\"y\":5.4,\"x\":-30.8},\"35\":{\"y\":5.25,\"x\":-30.8},\"36\":{\"y\":-7.3,\"x\":-28.5},\"37\":{\"y\":-7.3,\"x\":-28.35},\"38\":{\"y\":-24.55,\"x\":5.25},\"39\":{\"y\":-22.9,\"x\":5.4},\"40\":{\"y\":-24.85,\"x\":5.7},\"41\":{\"y\":-24.6,\"x\":5.55},\"42\":{\"y\":-21.2,\"x\":19.45},\"43\":{\"y\":-21.1,\"x\":19.9},\"44\":{\"y\":-18.55,\"x\":28.15},\"45\":{\"y\":-18.6,\"x\":28.2},\"46\":{\"y\":-21.65,\"x\":20.65},\"47\":{\"y\":-21.65,\"x\":20.65},\"48\":{\"y\":-24.65,\"x\":6.15},\"49\":{\"y\":-24.65,\"x\":6.4}},\"l\":{\"1\":{\"y\":-16.6,\"x\":-12.8},\"2\":{\"y\":-16.6,\"x\":-12.8},\"3\":{\"y\":-16.6,\"x\":-12.85},\"4\":{\"y\":-16.6,\"x\":-12.85},\"5\":{\"y\":-16.6,\"x\":-12.9},\"6\":{\"y\":-16.55,\"x\":-12.95},\"7\":{\"y\":-16.55,\"x\":-12.95},\"8\":{\"y\":-16.55,\"x\":-13},\"9\":{\"y\":-16.55,\"x\":-13.05},\"10\":{\"y\":-16.5,\"x\":-13.05},\"11\":{\"y\":-16.5,\"x\":-13.1},\"12\":{\"y\":-16.5,\"x\":-13.1},\"13\":{\"y\":-16.5,\"x\":-13.15},\"14\":{\"y\":-16.5,\"x\":-13.2},\"15\":{\"y\":-16.4,\"x\":-13.2},\"16\":{\"y\":-16.85,\"x\":-13.05},\"17\":{\"y\":-17.15,\"x\":-12.8},\"18\":{\"y\":-17.45,\"x\":-12.6},\"19\":{\"y\":-17.3,\"x\":-12.9},\"20\":{\"y\":-17.95,\"x\":-12.95},\"21\":{\"y\":-18.05,\"x\":-12.75},\"22\":{\"y\":-22.85,\"x\":6.5},\"23\":{\"y\":-22.6,\"x\":6.4},\"24\":{\"y\":-22.15,\"x\":17.9},\"25\":{\"y\":-22.15,\"x\":17.8},\"26\":{\"y\":-17.6,\"x\":-14},\"27\":{\"y\":-17.65,\"x\":-14},\"28\":{\"y\":2.45,\"x\":-49.55},\"29\":{\"y\":2.2,\"x\":-49.6},\"30\":{\"y\":28.1,\"x\":-68.6},\"31\":{\"y\":28.3,\"x\":-68.5},\"32\":{\"y\":41,\"x\":-70.8},\"33\":{\"y\":41,\"x\":-70.8},\"34\":{\"y\":33.4,\"x\":-69.8},\"35\":{\"y\":33.25,\"x\":-70.05},\"36\":{\"y\":26.95,\"x\":-67.25},\"37\":{\"y\":26.95,\"x\":-67.35},\"38\":{\"y\":-14.55,\"x\":-14},\"39\":{\"y\":-13.4,\"x\":-14.1},\"40\":{\"y\":-14.6,\"x\":-14.05},\"41\":{\"y\":-14.6,\"x\":-13.7},\"42\":{\"y\":-18.7,\"x\":5.45},\"43\":{\"y\":-18.6,\"x\":5.65},\"44\":{\"y\":-20.05,\"x\":16.9},\"45\":{\"y\":-19.85,\"x\":16.45},\"46\":{\"y\":-19.15,\"x\":6},\"47\":{\"y\":-19.65,\"x\":6.15},\"48\":{\"y\":-14.9,\"x\":-15.1},\"49\":{\"y\":-14.9,\"x\":-14.85}}}");
      
      public static const DIRECTION_BOTTOM:String = "b";
      
      public static const DIRECTION_LEFT_BOTTOM:String = "lb";
      
      public static const DIRECTION_LEFT:String = "l";
      
      public static const DIRECTION_LEFT_TOP:String = "lt";
      
      public static const DIRECTION_TOP:String = "t";
      
      public static const DIRECTION_RIGHT_TOP:String = "rt";
      
      public static const DIRECTION_RIGHT:String = "r";
      
      public static const DIRECTION_RIGHT_BOTTOM:String = "rb";
      
      public static var rodCharMotion:RodCharMotion = new RodCharMotion();
      
      public static const DIRECTION_LIST:Array = [DIRECTION_RIGHT_TOP,DIRECTION_TOP,DIRECTION_LEFT_TOP,DIRECTION_LEFT,DIRECTION_LEFT_BOTTOM,DIRECTION_BOTTOM,DIRECTION_RIGHT_BOTTOM,DIRECTION_RIGHT];
      
      public static const DIRECTION_LIST_BY_ANGLE_INDEX:Array = [DIRECTION_BOTTOM,DIRECTION_LEFT_BOTTOM,DIRECTION_LEFT,DIRECTION_LEFT_TOP,DIRECTION_TOP,DIRECTION_RIGHT_TOP,DIRECTION_RIGHT,DIRECTION_RIGHT_BOTTOM];
      
      public static const DIRECTION_LIST_BY_FRAME_INDEX:Array = [DIRECTION_BOTTOM,DIRECTION_LEFT_BOTTOM,DIRECTION_LEFT,DIRECTION_LEFT_TOP,DIRECTION_TOP,DIRECTION_RIGHT_TOP,DIRECTION_RIGHT,DIRECTION_RIGHT_BOTTOM];
      
      public static const DEFAULT_DIRECTION:String = DIRECTION_LEFT;
      
      private static var _globalInstanceId:int = 0;
      
      private static const HOOK_TARGET_DISTANCE:int = 3;
      
      private static const THROW_IN_ANIMATION_TOTAL_FRAMES:int = 35;
      
      private static const rodFrameByAnimationFrame:Vector.<int> = new <int>[1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,2,4,2,2,6,6,7,7,6,6,2,1];
      
      public var innerTargetOffset:Point = new Point();
      
      public var SWF_char_animation:Class = Rod_SWF_char_animation;
      
      public var SWF_rod_animation:Class = Rod_SWF_rod_animation;
      
      public var assetAnimation:MovieClip;
      
      private var _state:RodState = RodState.READY;
      
      public var rope:RopeCb;
      
      private var _fishingFramePosition:int;
      
      private var _reelInFramePosition:int;
      
      private var _reelInHandler:Function;
      
      private var _float:Sprite;
      
      private var _waterCircles:MovieClip = new BiteWaterCircles();
      
      private var _floatWaterSplash:MovieClip = new BiteWaterSplash();
      
      private var _floatWaterSplashAnimation:MovieClip;
      
      private var _floatUnderwaterSplash:MovieClip = new BiteGoUnderWater();
      
      private var _floatUnderwaterSplashAnimation:MovieClip;
      
      public var floatImage:Bitmap = FloatGraphics["PNG_Float" + GameSwf.settings.floatNumber + "Instance"];
      
      private var _floatFullImage:Bitmap = FloatGraphics["PNG_Float" + GameSwf.settings.floatNumber + "_fullInstance"];
      
      private var _rodAnimation:MovieClip;
      
      private var _floatInWaterManager:FloatInWaterManager;
      
      public var charX:int;
      
      public var charY:int;
      
      public var char:Boolean;
      
      public var isLakeHit:Function;
      
      public var throwInWorldOrigX:int;
      
      public var throwInWorldOrigY:int;
      
      public var throwInWorldCurX:int;
      
      public var throwInWorldCurY:int;
      
      public var outOffsetOrigX:int;
      
      public var outOffsetOrigY:int;
      
      public var inThrowInAnimationProcess:Boolean = false;
      
      private var _instanceId:int;
      
      private var _sprite:Sprite;
      
      private var _asset:MovieClip;
      
      private var _handSkins:MovieClip;
      
      private var _characterBitmap:Bitmap;
      
      private var _bodyColorIndex:int;
      
      private var _rodLayer:MovieClip;
      
      private var _handClip:MovieClip;
      
      private var _throwTimeSec:Number;
      
      private const HOOK_FRAME_NAMES:Array = ["hookA","hookB"];
      
      private var _hookDelay:int;
      
      private var _sfxVolume:Number;
      
      private var _throwInStartTimestampMS:int;
      
      private var _direction:String = null;
      
      private var _characterContainer:MovieClip;
      
      private var _ropeStartPoint:Point;
      
      private var _lastDirection:String;
      
      private var _typeId:int = 2147483647;
      
      private var _ropePoint:Point = new Point();
      
      private var _rodAnimationFrames:MovieClip;
      
      private var _destroyed:Boolean = false;
      
      private var _color:ShopItemColor;
      
      public function Rod(param1:LineStyle, param2:FloatInWaterManager, param3:Function, param4:Boolean = false)
      {
         super();
         this._instanceId = _globalInstanceId++;
         this._floatInWaterManager = param2;
         this.isLakeHit = param3;
         this._rodAnimation = new this.SWF_rod_animation();
         this._rodAnimation.stop();
         this._asset = new this.SWF_char_animation();
         this._asset.name = "_asset";
         this._waterCircles.visible = false;
         this._floatWaterSplash.gotoAndStop(parseInt(GameSwf.settings.floatNumber));
         this._floatWaterSplash.visible = false;
         this._floatWaterSplashAnimation = MovieClip(this._floatWaterSplash.getChildByName("float"));
         this._floatUnderwaterSplash.gotoAndStop(parseInt(GameSwf.settings.floatNumber));
         this._floatUnderwaterSplash.visible = false;
         this._floatUnderwaterSplashAnimation = MovieClip(this._floatUnderwaterSplash.getChildByName("float"));
         addChild(this._asset);
         this.rope = new RopeCb(param1);
         this.rope.create();
         addChild(this.rope);
         this._sprite = new Sprite();
         addChild(this._sprite);
         TweenCube.ActivatePlugins([BezierPlugin]);
         this._float = new Sprite();
         this.direction = Rod.DEFAULT_DIRECTION;
         this.ready();
      }
      
      public static function getDirectionByAlign(param1:Number) : String
      {
         param1 = (param1 + 45 + 45 / 2) % 360;
         var _loc2_:int = param1 / (360 / 8);
         return DIRECTION_LIST[_loc2_];
      }
      
      public static function getDirectionByAngleIndex(param1:int) : String
      {
         return DIRECTION_LIST_BY_ANGLE_INDEX[param1];
      }
      
      public static function getDirectionByFrameIndex(param1:int) : String
      {
         return DIRECTION_LIST_BY_FRAME_INDEX[param1 % 8];
      }
      
      public static function getAngleIndexByDirection(param1:String) : int
      {
         return DIRECTION_LIST_BY_ANGLE_INDEX.indexOf(param1);
      }
      
      public function onRopeColorChanged(param1:uint) : void
      {
         Debug.assertNotEqual(this.rope,null);
         this.rope.lineStyle.color = param1;
         this.rope.update(0.1);
      }
      
      private function initAsset(param1:String) : void
      {
         var _loc2_:Point = null;
         this._asset.gotoAndStop(param1);
         if(param1 == DIRECTION_LEFT_TOP || param1 == DIRECTION_TOP)
         {
            addChildAt(this.rope,0);
            addChildAt(this._float,1);
            addChildAt(this._floatWaterSplash,2);
            addChildAt(this._floatUnderwaterSplash,3);
            addChildAt(this._waterCircles,4);
            addChildAt(this._asset,5);
         }
         else
         {
            addChildAt(this._asset,0);
            addChildAt(this.rope,1);
            addChildAt(this._float,2);
            addChildAt(this._floatWaterSplash,3);
            addChildAt(this._floatUnderwaterSplash,4);
            addChildAt(this._waterCircles,5);
         }
         this.setFloatGraphic(BitmapUtil.cloneBitmap(this._floatFullImage));
         this.updateFloatPosition();
         this._asset.mouseEnabled = false;
         this.assetAnimation = MovieClip(this._asset.getChildByName("asset"));
         this._characterContainer = MovieClip(this.assetAnimation.getChildByName("char"));
         this.assetAnimation.mouseEnabled = false;
         this._handClip = MovieClip(this.assetAnimation.getChildByName("hand"));
         this._handClip.mouseEnabled = false;
         this._handClip.mouseChildren = false;
         this._handSkins = MovieClip(this._handClip.getChildByName("skins"));
         this._handSkins.mouseEnabled = false;
         this._handSkins.mouseChildren = false;
         this._rodLayer = MovieClip(this.assetAnimation.getChildByName("rodLayer"));
         this._rodLayer.mouseEnabled = false;
         this._rodLayer.mouseChildren = false;
         this.updateRodLayer();
         if(this._state == RodState.FISHING)
         {
            this.assetAnimation.gotoAndStop("fishing");
         }
         else
         {
            this.assetAnimation.gotoAndStop(1);
         }
         var _loc3_:DisplayObject = this.assetAnimation.getChildByName("ropePoint");
         if(_loc3_ != null)
         {
            _loc3_.visible = false;
         }
         this.rope.x = this.assetAnimation.x;
         this.rope.y = this.assetAnimation.y;
         this.rope.flexibilityCoef = Rope.FLEX_HARD_COEF;
         if(this._state == RodState.READY)
         {
            _loc2_ = this.getCurrentRopePoint();
            this.rope.endPointX = this._ropePoint.x;
            this.rope.endPointY = _loc2_.y + 65;
         }
         this._ropeStartPoint = new Point(this.rope.endPointX,this.rope.endPointY);
      }
      
      public function ropePoint() : Point
      {
         return this._ropeStartPoint;
      }
      
      public function setCharacter(param1:Bitmap, param2:int) : void
      {
         if(this._characterBitmap != param1 || param1.parent != this._characterContainer)
         {
            this._characterBitmap = param1;
            this._characterBitmap.x = -1;
            this._characterBitmap.y = 0;
            while(this._characterContainer.numChildren != 0)
            {
               this._characterContainer.removeChildAt(0);
            }
            this._characterContainer.addChild(param1);
            this._handSkins.gotoAndStop(param2 + 1);
         }
         if(this._characterBitmap.x != -1 || this._characterBitmap.y != 0)
         {
            this._characterBitmap.x = -1;
            this._characterBitmap.y = 0;
         }
      }
      
      private function reelInAnimationCompleteFrameScript() : void
      {
         this.assetAnimation.stop();
      }
      
      private function throwInAnimationCompleteFrameScript() : void
      {
         if(this._state != RodState.BITE)
         {
            this.state = RodState.FISHING;
         }
         this.assetAnimation.stop();
      }
      
      public function throwIn(param1:int, param2:int, param3:Number, param4:int, param5:int, param6:Boolean = false) : void
      {
         var _loc7_:Point = null;
         Cc.logch("rod",this.toString() + "throwIn(outOffsetX:" + param1 + ", outOffsetY:" + param2 + ", sfxVolume:" + param3 + ", charX:" + param4 + ", charY:" + param5 + ", immidiatellyAnimation:" + param6 + ")");
         if(this._state != RodState.THROW_IN_ANIMATION)
         {
            this.state = RodState.THROW_IN_ANIMATION;
            this._throwInStartTimestampMS = getTimer();
            this._sfxVolume = param3;
            this.charX = param4;
            this.charY = param5;
            this.outOffsetOrigX = param1;
            this.outOffsetOrigY = param2;
            this.innerTargetOffset.x = this.outOffsetOrigX - this.assetAnimation.x;
            this.innerTargetOffset.y = this.outOffsetOrigY - this.assetAnimation.y;
            Cc.logch("rod",this.toString() + "innerTargetOffset=" + this.innerTargetOffset.toString());
            if(this._floatInWaterManager)
            {
               this._floatInWaterManager.handleRodThrowIn(this);
            }
            this.assetAnimation.cacheAsBitmap = false;
            this.assetAnimation.gotoAndStop(1);
            this._throwTimeSec = Math.sqrt(param1 * param1 + param2 * param2) / 500;
            _loc7_ = this.getCurrentRopePoint();
            TweenCube.destroyTweensOf(this.rope,false);
            if(param6)
            {
               this._state = RodState.FISHING;
               this.hitWaterAnimationComplete();
               this.assetAnimation.gotoAndStop(THROW_IN_ANIMATION_TOTAL_FRAMES);
               if(this._direction in rodCharMotion.motions && THROW_IN_ANIMATION_TOTAL_FRAMES in rodCharMotion.motions[this._direction])
               {
                  this._characterContainer.y = rodCharMotion.motions[this._direction][THROW_IN_ANIMATION_TOTAL_FRAMES];
               }
               this.rope.endPointX = this.innerTargetOffset.x;
               this.rope.endPointY = this.innerTargetOffset.y;
               this.updateFloatPosition();
               this.assetAnimation.alpha = 1;
               this.rope.alpha = 1;
            }
            else
            {
               if(this.rope.alpha < 1)
               {
                  this.startRoteAppearTween();
               }
               TweenCube.to(this.rope,0.25,{"Bezier":{
                  "fieldX":"endPointX",
                  "fieldY":"endPointY",
                  "path":[{
                     "endPointX":this._ropePoint.x,
                     "endPointY":_loc7_.y + 65
                  },{
                     "endPointX":this._ropePoint.x - 25,
                     "endPointY":_loc7_.y - 25
                  }],
                  "rotate":false
               }},{
                  "delay":0.75,
                  "ease":Bounce.easeOut,
                  "onComplete":this.onThrowInComplete
               });
            }
            if(param3 > 0)
            {
               TweenCube.timedCall(0.75,FishaoSoundManager.play,[FishaoSoundManager.SFX_038_MOV_Throw_line,param3]);
            }
         }
      }
      
      private function getCurrentRopePoint() : Point
      {
         var _loc1_:Object = null;
         if(this._direction in ropePositionMap)
         {
            if(this.assetAnimation.currentFrame.toString() in ropePositionMap[this._direction])
            {
               _loc1_ = ropePositionMap[this._direction][this.assetAnimation.currentFrame.toString()];
               return new Point(_loc1_.x,_loc1_.y);
            }
         }
         return new Point();
      }
      
      public function set state(param1:RodState) : void
      {
         var _loc2_:RodState = null;
         if(this._destroyed)
         {
            return;
         }
         if(this._state != param1)
         {
            _loc2_ = this._state;
            this._state = param1;
            if(param1 != RodState.BITE)
            {
               this._waterCircles.visible = false;
               this._waterCircles.stop();
            }
            if(this._state == RodState.BITE_START)
            {
               FishaoSoundManager.play(FishaoSoundManager.SFX_069_Fish_bites_splash,this._sfxVolume);
               TweenCube.destroyTweensOf(this._float,false);
               this._float.visible = false;
               this._floatWaterSplash.visible = false;
               this._floatFullImage.visible = false;
               this._floatUnderwaterSplash.visible = true;
               this._floatUnderwaterSplashAnimation.gotoAndPlay(1);
               this._waterCircles.visible = true;
               this._waterCircles.x = this._float.x;
               this._waterCircles.y = this._float.y;
               this._waterCircles.gotoAndPlay(1);
               TweenCube.timedCall(0.3,this.biteAnimationStartComplete);
            }
            else if(this._state == RodState.BITE)
            {
               TweenCube.destroyTweensOf(this._float,false);
               this._floatUnderwaterSplash.visible = false;
               this._float.visible = false;
               this._floatWaterSplash.visible = false;
               this._floatFullImage.visible = false;
            }
            else if(this._state == RodState.REEL_IN)
            {
               this._float.visible = true;
               this._floatWaterSplash.visible = false;
               this._floatFullImage.visible = false;
               this._floatUnderwaterSplash.visible = false;
               this.setFloatGraphic(BitmapUtil.cloneBitmap(this._floatFullImage));
            }
            else if(this._state == RodState.FISHING)
            {
               this._floatUnderwaterSplash.visible = false;
            }
            else if(this._state == RodState.THROW_IN_ANIMATION)
            {
               this.inThrowInAnimationProcess = true;
            }
         }
      }
      
      private function biteAnimationStartComplete() : void
      {
         if(this._destroyed)
         {
            return;
         }
         if(this._state == RodState.BITE_START)
         {
            this.state = RodState.BITE;
         }
      }
      
      private function hitWaterAnimationComplete() : void
      {
         if(this._destroyed)
         {
            return;
         }
         if(this._state == RodState.THROW_IN_ANIMATION || this._state == RodState.FISHING)
         {
            this._floatWaterSplashAnimation.gotoAndStop(this._floatWaterSplashAnimation.totalFrames);
            this._floatWaterSplash.visible = true;
            this._floatUnderwaterSplash.visible = false;
            this._float.visible = false;
         }
         this.inThrowInAnimationProcess = false;
      }
      
      private function onThrowInComplete() : void
      {
         TweenCube.to(this.rope,this._throwTimeSec,{
            "endPointX":this.innerTargetOffset.x,
            "endPointY":this.innerTargetOffset.y
         },{"ease":Cubic.easeOut});
         TweenCube.timedCall(this._throwTimeSec - 0.1,this.hitWaterAnimation);
         if(this._sfxVolume > 0)
         {
            TweenCube.timedCall(this._throwTimeSec - 0.1,FishaoSoundManager.play,[ArrayUtils.randomItem([FishaoSoundManager.SFX_039_MOV_Line_hit_water_01,FishaoSoundManager.SFX_039_MOV_Line_hit_water_02]),this._sfxVolume]);
         }
         this.updateFloatPosition();
         this.assetAnimation.alpha = 1;
      }
      
      private function hitWaterAnimation() : void
      {
         if(this._destroyed)
         {
            return;
         }
         if(this._state == RodState.THROW_IN_ANIMATION || this._state == RodState.FISHING)
         {
            this._floatWaterSplashAnimation.gotoAndPlay(1);
            this._floatWaterSplash.visible = true;
            this._floatUnderwaterSplash.visible = false;
            this._float.visible = false;
            TweenCube.timedCall(0.7,this.hitWaterAnimationComplete);
         }
      }
      
      private function setFloatGraphic(param1:Bitmap) : Bitmap
      {
         while(this._float.numChildren)
         {
            this._float.removeChildAt(0);
         }
         param1.x = -param1.width / 2;
         param1.y = -param1.height / 2;
         param1.smoothing = true;
         if(param1 == null || param1.width <= 1 || param1.height <= 1)
         {
            Cc.warn("Float image is empty");
            GameSwf.sendReportToServer();
         }
         if(param1 != null && param1.visible == false)
         {
            Cc.warn("Float bitmap is invisible");
            GameSwf.sendReportToServer();
         }
         this._float.addChild(param1);
         return param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(this._state == RodState.BITE)
         {
            if(this._hookDelay < 0)
            {
               this._hookDelay = randomRange(0,1);
               _loc2_ = this.HOOK_FRAME_NAMES[randomRange(0,this.HOOK_FRAME_NAMES.length - 1)];
               this.assetAnimation.gotoAndStop(_loc2_);
               _loc3_ = this.innerTargetOffset.x + randomRange(-HOOK_TARGET_DISTANCE,HOOK_TARGET_DISTANCE);
               this.rope.endPointX = _loc3_;
               this.rope.endPointY = this.innerTargetOffset.y + randomRange(-HOOK_TARGET_DISTANCE,HOOK_TARGET_DISTANCE);
            }
            else
            {
               --this._hookDelay;
            }
         }
         else if(this._state == RodState.THROW_IN_ANIMATION)
         {
            _loc4_ = Math.round(THROW_IN_ANIMATION_TOTAL_FRAMES * limit((getTimer() - this._throwInStartTimestampMS) / 1600,0,1)) + 1;
            this.assetAnimation.gotoAndStop(_loc4_);
            if(this._direction in rodCharMotion.motions && _loc4_ in rodCharMotion.motions[this._direction])
            {
               this._characterContainer.y = rodCharMotion.motions[this._direction][_loc4_];
            }
         }
         if(this.assetAnimation != null)
         {
            if(this.assetAnimation.currentFrameLabel == "fishing" && this._state != RodState.BITE_START)
            {
               this.throwInAnimationCompleteFrameScript();
            }
            if(this.assetAnimation.currentFrameLabel == "reelInComplete")
            {
               this.reelInAnimationCompleteFrameScript();
            }
         }
         this.updateRodFrame();
         this.rope.startPointX = this._ropePoint.x;
         this.rope.startPointY = this._ropePoint.y;
         this.rope.update(param1);
         this.updateFloatPosition();
      }
      
      private function updateRodFrame(param1:Boolean = false) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:int = this.getRodFrameByAnimationFrame();
         if(this._rodAnimationFrames != null && (param1 || this._rodAnimationFrames.currentFrame != _loc4_))
         {
            this._rodAnimationFrames.gotoAndStop(_loc4_);
            _loc2_ = this._rodAnimationFrames.getChildByName("ropePoint");
            _loc3_ = this._rodAnimationFrames.getChildByName("handPoint");
            this._rodAnimation.x = int(this._handClip.x - _loc3_.x);
            this._rodAnimation.y = int(this._handClip.y - _loc3_.y);
            this._ropePoint.x = _loc2_.x + this._rodAnimation.x;
            this._ropePoint.y = _loc2_.y + this._rodAnimation.y;
            _loc3_.visible = false;
            _loc2_.visible = false;
         }
      }
      
      private function getRodFrameByAnimationFrame() : int
      {
         var _loc1_:int = this.assetAnimation.currentFrame;
         return rodFrameByAnimationFrame[_loc1_];
      }
      
      private function updateFloatPosition() : void
      {
         this._float.x = this.rope.endPointX + this.rope.x;
         this._float.y = this.rope.endPointY + this.rope.y;
         if(this._state != RodState.BITE)
         {
            this._floatWaterSplash.x = this._float.x;
            this._floatWaterSplash.y = this._float.y;
            this._floatUnderwaterSplash.x = this._float.x;
            this._floatUnderwaterSplash.y = this._float.y;
         }
         if(this.state == RodState.FISHING || this.state == RodState.BITE)
         {
            this._float.rotation = 0;
         }
         else
         {
            this._float.rotation = -IsoMath.getDegreesAlignByPoints(this.rope.endPointX,this.rope.endPointY,this.rope.lastButOneX,this.rope.lastButOneY);
         }
      }
      
      public function get state() : RodState
      {
         return this._state == RodState.BITE_START ? RodState.BITE : this._state;
      }
      
      public function ready() : void
      {
         this.state = RodState.READY;
         this.rope.flexibilityCoef = Rope.FLEX_SOFT_COEF;
         this.assetAnimation.gotoAndStop(1);
         this.updateRodFrame(true);
         var _loc1_:Point = this.getCurrentRopePoint();
         this.rope.startPointX = _loc1_.x;
         this.rope.startPointY = _loc1_.y;
         this.rope.endPointX = this._ropePoint.x;
         this.rope.endPointY = _loc1_.y + 65;
      }
      
      public function bite() : void
      {
         this.state = RodState.BITE_START;
         this.rope.flexibilityCoef = Rope.FLEX_HARD_COEF;
      }
      
      public function reelIn() : void
      {
         var _loc1_:Point = null;
         if(this._state != RodState.REEL_IN && this._state != RodState.READY)
         {
            if(this._floatInWaterManager)
            {
               this._floatInWaterManager.remove(this);
            }
            this.state = RodState.REEL_IN;
            this.rope.flexibilityCoef = Rope.FLEX_HARD_COEF;
            this.assetAnimation.gotoAndPlay("reelIn");
            this.updateRodFrame(true);
            _loc1_ = this.getCurrentRopePoint();
            this.rope.startPointX = _loc1_.x;
            this.rope.startPointY = _loc1_.y;
            FishaoSoundManager.play(FishaoSoundManager.SFX_057_MOV_Reel_rod,this._sfxVolume);
            TweenCube.destroyTweensOf(this.rope,false);
            TweenCube.to(this.rope,this._throwTimeSec * 3,{"Bezier":{
               "fieldX":"endPointX",
               "fieldY":"endPointY",
               "path":[{
                  "endPointX":this.innerTargetOffset.x,
                  "endPointY":this.innerTargetOffset.y
               },{
                  "endPointX":this.innerTargetOffset.x,
                  "endPointY":_loc1_.y
               },{
                  "endPointX":this._ropePoint.x + 25,
                  "endPointY":_loc1_.y - 50
               },{
                  "endPointX":this._ropePoint.x - 25,
                  "endPointY":_loc1_.y + 50
               },{
                  "endPointX":this._ropePoint.x,
                  "endPointY":_loc1_.y + 65
               }],
               "rotate":false
            }},{
               "ease":Bounce.easeOut,
               "onComplete":this.onReelIncomplete
            });
            this.setFloatGraphic(BitmapUtil.cloneBitmap(this._floatFullImage));
            this.updateFloatPosition();
         }
      }
      
      private function onReelIncomplete() : void
      {
         this.ready();
         if(this._reelInHandler != null)
         {
            this._reelInHandler();
            this._reelInHandler = null;
         }
      }
      
      public function set direction(param1:String) : void
      {
         if(this._direction != param1)
         {
            this._direction = param1;
            this.initAsset(param1);
            this._lastDirection = param1;
         }
      }
      
      public function get direction() : String
      {
         return this._direction;
      }
      
      public function set reelInHandler(param1:Function) : void
      {
         this._reelInHandler = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc5_:Boolean = visible;
         super.visible = param1;
         if(_loc5_ == false && param1 == true)
         {
            this.makeTransparent(0);
         }
         if(param1)
         {
            _loc2_ = uint(this.assetAnimation.numChildren);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = this.assetAnimation.getChildAt(_loc3_);
               if(_loc4_ == this._characterContainer)
               {
                  _loc4_.alpha = 1;
               }
               else
               {
                  TweenCube.to(_loc4_,ROD_FADE_TIME_SEC,{"alpha":1});
               }
               _loc3_++;
            }
            TweenCube.destroyTweensOf(this._float,false);
            this.rope.lastChangeTsMS = getTimer();
            this.startRoteAppearTween();
            TweenCube.to(this._float,ROD_FADE_TIME_SEC,{"alpha":1});
         }
         else
         {
            this.makeTransparent(0);
         }
      }
      
      private function startRoteAppearTween() : void
      {
         TweenCube.to(this.rope,ROD_FADE_TIME_SEC,{"alpha":1});
      }
      
      private function makeTransparent(param1:Number) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         _loc2_ = uint(this.assetAnimation.numChildren);
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.assetAnimation.getChildAt(_loc3_);
            if(_loc4_ == this._characterContainer)
            {
               _loc4_.alpha = param1;
            }
            else
            {
               TweenCube.destroyTweensOf(_loc4_);
               _loc4_.alpha = param1;
            }
            _loc3_++;
         }
         TweenCube.destroyTweensOf(this.rope,false);
         this.rope.alpha = param1;
         TweenCube.destroyTweensOf(this._float,false);
         this._float.alpha = param1;
      }
      
      public function destroy() : void
      {
         var _loc1_:DisplayObject = null;
         TweenCube.destroyTweensOf(this.rope,false);
         TweenCube.destroyTweensOf(this._float,false);
         var _loc2_:int = 0;
         while(_loc2_ < length)
         {
            _loc1_ = this.assetAnimation.getChildAt(_loc2_);
            TweenCube.destroyTweensOf(_loc1_,false);
            _loc2_++;
         }
         this.rope = null;
         this._float = null;
         this._floatInWaterManager = null;
         this._destroyed = true;
      }
      
      public function set typeId(param1:int) : void
      {
         var _loc2_:Boolean = false;
         if(param1 == int.MIN_VALUE)
         {
            param1 = -1;
         }
         if(this._typeId != param1)
         {
            _loc2_ = this._typeId == int.MAX_VALUE;
            this._typeId = param1;
            this.updateRodLayer();
            if(this._state == RodState.READY)
            {
               this.rope.endPointX = this._ropePoint.x;
            }
         }
      }
      
      public function get typeId() : int
      {
         return this._typeId;
      }
      
      public function get color() : ShopItemColor
      {
         return this._color;
      }
      
      private function updateRodLayer() : void
      {
         var _loc1_:MovieClip = null;
         if(this._rodLayer != null && this._typeId >= -1 && this._typeId < int.MAX_VALUE)
         {
            removeAllChildren(this._rodLayer);
            this._rodAnimation.gotoAndStop("type_" + this._typeId);
            _loc1_ = MovieClip(this._rodAnimation.getChildByName("directions"));
            _loc1_.gotoAndStop(this._direction);
            this._rodAnimationFrames = MovieClip(_loc1_.getChildByName("rodFrames"));
            this._rodLayer.addChild(this._rodAnimation);
            this.updateRodFrame(true);
         }
      }
      
      public function setFloat(param1:int) : void
      {
         this.floatImage = FloatGraphics["PNG_Float0" + param1 + "Instance"];
         this._floatFullImage = FloatGraphics["PNG_Float0" + param1 + "_fullInstance"];
         this._floatWaterSplash.gotoAndStop(param1);
         this._floatWaterSplashAnimation = MovieClip(this._floatWaterSplash.getChildByName("float"));
         this._floatUnderwaterSplash.gotoAndStop(param1);
         this._floatUnderwaterSplashAnimation = MovieClip(this._floatUnderwaterSplash.getChildByName("float"));
         if(this.floatImage == null || this._floatFullImage == null || param1 > this._floatWaterSplash.totalFrames || param1 > this._floatUnderwaterSplash.totalFrames)
         {
            Cc.error("Frequent no float state       floatImage = " + this.floatImage + ";  _floatFullImage = " + this._floatFullImage + ";  floatNumber = " + param1);
            GameSwf.sendReportToServer("wrongNoFloatState");
         }
         if(this._state == RodState.BITE || this._state == RodState.FISHING)
         {
            this.setHalfFloatGraphic(this.floatImage);
         }
         else
         {
            this.setFloatGraphic(BitmapUtil.cloneBitmap(this._floatFullImage));
         }
      }
      
      private function setHalfFloatGraphic(param1:Bitmap) : void
      {
         var _loc2_:Bitmap = this.setFloatGraphic(BitmapUtil.cloneBitmap(param1));
      }
      
      public function configureRod(param1:int, param2:ShopItemColor) : void
      {
         this.typeId = param1;
         this._color = param2;
         this._rodAnimation.filters = RodColorFilter.getGameColorFilters(param1,param2);
      }
      
      public function throwInFix(param1:int, param2:int) : void
      {
         this.innerTargetOffset.x = this.outOffsetOrigX - this.assetAnimation.x + param1;
         this.innerTargetOffset.y = this.outOffsetOrigY - this.assetAnimation.y + param2;
      }
      
      public function updateNewFloatPosition() : void
      {
         this.rope.endPointX = this.innerTargetOffset.x;
         this.rope.endPointY = this.innerTargetOffset.y;
         this.updateFloatPosition();
      }
      
      override public function toString() : String
      {
         return "[Rod(id=" + this._instanceId + ")]";
      }
      
      public function getWatchText() : String
      {
         return this.rope.endPointX + ", " + this.rope.endPointY;
      }
   }
}

