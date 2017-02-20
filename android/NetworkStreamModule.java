package com.nat.weex;

import com.nat.network_stream.HLModuleResultListener;
import com.nat.network_stream.HLStreamModule;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

/**
 * Created by Daniel on 17/2/17.
 * Copyright (c) 2017 Nat. All rights reserved.
 */

public class NetworkStreamModule extends WXModule {

    @JSMethod
    public void fetch(String str, final JSCallback jsCallback){
        HLStreamModule.getInstance(mWXSDKInstance.getContext()).fetch(str, new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }
}
