/*
 * Copyright (C) 2019-2023, Magic Lane B.V.
 * All rights reserved.
 *
 * This software is confidential and proprietary information of Magic Lane
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with Magic Lane.
 */

package com.magiclane.gem_kit

import android.content.Context
import android.view.View
import com.magiclane.sdk.core.DataBuffer
import com.magiclane.sdk.core.GemError
import com.magiclane.sdk.core.GemSdk
import com.magiclane.sdk.core.GemSurfaceView
import com.magiclane.sdk.flutter.FlutterChannel
import com.magiclane.sdk.flutter.FlutterMethodListener
import com.magiclane.sdk.util.SdkCall
import com.magiclane.sdk.util.Util
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView
import org.json.JSONArray
import org.json.JSONObject

class EventCustom(val eventName: String,val arguments:String,var valid: Boolean) {
    
}

class GemMapView(
    private val gemKitPlugin: GemKitPlugin,
    viewId: Int,
    context: Context
) : PlatformView {
    var eventQueue = mutableListOf<EventCustom>()
     var lockEvent = Any()
    var isPosting = false
    private val gemSurfaceView: GemSurfaceView
    private lateinit var methodChannel: MethodChannel
    
    init {
        gemSurfaceView = GemSurfaceView(
            context = context,
            autoReleaseOnDetachedFromWindow = false,
            postLambdasOnMain = false
        )

        registerCallsFromFlutter(viewId.toLong())
    }
    
    override fun getView(): View = gemSurfaceView

    override fun dispose() {
        releaseMapView()
    }
    
    private fun registerMapView(result: MethodChannel.Result) {
        if(gemSurfaceView.mapView==null)
        {
            gemSurfaceView.onDefaultMapViewCreated = {
                FlutterChannel.registerMapView(
            gemSurfaceView.mapView!!,
            DataBuffer(),
            FlutterMethodListener.create(
                onNotifyComplete = { err, retDetails, _ ->
                    SdkCall.execute {
                        val arguments = retDetails.bytes?.let { returnedDetails -> String(returnedDetails) } ?: ""
                        if (err == GemError.NoError && arguments.isNotEmpty()) {
                            result.success(arguments)
                        } else {
                            result.error(err.toString(), GemError.getMessage(err), null)
                        }
                    }
                },
                 onNotifyEvent = { eventName, eventDetails, _ ->
                        if (eventName.isNotEmpty()) {
                            val arguments = eventDetails.bytes?.let { String(it) } ?: ""
                              if(!isPosting)
                            {
                              isPosting = true;
                                synchronized(lockEvent)
                            {
                              eventQueue.add(EventCustom(eventName,arguments,true));
                            }
                            Util.postOnMainDelayed( {
                            val jsonArray = JSONArray()
                              synchronized(lockEvent)
                              {
                                
                              for (eventCustom in eventQueue) {
                            if(eventCustom!=null)
                            {
                                 val jsonObject = JSONObject()
                                 jsonObject.put("eventName", eventCustom.eventName)
                                 jsonObject.put("arguments", eventCustom.arguments)
                                 jsonArray.put(jsonObject)    
                                 eventCustom.valid = false;
                                
                            }
                            }
                               eventQueue.removeIf{ eventCustom -> !eventCustom.valid };
                             }
                             val jsonArrayAsString = jsonArray.toString()
                            methodChannel.invokeMethod("notifyEvents", jsonArrayAsString)
                            isPosting = false
                            })
                            }
                            else
                            {
                                  synchronized(lockEvent)
                                  {
                                    eventQueue.add(EventCustom(eventName,arguments,true));
                                  }
                            }
                        }
                    }
            )
        )
        }    
        }
        else
        FlutterChannel.registerMapView(
            gemSurfaceView.mapView!!,
            DataBuffer(),
            FlutterMethodListener.create(
                onNotifyComplete = { err, retDetails, _ ->
                    SdkCall.execute {
                        val arguments = retDetails.bytes?.let { returnedDetails -> String(returnedDetails) } ?: ""
                        if (err == GemError.NoError && arguments.isNotEmpty()) {
                            result.success(arguments)
                        } else {
                            result.error(err.toString(), GemError.getMessage(err), null)
                        }
                    }
                },
                 onNotifyEvent = { eventName, eventDetails, _ ->
                        if (eventName.isNotEmpty()) {
                            val arguments = eventDetails.bytes?.let { String(it) } ?: ""
                              if(!isPosting)
                            {
                              isPosting = true;
                                synchronized(lockEvent)
                            {
                              eventQueue.add(EventCustom(eventName,arguments,true));
                            }
                            Util.postOnMainDelayed({
                            val jsonArray = JSONArray()
                              synchronized(lockEvent)
                              {
                                
                              for (eventCustom in eventQueue) {
                            if(eventCustom!=null)
                            {
                                 val jsonObject = JSONObject()
                                 jsonObject.put("eventName", eventCustom.eventName)
                                 jsonObject.put("arguments", eventCustom.arguments)
                                 jsonArray.put(jsonObject)    
                                 eventCustom.valid = false;
                                
                            }
                            }
                               eventQueue.removeIf{ eventCustom -> !eventCustom.valid };
                             }
                             val jsonArrayAsString = jsonArray.toString()
                            methodChannel.invokeMethod("notifyEvents", jsonArrayAsString)
                            isPosting = false
                            })
                            }
                            else
                            {
                                  synchronized(lockEvent)
                                  {
                                    eventQueue.add(EventCustom(eventName,arguments,true));
                                  }
                            }
                        }
                    }
            )
        )
    }
    
    private fun releaseMapView() {
        SdkCall.execute {
            FlutterChannel.unregisterMapView(gemSurfaceView.mapView!!, FlutterMethodListener.create())
            gemSurfaceView.release()
        }
    }
    
    private fun registerCallsFromFlutter(mapId: Long) {
        val name = "plugins.flutter.dev/gem_maps_$mapId"
        methodChannel = MethodChannel(
            gemKitPlugin.flutterPluginBinding.binaryMessenger, 
            name
        )
        
        methodChannel.setMethodCallHandler { call, result ->
            if (!GemSdk.isInitialized()) {
                result.error(
                    GemError.EngineNotInitialized.toString(),
                    GemError.getMessage(GemError.EngineNotInitialized), null)
            }

            if (call.method == "waitForViewId") {
                SdkCall.execute { registerMapView(result) }
            } else if (call.arguments != null) {
                val flutterMethodListener = FlutterMethodListener.create(
                    onNotifyComplete = { err, retDetails, _ ->
                        if (err == GemError.NoError) {
                            val returnedResult = retDetails.bytes?.let { String(it) } ?: ""
                            result.success(returnedResult)
                        } else {
                            result.error(err.toString(), GemError.getMessage(err), null)
                        }
                    },

                    onNotifyEvent = { eventName, eventDetails, _ ->
                        if (eventName.isNotEmpty()) {
                            val arguments = eventDetails.bytes?.let { String(it) } ?: ""
                              if(!isPosting)
                            {
                              isPosting = true;
                                synchronized(lockEvent)
                            {
                              eventQueue.add(EventCustom(eventName,arguments,true));
                            }
                            Util.postOnMainDelayed( {
                            val jsonArray = JSONArray()
                              synchronized(lockEvent)
                              {
                                
                              for (eventCustom in eventQueue) {
                            if(eventCustom!=null)
                            {
                                 val jsonObject = JSONObject()
                                 jsonObject.put("eventName", eventCustom.eventName)
                                 jsonObject.put("arguments", eventCustom.arguments)
                                 jsonArray.put(jsonObject)    
                                 eventCustom.valid = false;
                                
                            }
                            }
                               eventQueue.removeIf{ eventCustom -> !eventCustom.valid };
                             }
                             val jsonArrayAsString = jsonArray.toString()
                            methodChannel.invokeMethod("notifyEvents", jsonArrayAsString)
                            isPosting = false
                            })
                            }
                            else
                            {
                                  synchronized(lockEvent)
                                  {
                                    eventQueue.add(EventCustom(eventName,arguments,true));
                                  }
                            }
                        
                        }
                    },

                    onNotifyException = { _, _ ->
                        return@create GemError.NotSupported.toLong()
                    }
                )

                SdkCall.execute {
                    val args = DataBuffer((call.arguments as String).toByteArray())

                    val ret = FlutterChannel.parseMethod(call.method, args, flutterMethodListener)
                    if (ret != GemError.NoError) {
                        if (ret == GemError.NotSupported) {
                            result.notImplemented()
                        } else {
                            result.error(ret.toString(), GemError.getMessage(ret), null)
                        }
                    }
                }
            } 
        }
    }
}
