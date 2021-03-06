//------------------------------------------------------------------------------
//  Copyright (c) 2009-2013 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.framework.impl;

import org.swiftsuspenders.utils.CallProxy;
import org.swiftsuspenders.utils.UID;
/**
 * Utility for generating unique object IDs
 */
@:keepSub
class UID
{

	/*============================================================================*/
	/* Private Static Properties                                                  */
	/*============================================================================*/

	private static var _i:UInt;

	/*============================================================================*/
	/* Public Static Functions                                                    */
	/*============================================================================*/

	/**
	 * Generates a UID for a given source object or class
	 * @param source The source object or class
	 * @return Generated UID
	 */
	public static function create(source:Dynamic = null):String
	{
		return org.swiftsuspenders.utils.UID.create(source);
		
		/*var className = UID.classID(source);
		var random:Int = Math.floor(Math.random() * 255);
		return (source ? source + '-':'') + StringTools.hex(_i++, 16) + '-' + StringTools.hex(random, 16);*/
	}
	
	public static function classID(source:Dynamic = null):String
	{
		/*var className = "";
		if (Type.getClass(source) != null) {
			className = CallProxy.getClassName(Type.getClass(source)); 
		}
		return className;*/
		
		return org.swiftsuspenders.utils.UID.classID(source);
	}
}